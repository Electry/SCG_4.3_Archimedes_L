.class public Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;,
        Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_DOWN_STATE:I = 0x1

.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final PULL_UP_STATE:I = 0x0

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshView"


# instance fields
.field private final MOVE_PX:I

.field private mAdapterView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mFooterImageView:Landroid/widget/ImageView;

.field private mFooterProgressBar:Landroid/widget/ProgressBar;

.field private mFooterState:I

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterUpdateTextView:Landroid/widget/TextView;

.field private mFooterView:Landroid/view/View;

.field private mFooterViewHeight:I

.field private mHeaderImageView:Landroid/widget/ImageView;

.field private mHeaderLastUpdateTimeLable:Ljava/lang/String;

.field private mHeaderProgressBar:Landroid/widget/ProgressBar;

.field private mHeaderPullLabel:Ljava/lang/String;

.field private mHeaderRefreshLabel:Ljava/lang/String;

.field private mHeaderReleaseLabel:Ljava/lang/String;

.field private mHeaderState:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUpdateTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnFooterRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;

.field private mOnHeaderRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;

.field private mPullLoadEnabled:Z

.field private mPullRefreshEnabled:Z

.field private mPullState:I

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->MOVE_PX:I

    .line 161
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    .line 166
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    .line 192
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->init()V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/16 v0, 0xa

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->MOVE_PX:I

    .line 161
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    .line 166
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    .line 187
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->init()V

    .line 188
    return-void
.end method

.method private addFooterView()V
    .locals 4

    .prologue
    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f100511

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f10050e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f10050f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterUpdateTextView:Landroid/widget/TextView;

    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    const v2, 0x7f100510

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    .line 256
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    return-void
.end method

.method private addHeaderView()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400c4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f100515

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    .line 230
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f100512

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f100513

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f100514

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->measureView(Landroid/view/View;)V

    .line 236
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    .line 237
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    return-void
.end method

.method private changingHeaderViewTopMargin(I)I
    .locals 5
    .param p1, "deltaY"    # I

    .prologue
    .line 480
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 481
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    int-to-float v3, p1

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 484
    .local v0, "newTopMargin":F
    if-lez p1, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    if-gt v2, v3, :cond_0

    .line 486
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 496
    :goto_0
    return v2

    .line 489
    :cond_0
    if-gez p1, :cond_1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    if-lt v2, v3, :cond_1

    .line 491
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 493
    :cond_1
    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 494
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->invalidate()V

    .line 496
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private footerPrepareToRefresh(I)V
    .locals 5
    .param p1, "deltaY"    # I

    .prologue
    const/4 v4, 0x3

    .line 455
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    .line 458
    .local v0, "newTopMargin":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    if-eq v1, v4, :cond_1

    .line 460
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0414

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 461
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterUpdateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 463
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 464
    iput v4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 466
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0415

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 469
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    goto :goto_0
.end method

.method private formatDate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 804
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHeaderTopMargin()I
    .locals 2

    .prologue
    .line 627
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 628
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return v1
.end method

.method private headerPrepareToRefresh(I)V
    .locals 4
    .param p1, "deltaY"    # I

    .prologue
    const/4 v3, 0x3

    .line 431
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->changingHeaderViewTopMargin(I)I

    move-result v0

    .line 433
    .local v0, "newTopMargin":I
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    if-eq v1, v3, :cond_1

    .line 434
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderReleaseLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 437
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 438
    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    if-gez v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 441
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderPullLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const-wide/16 v12, 0xfa

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 202
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 207
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setDefaultHeaderTexts()V

    .line 219
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->addHeaderView()V

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method private initContentAdapterView()V
    .locals 5

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getChildCount()I

    move-result v0

    .line 280
    .local v0, "count":I
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 281
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "this layout  at least must contain 3 child views,and AdapterView or ScrollView must contain!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_3

    .line 286
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 287
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 288
    check-cast v3, Landroid/widget/AdapterView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    .line 290
    :cond_1
    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 292
    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    .line 285
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_4

    .line 296
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "must contain a AdapterView or ScrollView in this layout!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_4
    return-void
