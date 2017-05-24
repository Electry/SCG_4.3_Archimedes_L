.class public Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;
.super Landroid/widget/ListView;
.source "DragBelowUpdateListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;
    }
.end annotation


# static fields
.field private static final FINGER_LEN_MIN_DOWNWARDS:I = 0x1

.field private static final FINGER_LEN_MIN_UPWARDS:I = -0x1

.field private static final FLAG_ROTATION_SPEED:I = 0xa

.field private static final FLAG_SCALE_BIG_DURATION:I = 0x258

.field private static final FLAG_SCALE_TO_BIG:F = 1.675f

.field private static final FLAG_SCALE_TO_SMALL:F = 0.597f

.field private static final FLAG_TRANSLATION_BACK_DURATION:I = 0x320

.field private static final FLAG_TRANSLATION_DURATION:I = 0x1d6

.field private static final FLAG_TRANSLATION_DURATION2:I = 0x1e0

.field private static final RATIO:I = 0x3

.field private static final SCROLL_DURATION:I = 0x6e

.field private static final STATE_DONE:I = 0x4

.field private static final STATE_DOWNWARDS:I = 0x1

.field private static final STATE_STOP:I = 0x0

.field private static final STATE_UPWARDS:I = 0x2

.field private static final STATE_UPWRADS_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "panhui4_DragBelowUpdateListView"

.field private static final UPDATE_STATE_PULL_To_REFRESH:I = 0x1

.field private static final UPDATE_STATE_REFRESHING:I = 0x2

.field private static final UPDATE_STATE_RELEASE_To_REFRESH:I = 0x0

.field private static final a_max:F = 0.0050000004f

.field private static final a_min:F = 0.001f


# instance fields
.field private a:F

.field private current_degree:F

.field private firstItemIndex:I

.field private isRecored:Z

.field private isRefreshable:Z

.field private lastMoveTime:D

.field private mAction:I

.field private mBaseAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentY:I

.field private mFlag:Z

.field private mFlag2:Z

.field private mFlagAnimationIsStarted:Z

.field private mFlagAnimationIsStarted2:Z

.field private mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

.field private mFlagIsLow:Z

.field private mFlagSmallImageView:Landroid/widget/ImageView;

.field private mFlagTranslationDragMaxLen:I

.field private mFlagTranslationLen:I

.field private mImageView:Landroid/widget/ImageView;

.field private mLeft:I

.field private mLoadMoreCount:I

.field private mLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

.field private mMaxLen:I

.field private mPreviousEventTime:J

.field private mScrollDuration:I

.field private mScrollState:I

.field private mScrollStateChangedListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mSpeed:D

.field private mStartY:I

.field private mTop:I

.field private mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

.field private mUpdateMaxLen:I

.field private mVisibleCount:I

.field private mVisibleLastIndex:I

.field private mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

.field private refreshListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;

.field private state:I

.field private target_x:F

.field private target_y:F

.field private update_state:I

