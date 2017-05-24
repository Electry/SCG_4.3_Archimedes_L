.class public Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
.super Ljava/lang/Object;
.source "MiniCameraZoomBarCanver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;,
        Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;
    }
.end annotation


# static fields
.field private static final MSG_DESTORY_ZOOM_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ZoomBarCanver"

.field private static final TIMER_DESTORY_DELAY:I = 0xbb8

.field private static mCanver:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;


# instance fields
.field private isZoomUsable:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mReduceDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlideBarPos:I

.field private mViewHeight:I

.field private mViewTop:I

.field private mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

.field private mZoom:I

.field private mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

.field private mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

.field private mZoomLayout:Landroid/widget/LinearLayout;

.field private mZoomMax:I

.field private mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

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
    .line 63
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;-><init>()V

    sput-object v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mCanver:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 29
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .line 32
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    .line 35
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    .line 40
    iput v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I

    .line 43
    iput v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    .line 46
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    .line 48
    iput v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mOrientation:I

    .line 50
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRatios:Ljava/util/List;

    .line 52
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    .line 55
    iput-boolean v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->isZoomUsable:Z

    .line 57
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I

    .line 66
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenHeight:I

    .line 67
    const/16 v0, 0xc6

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mViewHeight:I

    .line 68
    const/16 v0, 0x538

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mViewTop:I

    .line 72
    new-instance v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$1;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mOrientation:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    return p1
.end method

.method static synthetic access$312(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$320(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->removeDestoryMsg()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    .prologue
    .line 22
    iget v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I

    return v0
.end method

.method public static getInstance()Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mCanver:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    return-object v0
.end method

.method private getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    const-string v0, "ZoomBarCanver"

    const-string v1, "getZoomRootView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 244
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v0, 0x7f100693

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private removeDestoryMsg()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "ZoomBarCanver"

    const-string/jumbo v1, "removeMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    return-void
.end method


# virtual methods
.method public creat()V
    .locals 6

    .prologue
    .line 163
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "show()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->removeDestoryMsg()V

    .line 165
    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->isZoomUsable:Z

    if-nez v4, :cond_0

    .line 166
    const-string v4, "ZoomBarCanver"

    const-string v5, "creat(): !isZoomUsable && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 170
    .local v2, "mLayout":Landroid/widget/RelativeLayout;
    if-nez v2, :cond_1

    .line 171
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "show: mLayout == null && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    .line 176
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 180
    const-string v4, "ZoomBarCanver"

    const-string/jumbo v5, "show(): mZoomBarView has Parent && return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    .local v3, "mPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mViewTop:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mScreenWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 187
    iget v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mViewHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 189
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    if-nez v4, :cond_4

    .line 192
    new-instance v4, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .line 195
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    if-nez v4, :cond_5

    .line 196
    new-instance v4, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;-><init>(Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    .line 199
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 203
    .local v0, "lPara1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 204
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    .local v1, "lPara2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x40200000    # 2.5f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_0
.end method

.method public destory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    const-string v1, "ZoomBarCanver"

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->removeMsg()V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->getZoomRootView(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 214
    .local v0, "mLayout":Landroid/widget/RelativeLayout;
    if-nez v0, :cond_1

    .line 215
    const-string v1, "ZoomBarCanver"

    const-string v2, "hide: mLayout == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 220
    iput-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    .line 222
    :cond_2
    iput-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRootView:Landroid/widget/RelativeLayout;

    .line 223
    iput-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    .line 224
    iput-object v3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    .line 225
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->removeDestoryMsg()V

    goto :goto_0
.end method

.method public destoryTimerStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 229
    const-string v0, "ZoomBarCanver"

    const-string v1, "destoryTimerStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    return-void
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->isZoomUsable:Z

    return v0
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
    .line 104
    .local p4, "zoomRatios":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mContext:Landroid/app/Activity;

    .line 105
    iput p2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I

    .line 106
    iput p3, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    .line 107
    iput-object p4, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomRatios:Ljava/util/List;

    .line 109
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mZoomMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mZoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020403

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mReduceDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020402

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mBlueLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mWhiteLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->isZoomUsable:Z

    .line 141
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 132
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

    .line 133
    iput p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mOrientation:I

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 137
    :cond_0
    return-void
.end method

.method public setZoomChangedListener(Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomChangedListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    .line 160
    return-void
.end method

.method public setZoomForUi(I)V
    .locals 3
    .param p1, "zoom"    # I

    .prologue
    .line 119
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

    .line 120
    const-string v0, "ZoomBarCanver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setZoomForUi: mZoomLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    iget v1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoom:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->getSlideBarFromZoom(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mSlideBarPos:I

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomBarView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$ZoomView;->invalidate()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->mZoomNumberView:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver$NumberView;->invalidate()V

    .line 129
    :cond_1
    return-void
.end method