.end method

.method private isFirstItemVisible()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 690
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v2

    .line 696
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v4, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 697
    .local v1, "mostTop":I
    :goto_1
    if-gez v1, :cond_0

    move v2, v3

    .line 701
    goto :goto_0

    .end local v1    # "mostTop":I
    :cond_2
    move v1, v3

    .line 696
    goto :goto_1
.end method

.method private isLastItemVisible()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 710
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 712
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v7

    .line 715
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 716
    .local v4, "lastItemPosition":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v6

    .line 723
    .local v6, "lastVisiblePosition":I
    add-int/lit8 v9, v4, -0x1

    if-lt v6, v9, :cond_2

    .line 724
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v2, v6, v9

    .line 725
    .local v2, "childIndex":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    .line 726
    .local v1, "childCount":I
    add-int/lit8 v9, v1, -0x1

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 727
    .local v3, "index":I
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v9, v3}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 728
    .local v5, "lastVisibleChild":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 729
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getBottom()I

    move-result v10

    if-le v9, v10, :cond_0

    move v7, v8

    goto :goto_0

    .end local v1    # "childCount":I
    .end local v2    # "childIndex":I
    .end local v3    # "index":I
    .end local v5    # "lastVisibleChild":Landroid/view/View;
    :cond_2
    move v7, v8

    .line 733
    goto :goto_0
.end method

