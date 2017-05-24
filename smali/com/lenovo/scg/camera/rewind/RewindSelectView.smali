.class public Lcom/lenovo/scg/camera/rewind/RewindSelectView;
.super Ljava/lang/Object;
.source "RewindSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;,
        Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;
    }
.end annotation


# static fields
.field private static final SEGMENT_DURIATION:I = 0x21

.field public static final TAG:Ljava/lang/String; = "REwindSelectView"

.field private static final TOUCH_MOVE_THRESHOLD:I = 0xa


# instance fields
.field private mAnimRoot:Landroid/widget/FrameLayout;

.field private mBackground:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDefaultIndex:I

.field private mDownPoint:Landroid/graphics/Point;

.field private mFocusView:Landroid/view/View;

.field private mIsInAnim:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnViewClickListener:Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

.field private mOrientation:I

.field private mParentView:Landroid/view/ViewGroup;

.field private mScroll:Landroid/widget/HorizontalScrollView;

.field private mScrollBg:Landroid/widget/RelativeLayout;

.field private mScrollViewsRoot:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "orientation"    # I

    .prologue
    const v6, 0x7f10083e

    const/4 v5, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z

    .line 68
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;

    .line 91
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    .line 93
    iput p3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOrientation:I

    .line 95
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 97
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 101
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040164

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v3, p3, v5}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 103
    const v3, 0x7f100841

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScroll:Landroid/widget/HorizontalScrollView;

    .line 105
    const v3, 0x7f1003d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    .line 106
    const v3, 0x7f100840

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollBg:Landroid/widget/RelativeLayout;

    .line 107
    const v3, 0x7f100842

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    .line 108
    const v3, 0x7f10083f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mBackground:Landroid/widget/ImageView;

    .line 110
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOnViewClickListener:Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->startAnimP2()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->endAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method private endAnim()V
    .locals 4

    .prologue
    .line 411
    const-string v0, "REwindSelectView"

    const-string v1, "endAnim()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->showAllScrollViews()V

    .line 413
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScroll:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$4;-><init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 425
    return-void
.end method

.method private getItemPostionX(II)F
    .locals 5
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 289
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 290
    .local v2, "w":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 291
    .local v1, "m":F
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 293
    .local v0, "dx":F
    int-to-float v3, p1

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_1

    .line 294
    int-to-float v3, p1

    mul-float/2addr v3, v2

    add-float v0, v1, v3

    .line 300
    .end local v0    # "dx":F
    :cond_0
    :goto_0
    return v0

    .line 296
    .restart local v0    # "dx":F
    :cond_1
    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    sub-int v4, p2, p1

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    sub-float v0, v3, v4

    goto :goto_0
.end method

