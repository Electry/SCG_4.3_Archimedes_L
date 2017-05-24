.class public Lcom/lenovo/scg/camera/ui/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private layout_height:I

.field private layout_width:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinHandler:Landroid/os/Handler;

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_height:I

    .line 28
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_width:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->fullRadius:I

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleRadius:I

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    .line 36
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    .line 38
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    .line 40
    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    .line 43
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    .line 45
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    .line 47
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    .line 49
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    .line 52
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    .line 54
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    .line 56
    const v0, -0x55222223

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    .line 58
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 77
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    .line 80
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    .line 82
    new-instance v0, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel$1;-><init>(Lcom/lenovo/scg/camera/ui/ProgressWheel;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    .line 102
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 104
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->text:Ljava/lang/String;

    .line 109
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/lenovo/scg/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ui/ProgressWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ProgressWheel;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/ui/ProgressWheel;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ProgressWheel;

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/ui/ProgressWheel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ui/ProgressWheel;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 203
    const/16 v0, 0xa

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    .line 205
    const/4 v0, 0x5

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    .line 207
    const/4 v0, 0x6

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    .line 209
    const/4 v0, 0x7

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    .line 210
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    if-gez v0, :cond_0

    .line 211
    iput v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    .line 214
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    .line 216
    const/16 v0, 0xb

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    .line 218
    const/4 v0, 0x2

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    .line 220
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    .line 223
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 227
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    .line 229
    const/16 v0, 0x8

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    .line 232
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    return-void
.end method

.method private setupBounds()V
    .locals 9

    .prologue
    .line 176
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_width:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_height:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    .local v0, "minValue":I
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_width:I

    sub-int v1, v3, v0

    .line 180
    .local v1, "xOffset":I
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_height:I

    sub-int v2, v3, v0

    .line 183
    .local v2, "yOffset":I
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getPaddingTop()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    .line 184
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getPaddingRight()I

    move-result v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    .line 188
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 190
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->fullRadius:I

    .line 194
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->fullRadius:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleRadius:I

    .line 195
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 169
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    return v0
.end method

.method public incrementProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    .line 294
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    div-int/lit8 v1, v1, 0x9

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 297
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    .line 240
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 244
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "cwhaaa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wheel isSpinning progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v12

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v12

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    const/4 v10, 0x0

    .line 255
    .local v10, "offsetNum":I
    iget-object v6, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->splitText:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v11, v6, v7

    .line 256
    .local v11, "s":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float v9, v0, v12

    .line 257
    .local v9, "offset":F
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v9

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->splitText:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    add-int/lit8 v10, v10, 0x1

    .line 255
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 248
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "offset":F
    .end local v10    # "offsetNum":I
    .end local v11    # "s":Ljava/lang/String;
    :cond_0
    const-string v0, "cwhaaa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wheel is not Spinning progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    mul-int/lit8 v0, v0, 0x4

    int-to-float v3, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 261
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "offsetNum":I
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 138
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_width:I

    .line 139
    iput p2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->layout_height:I

    .line 141
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setupBounds()V

    .line 142
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setupPaints()V

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->invalidate()V

    .line 144
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 268
    const-string v0, "0%"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->invalidate()V

    .line 270
    return-void
.end method

.method public setBarColor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barColor:I

    .line 393
    return-void
.end method

.method public setBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barLength:I

    .line 337
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "barWidth"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->barWidth:I

    .line 345
    return-void
.end method

.method public setCircleColor(I)V
    .locals 0
    .param p1, "circleColor"    # I

    .prologue
    .line 400
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleColor:I

    .line 401
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .param p1, "circleRadius"    # I

    .prologue
    .line 328
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->circleRadius:I

    .line 329
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 448
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->delayMillis:I

    .line 449
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 368
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingBottom:I

    .line 369
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingLeft:I

    .line 377
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingRight:I

    .line 385
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->paddingTop:I

    .line 361
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 303
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    .line 304
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method

.method public setRimColor(I)V
    .locals 0
    .param p1, "rimColor"    # I

    .prologue
    .line 408
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimColor:I

    .line 409
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 417
    return-void
.end method

.method public setRimWidth(I)V
    .locals 0
    .param p1, "rimWidth"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->rimWidth:I

    .line 441
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0
    .param p1, "spinSpeed"    # I

    .prologue
    .line 432
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinSpeed:I

    .line 433
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->text:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->text:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 424
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textColor:I

    .line 425
    return-void
.end method

.method public setTextSize(I)V
    .locals 0
    .param p1, "textSize"    # I

    .prologue
    .line 352
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->textSize:I

    .line 353
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 287
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->isSpinning:Z

    .line 277
    iput v1, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->progress:I

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ProgressWheel;->spinHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    return-void
.end method
