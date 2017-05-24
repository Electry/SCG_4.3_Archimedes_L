.class public Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "weibo"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private firstItemIndex:I

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private mCanListRefresh:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field public refreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->mCanListRefresh:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->mCanListRefresh:Z

    .line 78
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 6

    .prologue
    const v5, 0x7f0f01a0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 246
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    packed-switch v1, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 254
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    const v2, 0x7f0f01a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 265
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isBack:Z

    if-eqz v1, :cond_0

    .line 268
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isBack:Z

    .line 269
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 270
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 282
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 284
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    const v2, 0x7f0f01a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 293
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 296
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 297
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    const v2, 0x7f020072

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v7, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->inflater:Landroid/view/LayoutInflater;

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401ba

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f100a98

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f100a99

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->progressBar:Landroid/widget/ProgressBar;

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f100a9a

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->tipsTextview:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f100a9b

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->measureView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentWidth:I

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v7, v5, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->addHeaderView(Landroid/view/View;)V

    .line 113
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 115
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 120
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 124
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 331
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 332
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 334
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 335
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 337
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 338
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 342
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 343
    return-void

    .line 340
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->refreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->refreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;->onRefresh()V

    .line 326
    :cond_0
    return-void
.end method


# virtual methods
.method public onRefreshComplete()V
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f01a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 320
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "firstVisiableItem"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 127
    iput p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->firstItemIndex:I

    .line 128
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->mCanListRefresh:Z

    if-nez v1, :cond_0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 240
    :goto_0
    return v1

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 240
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 139
    :pswitch_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->firstItemIndex:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    .line 141
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    goto :goto_1

    .line 147
    :pswitch_1
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-eq v1, v2, :cond_4

    .line 148
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-ne v1, v5, :cond_2

    .line 151
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-ne v1, v3, :cond_3

    .line 152
    iput v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 153
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 157
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-nez v1, :cond_4

    .line 158
    iput v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 159
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 160
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->onRefresh()V

    .line 165
    :cond_4
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    .line 166
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isBack:Z

    goto :goto_1

    .line 171
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 172
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->firstItemIndex:I

    if-nez v1, :cond_5

    .line 174
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    .line 175
    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    .line 177
    :cond_5
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isRecored:Z

    if-eqz v1, :cond_1

    .line 179
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-nez v1, :cond_6

    .line 181
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    if-ge v1, v2, :cond_a

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_a

    .line 182
    iput v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 183
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 200
    :cond_6
    :goto_2
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-ne v1, v3, :cond_7

    .line 202
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    if-lt v1, v2, :cond_b

    .line 203
    iput v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 204
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->isBack:Z

    .line 205
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 219
    :cond_7
    :goto_3
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-ne v1, v5, :cond_8

    .line 220
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 221
    iput v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 222
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    .line 227
    :cond_8
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-ne v1, v3, :cond_9

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 233
    :cond_9
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headContentHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_1

    .line 188
    :cond_a
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6

    .line 189
    iput v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 190
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    goto :goto_2

    .line 210
    :cond_b
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_7

    .line 211
    iput v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->state:I

    .line 212
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->changeHeaderViewByState()V

    goto :goto_3

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setListRefreshAble(Z)V
    .locals 0
    .param p1, "mCanListRefresh"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->mCanListRefresh:Z

    .line 88
    return-void
.end method

.method public setonRefreshListener(Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView;->refreshListener:Lcom/lenovo/scg/gallery3d/sharecenter/RefreshableListView$OnRefreshListener;

    .line 309
    return-void
.end method