.method private getItemPostionY(II)F
    .locals 3
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 305
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 306
    .local v0, "w":F
    invoke-direct {p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getScreenHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method

.method private getItemScrollTo(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "count"    # I

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionX(II)F

    move-result v2

    .line 311
    .local v2, "x":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 312
    .local v1, "w":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 314
    .local v0, "m":F
    const/4 v3, 0x0

    int-to-float v4, p1

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    sub-float/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    return v3
.end method

.method private getScreenHeight()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 456
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .line 458
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    goto :goto_0
.end method

.method private getScreenWidth()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 448
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 450
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    goto :goto_0
.end method

.method private initAnim(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;>;"
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 197
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;

    .line 204
    .local v1, "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    iget-boolean v4, v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->bDefault:Z

    if-eqz v4, :cond_2

    .line 205
    iput v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    .line 210
    .end local v1    # "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionX(II)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 212
    iget v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionY(II)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 214
    iget v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;

    iget v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initItem(Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;IZ)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, "v1":Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;

    iget v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initItem(Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;IZ)Landroid/view/View;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 201
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "v1":Landroid/view/View;
    .restart local v1    # "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initItem(Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;IZ)Landroid/view/View;
    .locals 7
    .param p1, "item"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    .param p2, "index"    # I
    .param p3, "bForAnim"    # Z

    .prologue
    .line 114
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 115
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040165

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100844

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 118
    .local v2, "itemLayout":Landroid/widget/RelativeLayout;
    if-nez p3, :cond_1

    .line 119
    iget-boolean v5, p1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->bDefault:Z

    if-eqz v5, :cond_0

    .line 120
    const v5, 0x7f100846

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0202ab

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iput-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;

    .line 136
    :cond_0
    new-instance v5, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;

    invoke-direct {v5, p0, p2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;-><init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;I)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    :cond_1
    const v5, 0x7f100845

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/common/ui/RoundCornerImageView;

    .line 179
    .local v0, "imageView":Lcom/lenovo/scg/common/ui/RoundCornerImageView;
    iget-object v5, p1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/ui/RoundCornerImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v5, p1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->text:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 182
    const v5, 0x7f100847

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, p1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_2
    return-object v4
.end method

.method private initScroll(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;>;"
    if-nez p1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 230
    move v1, v0

    .line 231
    .local v1, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;

    .line 238
    .local v2, "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    const/4 v5, 0x0

    invoke-direct {p0, v2, v1, v5}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initItem(Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;IZ)Landroid/view/View;

    move-result-object v4

    .line 239
    .local v4, "v":Landroid/view/View;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v1    # "index":I
    .end local v2    # "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    iget v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemScrollTo(II)I

    move-result v3

    .line 254
    .local v3, "l":I
    iget-object v5, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScroll:Landroid/widget/HorizontalScrollView;

    new-instance v6, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;

    invoke-direct {v6, p0, v3}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$2;-><init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;I)V

    const-wide/16 v8, 0x21

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showAllScrollViews()V
    .locals 4

    .prologue
    .line 428
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 430
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 431
    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-void
.end method

.method private startAnimP1(FFF)V
    .locals 18
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "width"    # F

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 319
    .local v17, "w":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float v3, v3, v17

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    .line 320
    .local v14, "m":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionX(II)F

    move-result v3

    add-float v11, v3, v14

    .line 321
    .local v11, "dx":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionY(II)F

    move-result v3

    add-float v12, v3, v14

    .line 323
    .local v12, "dy":F
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    div-float v3, p3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v5, p3, v17

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 324
    .local v2, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    sub-float v3, p1, v11

    const/4 v4, 0x0

    sub-float v5, p2, v12

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 326
    .local v16, "transAnim":Landroid/view/animation/TranslateAnimation;
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 327
    .local v15, "phase1Anim":Landroid/view/animation/AnimationSet;
    const-wide/16 v4, 0x63

    invoke-virtual {v15, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 328
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 329
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 330
    invoke-virtual/range {v15 .. v16}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    .line 333
    .local v10, "c":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mAnimRoot:Landroid/widget/FrameLayout;

    add-int/lit8 v4, v10, -0x2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 337
    .local v13, "frame":Landroid/view/View;
    const v3, 0x7f100846

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    const v3, 0x7f100845

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {v13}, Landroid/view/View;->clearAnimation()V

    .line 340
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 342
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 343
    .local v9, "animation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x63

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 344
    invoke-virtual {v13, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    return-void
.end method

.method private startAnimP2()V
    .locals 20

    .prologue
    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    .line 349
    .local v11, "c":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 351
    .local v18, "w":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getItemPostionX(II)F

    move-result v19

    .line 352
    .local v19, "x":F
    move/from16 v0, v18

    int-to-float v3, v0

    div-float v3, v19, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 353
    .local v13, "leftSize":I
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v3, v19

    move/from16 v0, v18

    int-to-float v4, v0

    sub-float/2addr v3, v4

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/lit8 v4, v11, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 354
    .local v15, "rightSize":I
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 356
    .local v16, "size":I
    const-string v3, "REwindSelectView"

    const-string/jumbo v4, "startAnimP2()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 359
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 360
    .local v2, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v9, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 362
    .local v9, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 363
    .local v14, "phase2Anim":Landroid/view/animation/AnimationSet;
    mul-int/lit8 v3, v12, 0x21

    add-int/lit8 v3, v3, 0x63

    int-to-long v4, v3

    invoke-virtual {v14, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 364
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 365
    invoke-virtual {v14, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 366
    invoke-virtual {v14, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 368
    add-int/lit8 v3, v16, -0x1

    if-ne v12, v3, :cond_0

    .line 369
    new-instance v3, Lcom/lenovo/scg/camera/rewind/RewindSelectView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$3;-><init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)V

    invoke-virtual {v14, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    add-int/lit8 v4, v12, 0x1

    sub-int/2addr v3, v4

    if-ltz v3, :cond_1

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    add-int/lit8 v5, v12, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 388
    .local v17, "v":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    .end local v17    # "v":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    add-int/lit8 v4, v12, 0x1

    add-int/2addr v3, v4

    if-ge v3, v11, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollViewsRoot:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDefaultIndex:I

    add-int/lit8 v5, v12, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 393
    .restart local v17    # "v":Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    .end local v17    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v16, -0x1

    if-ne v12, v3, :cond_3

    .line 398
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 399
    .local v10, "alphaAnim1":Landroid/view/animation/AlphaAnimation;
    mul-int/lit8 v3, v12, 0x21

    add-int/lit8 v3, v3, 0x63

    int-to-long v4, v3

    invoke-virtual {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollBg:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mScrollBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mBackground:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    .end local v10    # "alphaAnim1":Landroid/view/animation/AlphaAnimation;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 408
    .end local v2    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alphaAnim":Landroid/view/animation/AlphaAnimation;
    .end local v14    # "phase2Anim":Landroid/view/animation/AnimationSet;
    :cond_4
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    const v2, 0x7f10083e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 440
    :cond_0
    return-void
.end method

.method public initViews(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;>;"
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    .line 193
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initAnim(Ljava/util/ArrayList;)V

    .line 194
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 266
    return-void
.end method

.method public setOnViewClickListener(Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOnViewClickListener:Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

    .line 444
    return-void
.end method

.method public startAnim(FFFF)V
    .locals 5
    .param p1, "sx"    # F
    .param p2, "sy"    # F
    .param p3, "w"    # F
    .param p4, "h"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z

    .line 271
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v0, p3

    .line 273
    .local v0, "nw":F
    cmpl-float v3, p3, p4

    if-lez v3, :cond_1

    .line 274
    sub-float v3, p3, p4

    div-float/2addr v3, v4

    add-float v1, p1, v3

    .line 275
    move v2, p2

    .line 277
    move v0, p4

    .line 284
    :cond_0
    :goto_0
    invoke-direct {p0, v1, v2, v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->startAnimP1(FFF)V

    .line 285
    iget-object v3, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initScroll(Ljava/util/ArrayList;)V

    .line 286
    return-void

    .line 278
    :cond_1
    cmpl-float v3, p4, p3

    if-lez v3, :cond_0

    .line 279
    move v1, p1

    .line 280
    sub-float v3, p4, p3

    div-float/2addr v3, v4

    add-float v2, p2, v3

    .line 282
    move v0, p3

    goto :goto_0
.end method
