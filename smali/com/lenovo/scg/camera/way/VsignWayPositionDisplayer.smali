.class public Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
.super Ljava/lang/Object;
.source "VsignWayPositionDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VsignWayPositionDisplayer"

.field private static mDisplayer:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;


# instance fields
.field private isVisgnRectShow:Z

.field private isWaveRectShow:Z

.field private mContext:Landroid/content/Context;

.field private mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

.field private mOrientation:I

.field private mPositionRect:Landroid/graphics/Rect;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRootView:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayer:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    .line 36
    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    .line 38
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z

    .line 39
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isWaveRectShow:Z

    .line 41
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewWidth:I

    .line 42
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewHeight:I

    .line 45
    iput v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mOrientation:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->initDisplayerView()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->setRect2PosRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->tailor()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isWaveRectShow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isWaveRectShow:Z

    return p1
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayer:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    return-object v0
.end method

.method private initDisplayerView()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "VsignWayPositionDisplayer"

    const-string v1, "initDisplayerView() : mContext == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f10015a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 200
    const-string v0, "VsignWayPositionDisplayer"

    const-string v1, "initDisplayerView() : find mRootView Failed && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;-><init>(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isRectValid(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 210
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    .line 216
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    .line 219
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setRect2PosRect(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 173
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    .line 176
    :cond_0
    const/4 v1, 0x0

    .line 177
    .local v1, "mWScale":F
    const/4 v0, 0x0

    .line 178
    .local v0, "mHScale":F
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v2, v3, :cond_2

    .line 179
    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 180
    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 186
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 187
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 188
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    sget v3, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenHeight:I

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getBottomSpace()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 190
    return-void

    .line 181
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getRatio()Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    if-ne v2, v3, :cond_1

    .line 182
    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 183
    sget v2, Lcom/lenovo/scg/camera/front/FrontUtil;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0
.end method

.method private tailor()V
    .locals 5

    .prologue
    .line 229
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 233
    .local v1, "w":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 235
    .local v0, "h":I
    const-string v2, "VsignWayPositionDisplayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tailor(): mOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 255
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 256
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 240
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v0, 0x4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 241
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 244
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 245
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 246
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 249
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 250
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 251
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    if-eqz v0, :cond_0

    .line 55
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z

    .line 56
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isWaveRectShow:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPositionRect:Landroid/graphics/Rect;

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;->invalidate()V

    .line 60
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 161
    :cond_0
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mRootView:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mDisplayerView:Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$DisplayerView;

    .line 163
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 166
    const-string v0, "VsignWayPositionDisplayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewWidth:I

    .line 169
    iput p2, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mPreviewHeight:I

    goto :goto_0
.end method

.method public vSignAt(Landroid/content/Context;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isVisgnRectShow:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "VsignWayPositionDisplayer"

    const-string/jumbo v1, "vSignAt(): is not Rect show && rect is not valid && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 76
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    .line 77
    iput p3, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mOrientation:I

    .line 79
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 80
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    new-instance v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$1;-><init>(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public waveAt(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isWaveRectShow:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->isRectValid(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    const-string v0, "VsignWayPositionDisplayer"

    const-string/jumbo v1, "waveAt(): is not Rect show && rect is not valid && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->mContext:Landroid/content/Context;

    .line 126
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 127
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    new-instance v0, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$2;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer$2;-><init>(Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
