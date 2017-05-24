.class public Lcom/lenovo/scg/camera/shortcut/Level;
.super Landroid/view/View;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;,
        Lcom/lenovo/scg/camera/shortcut/Level$Line;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

.field private l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

.field private mCenterX:I

.field private mCenterY:I

.field private mContext:Landroid/content/Context;

.field private mK:D

.field private mListener:Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;

.field private mOrientation:I

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x41f00000    # 30.0f

    const/4 v4, -0x1

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v2, "Level"

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->TAG:Ljava/lang/String;

    .line 34
    iput v4, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    .line 57
    const-string v2, "Level"

    const-string v3, "Level"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mContext:Landroid/content/Context;

    .line 61
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/shortcut/Level;->setWillNotDraw(Z)V

    .line 63
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;-><init>(Lcom/lenovo/scg/camera/shortcut/Level;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mListener:Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;

    .line 65
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint1:Landroid/graphics/Paint;

    .line 66
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint1:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint2:Landroid/graphics/Paint;

    .line 71
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint2:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 77
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenWidth:I

    .line 79
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    .line 81
    iget v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    .line 82
    iget v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    .line 84
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/shortcut/Level$Line;-><init>(Lcom/lenovo/scg/camera/shortcut/Level;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    .line 87
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/shortcut/Level$Line;-><init>(Lcom/lenovo/scg/camera/shortcut/Level;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    .line 88
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    .line 89
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v2, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string v0, "Level"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    .line 51
    const-string v0, "Level"

    const-string v1, "Level"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/shortcut/Level;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/Level;

    .prologue
    .line 16
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/shortcut/Level;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/Level;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/shortcut/Level;)D
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/Level;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mK:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/shortcut/Level;D)D
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/Level;
    .param p1, "x1"    # D

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mK:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/shortcut/Level;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/shortcut/Level;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lenovo/scg/camera/shortcut/Level;->calculateLine2()V

    return-void
.end method

.method private calculateLine2()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 139
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iget v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mK:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iput v6, v0, Landroid/graphics/Point;->y:I

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iget v2, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mK:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 102
    const-string v0, "Level"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mListener:Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->enable()V

    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 109
    const-string v0, "Level"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mListener:Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Level$MyOrientationEventListener;->disable()V

    .line 111
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    const-string v0, "Level"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/16 v1, 0x2d

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/16 v1, 0x87

    if-le v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/16 v1, 0xe1

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mOrientation:I

    const/16 v1, 0x13b

    if-gt v0, v1, :cond_3

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterX:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenHeight:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l2:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mPaint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p1:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mScreenWidth:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Level;->l1:Lcom/lenovo/scg/camera/shortcut/Level$Line;

    iget-object v0, v0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->p2:Landroid/graphics/Point;

    iget v1, p0, Lcom/lenovo/scg/camera/shortcut/Level;->mCenterY:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 96
    const-string v0, "Level"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