.method private isPullLoadEnabled()Z
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPullRefreshEnabled()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyForPullDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 740
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 741
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isFirstItemVisible()Z

    move-result v0

    .line 745
    :cond_0
    :goto_0
    return v0

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReadyForPullUp()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 752
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mAdapterView:Landroid/widget/AdapterView;

    if-eqz v2, :cond_1

    .line 753
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isLastItemVisible()Z

    move-result v1

    .line 760
    :cond_0
    :goto_0
    return v1

    .line 754
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    .line 755
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 756
    .local v0, "scrollViewChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 757
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isRefreshViewScroll(I)Z
    .locals 4
    .param p1, "deltaY"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 422
    :goto_0
    return v0

    .line 410
    :cond_1
    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isReadyForPullDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    goto :goto_0

    .line 416
    :cond_2
    const/16 v2, -0xa

    if-gt p1, v2, :cond_3

    .line 417
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isReadyForPullUp()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 422
    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 304
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 305
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 309
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 310
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 313
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 317
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 318
    return-void

    .line 315
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private setHeaderTopMargin(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 540
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 541
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 542
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->invalidate()V

    .line 544
    return-void
.end method


# virtual methods
.method public footerRefreshing()V
    .locals 3

    .prologue
    .line 520
    const/4 v1, 0x4

    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    .line 521
    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    add-int v0, v1, v2

    .line 522
    .local v0, "top":I
    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 523
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 525
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v2, 0x7f0f0416

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 528
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnFooterRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnFooterRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;

    invoke-interface {v1, p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;->onFooterRefresh(Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;)V

    .line 531
    :cond_0
    return-void
.end method

.method public headerRefreshing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    .line 505
    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 508
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderRefreshLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;

    invoke-interface {v0, p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;->onHeaderRefresh(Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;)V

    .line 514
    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 800
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 2

    .prologue
    .line 792
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 269
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->addFooterView()V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setFooterLastUpdated(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->initContentAdapterView()V

    .line 273
    return-void
.end method

.method public onFooterRefreshComplete()V
    .locals 2

    .prologue
    .line 573
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterImageView:Landroid/widget/ImageView;

    const v1, 0x7f02058e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0415

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 579
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterState:I

    .line 580
    return-void
.end method

.method public onFooterRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setFooterLastUpdated(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->onFooterRefreshComplete()V

    .line 590
    return-void
.end method

.method public onHeaderRefreshComplete()V
    .locals 2

    .prologue
    .line 550
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    .line 551
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderImageView:Landroid/widget/ImageView;

    const v1, 0x7f02058d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderPullLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 556
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderState:I

    .line 557
    return-void
.end method

.method public onHeaderRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 566
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->onHeaderRefreshComplete()V

    .line 567
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isPullLoadEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isPullRefreshEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v2

    .line 325
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v1, v3

    .line 326
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 329
    :pswitch_1
    iput v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mLastMotionY:I

    goto :goto_0

    .line 333
    :pswitch_2
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v1, v3

    .line 334
    .local v0, "deltaY":I
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isRefreshViewScroll(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const/4 v2, 0x1

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 351
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isPullLoadEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->isPullRefreshEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const/4 v3, 0x0

    .line 396
    :goto_0
    return v3

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 355
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 396
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 361
    :pswitch_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mLastMotionY:I

    sub-int v0, v2, v3

    .line 362
    .local v0, "deltaY":I
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    if-ne v3, v4, :cond_3

    .line 364
    const-string v3, "PullToRefreshView"

    const-string v4, " pull down!parent view move!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->headerPrepareToRefresh(I)V

    .line 372
    :cond_2
    :goto_2
    iput v2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mLastMotionY:I

    goto :goto_1

    .line 367
    :cond_3
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_2

    .line 369
    const-string v3, "PullToRefreshView"

    const-string/jumbo v4, "pull up!parent view move!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->footerPrepareToRefresh(I)V

    goto :goto_2

    .line 376
    .end local v0    # "deltaY":I
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getHeaderTopMargin()I

    move-result v1

    .line 377
    .local v1, "topMargin":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    if-ne v3, v4, :cond_5

    .line 378
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    if-eqz v3, :cond_4

    if-ltz v1, :cond_4

    .line 380
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->headerRefreshing()V

    goto :goto_1

    .line 383
    :cond_4
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_1

    .line 385
    :cond_5
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullState:I

    if-nez v3, :cond_1

    .line 386
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterViewHeight:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_6

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    if-eqz v3, :cond_6

    .line 388
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->footerRefreshing()V

    goto :goto_1

    .line 391
    :cond_6
    iget v3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderViewHeight:I

    neg-int v3, v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTopMargin(I)V

    goto :goto_1

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeFooterView()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->removeView(Landroid/view/View;)V

    .line 810
    return-void
.end method

.method public setDefaultHeaderTexts()V
    .locals 5

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0411

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0412

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0413

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->setHeaderTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public setFooterLastUpdated(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 612
    if-eqz p1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0417

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mFooterUpdateTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setHeaderTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/String;
    .param p2, "releaseLabel"    # Ljava/lang/String;
    .param p3, "refreshLabel"    # Ljava/lang/String;
    .param p4, "lastUpdateTimeLable"    # Ljava/lang/String;

    .prologue
    .line 771
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderPullLabel:Ljava/lang/String;

    .line 772
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderReleaseLabel:Ljava/lang/String;

    .line 773
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderRefreshLabel:Ljava/lang/String;

    .line 774
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderLastUpdateTimeLable:Ljava/lang/String;

    .line 775
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 598
    if-eqz p1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderLastUpdateTimeLable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mHeaderUpdateTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnFooterRefreshListener(Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;)V
    .locals 0
    .param p1, "footerRefreshListener"    # Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnFooterRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnFooterRefreshListener;

    .line 642
    return-void
.end method

.method public setOnHeaderRefreshListener(Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;)V
    .locals 0
    .param p1, "headerRefreshListener"    # Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mOnHeaderRefreshListener:Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView$OnHeaderRefreshListener;

    .line 638
    return-void
.end method

.method public setPullLoadEnabled(Z)V
    .locals 0
    .param p1, "pullLoadEnabled"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullLoadEnabled:Z

    .line 673
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0
    .param p1, "pullRefreshEnabled"    # Z

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/pulltorefresh/PullToRefreshView;->mPullRefreshEnabled:Z

    .line 665
    return-void
.end method
