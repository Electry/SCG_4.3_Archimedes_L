.class public Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
.super Ljava/lang/Object;
.source "ZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;,
        Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    }
.end annotation


# static fields
.field private static final MSG_DESTORY_ZOOM_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZoomBarCanver"

.field private static final TIMER_DESTORY_DELAY:I = 0xbb8

.field private static mCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# instance fields
.field private isInEffectMode:Z

.field private isPinchEnable:Z

.field private isZoomUsable:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/app/Activity;

.field private mEffectSelEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsZoomStarted:Z

.field private mOrientation:I

.field private mReduceDrawable:Landroid/graphics/drawable/Drawable;

.field private mReduceZeroDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideBarPos:I

.field private mTimeActionDown:J

.field private mViewHeight:I

.field private mViewTop:I

.field private mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mZoom:I

.field private mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

.field private mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

.field private mZoomLayout:Landroid/widget/LinearLayout;

.field private mZoomMax:I

.field private mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRootView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .line 39
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    .line 42
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 44
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    .line 47
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I

    .line 50
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    .line 53
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    .line 55
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mOrientation:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mTimeActionDown:J

    .line 59
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;

    .line 61
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .line 64
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mEffectSelEnable:Z

    .line 65
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isInEffectMode:Z

    .line 68
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isZoomUsable:Z

    .line 71
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isPinchEnable:Z

    .line 73
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceZeroDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    iput-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mIsZoomStarted:Z

    .line 85
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I

    .line 86
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenHeight:I

    .line 87
    const/16 v0, 0xc6

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewHeight:I

    .line 88
    const/16 v0, 0x538

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewTop:I

    .line 92
    new-instance v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$1;-><init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mTimeActionDown:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mTimeActionDown:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceZeroDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    return p1
.end method

.method static synthetic access$312(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$320(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    return v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    return-object v0
.end method

.method private getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    const-string v0, "ZoomBarCanver"

    const-string v1, "getZoomRootView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 326
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 327
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v0, 0x7f10015a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public creat()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 235
    const-string v4, "ZoomBarCanver"

    const-string v5, "creat()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 237
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isZoomUsable:Z

    if-nez v4, :cond_0

    .line 238
    const-string v4, "ZoomBarCanver"

    const-string v5, "creat(): !isZoomUsable && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isInEffectMode:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mEffectSelEnable:Z

    if-eqz v4, :cond_1

    .line 242
    const-string v4, "ZoomBarCanver"

    const-string v5, "creat(): mEffectSelEnable && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 246
    .local v2, "mLayout":Landroid/widget/RelativeLayout;
    if-nez v2, :cond_2

    .line 247
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "show: mLayout == null && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_3

    .line 252
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 255
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 256
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "show(): mZoomBarView has Parent && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 261
    .local v3, "mPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewTop:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 262
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 263
    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 265
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 267
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    if-nez v4, :cond_5

    .line 268
    new-instance v4, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;-><init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .line 271
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    if-nez v4, :cond_6

    .line 272
    new-instance v4, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;-><init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    .line 275
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    .local v0, "lPara1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 280
    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 281
    .local v1, "lPara2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x40200000    # 2.5f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 283
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mIsZoomStarted:Z

    goto/16 :goto_0
.end method

.method public destory()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 287
    const-string v1, "ZoomBarCanver"

    const-string v2, "destory()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->removeMsg()V

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 293
    .local v0, "mLayout":Landroid/widget/RelativeLayout;
    if-nez v0, :cond_1

    .line 294
    const-string v1, "ZoomBarCanver"

    const-string v2, "hide: mLayout == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 299
    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 301
    :cond_2
    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 302
    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    .line 303
    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    .line 304
    iput v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    .line 305
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->removeDestoryMsg()V

    .line 307
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mIsZoomStarted:Z

    goto :goto_0
.end method

.method public destoryTimerStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 311
    const-string v0, "ZoomBarCanver"

    const-string v1, "destoryTimerStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 316
    return-void
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isZoomUsable:Z

    return v0
.end method

.method public getPinchEnable()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isPinchEnable:Z

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    return v0
.end method

.method public getZoomRatios()F
    .locals 4

    .prologue
    .line 334
    const-string v1, "ZoomBarCanver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoomRatios: zoom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 338
    :goto_0
    return v0

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v0, v1

    .line 337
    .local v0, "ratios":F
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 338
    goto :goto_0
.end method

.method public init(Landroid/app/Activity;IILjava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "zoomMax"    # I
    .param p3, "zoom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p4, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    .line 129
    iput p2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I

    .line 130
    iput p3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    .line 131
    iput-object p4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomRatios:Ljava/util/List;

    .line 133
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mZoomMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020404

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mReduceZeroDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenWidth:I

    .line 143
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mScreenHeight:I

    .line 144
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v0, v0, 0xc6

    div-int/lit16 v0, v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewHeight:I

    .line 145
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    mul-int/lit16 v0, v0, 0x538

    div-int/lit16 v0, v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mViewTop:I

    .line 146
    return-void
.end method

.method public ismIsZoomStarted()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mIsZoomStarted:Z

    return v0
.end method

.method public removeDestoryMsg()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "removeMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 173
    :cond_0
    return-void
.end method

.method public setCurrentMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 5
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 199
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentMode: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isInEffectMode:Z

    .line 201
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_2

    .line 204
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 205
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isInEffectMode:Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 208
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    goto :goto_0
.end method

.method public setEffectSelEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 217
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEffectSelEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mEffectSelEnable:Z

    .line 219
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mEffectSelEnable:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$2;-><init>(Lcom/lenovo/scg/camera/ui/ZoomBarCanver;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isZoomUsable:Z

    .line 177
    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 180
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 162
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mOrientation:I

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 167
    :cond_0
    return-void
.end method

.method public setPinchEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->isPinchEnable:Z

    .line 188
    return-void
.end method

.method public setZoomChangedListener(Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .line 232
    return-void
.end method

.method public setZoomForUi(I)V
    .locals 3
    .param p1, "zoom"    # I

    .prologue
    .line 149
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomForUi: zoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomForUi: mZoomLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoom:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->getSlideBarFromZoom(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mSlideBarPos:I

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$ZoomView;->invalidate()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver$NumberView;->invalidate()V

    .line 159
    :cond_1
    return-void
.end method

.method public setmIsZoomStarted(Z)V
    .locals 0
    .param p1, "mIsZoomStarted"    # Z

    .prologue
    .line 978
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->mIsZoomStarted:Z

    .line 979
    return-void
.end method
