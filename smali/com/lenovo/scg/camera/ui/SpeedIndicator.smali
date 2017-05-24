.class public Lcom/lenovo/scg/camera/ui/SpeedIndicator;
.super Landroid/view/View;
.source "SpeedIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeedIndicator"


# instance fields
.field private mCircleLength:[I

.field private mCircleRadius:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mSpeed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    const/16 v1, 0x8

    aput v1, v0, v3

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    const/4 v1, 0x2

    const/4 v2, 0x6

    aput v2, v0, v1

    .line 34
    return-void
.end method

.method private updateCircleLength()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v4

    aput v2, v1, v4

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 54
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v6

    aput v2, v1, v7

    .line 57
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v3, v3, v7

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const-string v0, "SpeedIndicator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this.getWidth() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    invoke-direct {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->updateCircleLength()V

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v0, v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v1, v1, v5

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v1, v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v1, v1, v5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v1, v1, v5

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleLength:[I

    aget v1, v1, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mCircleRadius:[I

    aget v2, v2, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public setSpeed(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lenovo/scg/camera/ui/SpeedIndicator;->mSpeed:I

    .line 38
    return-void
.end method
