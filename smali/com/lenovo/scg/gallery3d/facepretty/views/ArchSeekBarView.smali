.class public Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
.super Landroid/widget/ImageView;
.source "ArchSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WDY:ArchSeekbarView"


# instance fields
.field private lastRotationValue:I

.field private onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->lastRotationValue:I

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->lastRotationValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->lastRotationValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;FF)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getCircleRotationPort(FF)F

    move-result v0

    return v0
.end method

.method private getCircleRotationPort(FF)F
    .locals 10
    .param p1, "touch_x"    # F
    .param p2, "touch_y"    # F

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    .line 117
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v1, v6

    .line 119
    .local v1, "centerY":F
    float-to-int v6, p2

    float-to-int v7, v1

    if-ge v6, v7, :cond_0

    .line 120
    move p2, v1

    .line 123
    :cond_0
    sub-float v2, p1, v0

    .line 124
    .local v2, "dx":F
    sub-float v3, p2, v1

    .line 126
    .local v3, "dy":F
    div-float v5, v2, v3

    .line 127
    .local v5, "tanRotation":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v4, v6

    .line 129
    .local v4, "rotation":F
    float-to-int v6, v4

    const/16 v7, -0x1e

    if-ge v6, v7, :cond_1

    .line 130
    const/high16 v4, -0x3e100000    # -30.0f

    .line 133
    :cond_1
    float-to-int v6, v4

    const/16 v7, 0x1e

    if-le v6, v7, :cond_2

    .line 134
    const/high16 v4, 0x41f00000    # 30.0f

    .line 138
    :cond_2
    neg-float v6, v4

    return v6
.end method


# virtual methods
.method public bindSeekbar(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "mSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    return-void
.end method

.method public getMyRotate()F
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getRotation()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 32
    const-string v0, "WDY:ArchSeekbarView"

    const-string v1, "ArchSeekBarView    onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public rotateThumbLand(F)V
    .locals 6
    .param p1, "rotation"    # F

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getLeft()I

    move-result v4

    int-to-float v1, v4

    .line 151
    .local v1, "centerX":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getTop()I

    move-result v4

    int-to-float v3, v4

    .line 152
    .local v3, "top":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getBottom()I

    move-result v4

    int-to-float v0, v4

    .line 153
    .local v0, "bottom":F
    add-float v4, v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v2, v4, v5

    .line 154
    .local v2, "centerY":F
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setPivotX(F)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setPivotY(F)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setRotation(F)V

    .line 157
    return-void
.end method

.method public rotateThumbPort(F)V
    .locals 4
    .param p1, "rotation"    # F

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 169
    .local v1, "centerY":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 170
    .local v0, "centerX":F
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setPivotX(F)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setPivotY(F)V

    .line 172
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setRotation(F)V

    .line 173
    return-void
.end method

.method public setArchSeekBarViewImageResource(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->setImageResource(I)V

    .line 42
    return-void
.end method

.method public setBindView(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 69
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$2;-><init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    return-void
.end method

.method public setOnRotationChangeListener(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;)V
    .locals 0
    .param p1, "onRotationChangeListener"    # Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    .line 192
    return-void
.end method