.field private vRecord:Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleCount:I

    .line 133
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->lastMoveTime:D

    .line 143
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->a:F

    .line 156
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleLastIndex:I

    .line 157
    iput v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreCount:I

    .line 158
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .line 160
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mPreviousEventTime:J

    .line 162
    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mSpeed:D

    .line 163
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->init(Landroid/content/Context;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->rotateAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    return v0
.end method

.method private calcuteSpeed()V
    .locals 8

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 251
    .local v0, "currTime":J
    iget-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mPreviousEventTime:J

    sub-long v2, v0, v4

    .line 252
    .local v2, "timeToScrollOneElement":J
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    long-to-double v6, v2

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mSpeed:D

    .line 253
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mPreviousEventTime:J

    .line 255
    const-string/jumbo v4, "speed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "speed now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mSpeed:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x0

    .line 200
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 202
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    .line 203
    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRefreshable:Z

    .line 207
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    .line 208
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    .line 210
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    .line 212
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    .line 215
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollDuration:I

    .line 217
    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 219
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    .line 220
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag2:Z

    .line 222
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 223
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 224
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    .line 226
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagTranslationLen:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mUpdateMaxLen:I

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagTranslationDragMaxLen:I

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mMaxLen:I

    .line 235
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->vRecord:Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;

    .line 238
    return-void
.end method

.method private moveToLow(J)V
    .locals 11
    .param p1, "time"    # J

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f18d4fe    # 0.597f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 801
    const-string/jumbo v3, "panhui4"

    const-string/jumbo v4, "moveToLow"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    .line 804
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 808
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 810
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagTranslationLen:I

    int-to-float v3, v3

    invoke-direct {v10, v7, v7, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 812
    .local v10, "ta":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v10, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 813
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 815
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 819
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 820
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 822
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 845
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v1, v9}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 846
    return-void
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->refreshListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    .line 1019
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->refreshListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;->onRefresh()V

    .line 1022
    :cond_0
    return-void
.end method

.method private rotateAnimation()V
    .locals 4

    .prologue
    .line 947
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    .line 949
    .local v0, "isNetworkAvaliable":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    const v3, 0x7f050046

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 951
    .local v1, "rotateAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 987
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 988
    return-void
.end method


# virtual methods
.method public canNofity()Z
    .locals 3

    .prologue
    .line 897
    const/4 v0, 0x1

    .line 898
    .local v0, "bCan":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    const/4 v0, 0x0

    .line 902
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 903
    const/4 v0, 0x0

    .line 909
    :cond_1
    return v0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 759
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    if-nez v3, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    if-gtz v3, :cond_0

    .line 767
    const-string/jumbo v3, "panhui4_DragBelowUpdateListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 771
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 772
    .local v1, "x":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 773
    .local v2, "y":I
    const-string/jumbo v3, "panhui4_DragBelowUpdateListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll, x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_1
    const-string/jumbo v3, "panhui4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll, update_state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    if-nez v3, :cond_2

    .line 787
    const-string/jumbo v3, "panhui4_DragBelowUpdateListView"

    const-string v4, "computeScroll, mImageView.getTop() = 0!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->clearAnimation()V

    .line 789
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->invalidate()V

    goto/16 :goto_0

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "computeScroll layout error:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getFirstVisibleItem()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollState:I

    return v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mSpeed:D

    return-wide v0
.end method

.method public getVisibleCount()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleCount:I

    return v0
.end method

.method public moveToHigh()V
    .locals 12

    .prologue
    const v2, 0x3fd66666    # 1.675f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 849
    const-string/jumbo v3, "panhui4"

    const-string/jumbo v4, "moveToHigh"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    .line 852
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 854
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 856
    .local v9, "animationset":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    const v4, 0x7f050047

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 857
    .local v10, "ra":Landroid/view/animation/Animation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 859
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagTranslationLen:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v11, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 861
    .local v11, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x320

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 862
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 864
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    move v3, v1

    move v4, v2

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 867
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 868
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 870
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 891
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 892
    return-void
.end method

.method public onRefreshComplete()V
    .locals 3

    .prologue
    .line 1005
    const-string/jumbo v0, "panhui4"

    const-string v1, "DragBelowUpdateListView, onRefreshComplete!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 1009
    const-string/jumbo v0, "panhui4"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefreshComplete, mFlagIsLow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    .line 1013
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 261
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    if-eq v3, p2, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->calcuteSpeed()V

    .line 266
    :cond_0
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    .line 267
    iput p3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleCount:I

    .line 269
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleLastIndex:I

    .line 270
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 271
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_2

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 274
    .local v1, "itemsLastIndex":I
    move v2, v1

    .line 276
    .local v2, "lastIndex":I
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleLastIndex:I

    if-eq v3, v2, :cond_1

    .line 277
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreCount:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v5, 0x0

    .line 285
    iput p2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollState:I

    .line 287
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollStateChangedListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;

    if-eqz v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollStateChangedListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;

    invoke-interface {v3, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;->onScrollStateChanged(I)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 291
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_2

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 293
    .local v1, "itemsLastIndex":I
    move v2, v1

    .line 294
    .local v2, "lastIndex":I
    if-nez p2, :cond_1

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mVisibleLastIndex:I

    if-ne v3, v2, :cond_1

    .line 297
    const-string v3, "loading more 1..."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreCount:I

    .line 301
    iput v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreCount:I

    .line 302
    const-string v3, "loading more ..."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;->onLoadMore()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    if-eqz v2, :cond_0

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;->onTouch()V

    .line 332
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    .line 334
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRefreshable:Z

    if-nez v2, :cond_1

    .line 335
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "isRefreshable = false, return super.onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 754
    :goto_0
    return v2

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    if-nez v2, :cond_3

    .line 340
    :cond_2
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTouchTool="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mImageView="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mScroller="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", return super.onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 345
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 346
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "mScroller is not finish!! return super.onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 350
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    if-eqz v2, :cond_5

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    .line 352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 353
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    .line 354
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "firstItemIndex != 0, clean all states, return super.onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 358
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v9, v2

    .line 359
    .local v9, "currentY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v8, v2

    .line 361
    .local v8, "currentX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 752
    :cond_6
    :goto_1
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last, currentY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mCurrentY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", return true!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 363
    :pswitch_0
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_DOWN----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    .line 368
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    if-nez v2, :cond_7

    .line 371
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    .line 372
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    .line 373
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 377
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->getOX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->getOY()F

    move-result v5

    int-to-float v6, v8

    int-to-float v7, v9

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->detaDegree(FFFF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->current_degree:F

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->vRecord:Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->reset()V

    .line 382
    const v2, 0x3ba3d70b    # 0.0050000004f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->a:F

    goto/16 :goto_1

    .line 388
    :pswitch_1
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_UP-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 396
    .local v4, "imageTop":I
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_UP, listTop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", imageTop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTop:I

    if-lez v2, :cond_8

    if-lez v4, :cond_8

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLeft:I

    rsub-int/lit8 v5, v5, 0x0

    rsub-int/lit8 v6, v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollDuration:I

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->invalidate()V

    .line 408
    :cond_8
    if-lez v4, :cond_b

    .line 409
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    if-nez v2, :cond_9

    .line 410
    const-string/jumbo v2, "panhui4"

    const-string v3, "MotionEvent.ACTION_UP, update_state = RELEASE_To_REFRESH, set update_state to REFRESHING!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->onRefresh()V

    .line 415
    const-string/jumbo v2, "panhui4"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_UP, mFlagIsLow="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mFlagAnimationIsStarted="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    if-nez v2, :cond_9

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->clearAnimation()V

    .line 419
    const-wide/16 v2, 0x1e0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToLow(J)V

    .line 423
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 424
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_UP, update_state = PULL_To_REFRESH, set update_state to DONE!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 427
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-nez v2, :cond_a

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    const v3, 0x7f050047

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v16

    .line 430
    .local v16, "ra":Landroid/view/animation/Animation;
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    .end local v16    # "ra":Landroid/view/animation/Animation;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    if-nez v2, :cond_b

    .line 451
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    .line 458
    :cond_b
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_UP, mFlag="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", imageTop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    if-nez v2, :cond_c

    if-lez v4, :cond_d

    .line 473
    :cond_c
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_UP, clean all states!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    .line 476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag2:Z

    .line 477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 481
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    goto/16 :goto_1

    .line 462
    :cond_d
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_UP, return super.onTouchEvent, clean all states!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    .line 464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag2:Z

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 466
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    .line 467
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 468
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 469
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    .line 470
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 486
    .end local v4    # "imageTop":I
    :pswitch_2
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE-----------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    int-to-float v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->target_x:F

    .line 489
    int-to-float v2, v9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->target_y:F

    .line 491
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mAction:I

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->firstItemIndex:I

    if-nez v2, :cond_e

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    .line 495
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    .line 496
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 497
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRecored set true--------------------,mStartY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    sub-int v15, v9, v2

    .line 503
    .local v15, "offset":I
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_MOVE, offset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",currentY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mCurrentY="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, 0x1

    if-le v15, v2, :cond_17

    .line 508
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "Downwards"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    .line 522
    :goto_2
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mCurrentY:I

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 526
    .restart local v4    # "imageTop":I
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_MOVE, isRecored="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update_state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    if-eqz v2, :cond_15

    if-lez v4, :cond_15

    .line 531
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 532
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, update_state = DONE!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    if-lez v2, :cond_f

    .line 534
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, update_state = done, pull to refresh!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 539
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 540
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, udpate_state = PULL_To_REFRESH!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    div-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mUpdateMaxLen:I

    if-lt v2, v3, :cond_19

    .line 542
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, update_state = pull to refresh, release to refresh!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 549
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    if-nez v2, :cond_11

    .line 550
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, update_state = RELEASE_To_REFRESH!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    div-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mUpdateMaxLen:I

    if-ge v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    if-lez v2, :cond_1a

    .line 553
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "MotionEvent.ACTION_MOVE, udpate_state = release to refresh, pull to refresh!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    .line 561
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    .line 562
    const-string/jumbo v2, "panhui4"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_MOVE, mFlagIsLow="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mFlagAnimationIsStarted="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",mFlagAnimationIsStarted2="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",update_state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_12

    .line 569
    const-string/jumbo v2, "panhui4"

    const-string/jumbo v3, "set big flag visible!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 573
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    if-nez v2, :cond_13

    .line 576
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-nez v2, :cond_13

    .line 577
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 578
    const-wide/16 v2, 0x1d6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToLow(J)V

    .line 593
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_14

    if-nez v4, :cond_15

    .line 594
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 601
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    if-nez v2, :cond_1c

    .line 602
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state = 0, do nothing return, mFlag="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", imageTop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    if-nez v2, :cond_16

    if-lez v4, :cond_1b

    .line 604
    :cond_16
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 0, 1111111, return true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 512
    .end local v4    # "imageTop":I
    :cond_17
    const/4 v2, -0x1

    if-ge v15, v2, :cond_18

    .line 513
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "Upwards"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    goto/16 :goto_2

    .line 518
    :cond_18
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "Your finger is stop at a point."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    goto/16 :goto_2

    .line 544
    .restart local v4    # "imageTop":I
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    if-gtz v2, :cond_10

    .line 545
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    goto/16 :goto_3

    .line 555
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    if-gtz v2, :cond_11

    .line 556
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->update_state:I

    goto/16 :goto_4

    .line 607
    :cond_1b
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 0, 2222222, return super.onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 612
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mMaxLen:I

    if-le v2, v3, :cond_1d

    .line 613
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "is max len, return true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 618
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRecored:Z

    if-eqz v2, :cond_6

    .line 620
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    if-ge v9, v2, :cond_1e

    .line 621
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "currentY < mStartY, set mStartY angin!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    move-object/from16 v0, p0

    iput v9, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    .line 625
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v3, v9, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->getScrollYImage(F)I

    move-result v10

    .line 626
    .local v10, "dImage":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mStartY:I

    sub-int v3, v9, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->getScrollYList(F)I

    move-result v11

    .line 629
    .local v11, "dList":I
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_MOVE, distanceImage="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",distanceList="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->computeVerticalScrollOffset()I

    move-result v17

    .line 634
    .local v17, "scrolloffset":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-nez v2, :cond_21

    .line 635
    const-string/jumbo v2, "panhui2"

    const-string v3, "flag start!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->getOX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->getOY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->target_x:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->target_y:F

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->detaDegree(FFFF)F

    move-result v12

    .line 640
    .local v12, "degree":F
    const-string/jumbo v2, "panhui2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "degree="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->current_degree:F

    sub-float v13, v12, v2

    .line 643
    .local v13, "dete":F
    const-string/jumbo v2, "panhui2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dete1111111="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 646
    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v13, v2

    .line 653
    :cond_1f
    :goto_5
    const/high16 v2, -0x3c790000    # -270.0f

    cmpg-float v2, v13, v2

    if-gez v2, :cond_26

    .line 654
    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v13, v2

    .line 660
    :cond_20
    :goto_6
    const-string/jumbo v2, "panhui2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dete2222222="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->lastMoveTime:D

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->vRecord:Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;

    float-to-double v6, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->lastMoveTime:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/SpeedRecord;->add(DD)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v2, v13}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->addDegree(F)V

    .line 664
    move-object/from16 v0, p0

    iput v12, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->current_degree:F

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->postInvalidate()V

    .line 671
    .end local v12    # "degree":F
    .end local v13    # "dete":F
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getTop()I

    move-result v2

    if-ltz v2, :cond_27

    if-nez v17, :cond_27

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag2:Z

    if-nez v2, :cond_27

    .line 673
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 1 && scrolloffset == 0, down!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "layout image and list-----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v2, v3, v10, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 678
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeight()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_22
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_23

    .line 696
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 2, up!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-lez v4, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getTop()I

    move-result v2

    if-lez v2, :cond_28

    .line 700
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "image is not arrived!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "layout image and list-----------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    add-int/2addr v6, v10

    invoke-virtual {v2, v3, v10, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 705
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->getHeight()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v3, v5}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    .line 725
    :cond_23
    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_24

    .line 726
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 3, do nothing!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_24

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setVisibility(I)V

    .line 733
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    if-nez v2, :cond_24

    .line 735
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->moveToHigh()V

    .line 742
    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    if-nez v4, :cond_6

    .line 743
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string/jumbo v3, "state = 2 && imageTop = 0, return super.onTouchEvent!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 648
    .restart local v12    # "degree":F
    .restart local v13    # "dete":F
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    .line 649
    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v13, v2

    goto/16 :goto_5

    .line 657
    :cond_26
    const/high16 v2, 0x43870000    # 270.0f

    cmpl-float v2, v13, v2

    if-lez v2, :cond_20

    .line 658
    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v13, v2

    goto/16 :goto_6

    .line 679
    .end local v12    # "degree":F
    .end local v13    # "dete":F
    :catch_0
    move-exception v14

    .line 680
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "onTouch Error: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 684
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_22

    .line 686
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", scrolloffset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag2:Z

    .line 690
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 706
    :catch_1
    move-exception v14

    .line 707
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "onTouch layout error:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 715
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_28
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "image is arrived!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlag:Z

    if-eqz v2, :cond_23

    .line 718
    const-string/jumbo v2, "panhui4_DragBelowUpdateListView"

    const-string v3, "flag = true, set state = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->state:I

    goto/16 :goto_9

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public rotateFlagWithNothing()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 931
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 943
    :goto_0
    return-void

    .line 935
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagIsLow:Z

    .line 936
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted:Z

    .line 937
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagAnimationIsStarted2:Z

    .line 939
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mContext:Landroid/content/Context;

    const v2, 0x7f050046

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 942
    .local v0, "rotateAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 1054
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1055
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mBaseAdapter:Landroid/widget/BaseAdapter;

    .line 1056
    return-void
.end method

.method public setFlagBigImageView(Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;)V
    .locals 2
    .param p1, "flagimageview"    # Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagBigImageView:Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;

    const v1, 0x7f0209c9

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setRotatDrawableResource(I)V

    .line 922
    return-void
.end method

.method public setFlagSmallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "flagimageview"    # Landroid/widget/ImageView;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mFlagSmallImageView:Landroid/widget/ImageView;

    .line 927
    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageview"    # Landroid/widget/ImageView;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mImageView:Landroid/widget/ImageView;

    .line 916
    return-void
.end method

.method public setIsRefresh(Z)V
    .locals 0
    .param p1, "refresh"    # Z

    .prologue
    .line 996
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->isRefreshable:Z

    .line 997
    return-void
.end method

.method public setLoadMoreListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mLoadMoreListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnLoadMoreListener;

    .line 182
    return-void
.end method

.method public setOffsets(FF)V
    .locals 1
    .param p1, "offsetImage"    # F
    .param p2, "offsetList"    # F

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->setImageOffset(F)V

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mTouchTool:Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/TouchTool;->setListOffset(F)V

    .line 243
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollStateChangedListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$onScrollStateChangedListener;

    .line 189
    return-void
.end method

.method public setScrollDuration(I)V
    .locals 0
    .param p1, "scrollduration"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mScrollDuration:I

    .line 247
    return-void
.end method

.method public setWbOnTouchListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .line 196
    return-void
.end method

.method public setonRefreshListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView;->refreshListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnRefreshListener;

    .line 993
    return-void
.end method
