.class public Lcom/lenovo/scg/camera/ui/LoadingBar;
.super Landroid/widget/ImageView;
.source "LoadingBar.java"


# instance fields
.field private final ROTATION_FROM:F

.field private final ROTATION_TO:F

.field private doProgress:Z

.field innerRingHeight:I

.field innerRingWidth:I

.field private mOuterRotation:F

.field private outerRing:Landroid/graphics/drawable/Drawable;

.field outerRingHeight:I

.field outerRingWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/ui/LoadingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/ui/LoadingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41c80000    # 25.0f

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/high16 v1, -0x3e380000    # -25.0f

    iput v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->ROTATION_FROM:F

    .line 22
    iput v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->ROTATION_TO:F

    .line 23
    iput v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    .line 25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->doProgress:Z

    .line 28
    sget-object v1, Lcom/lenovo/scg/R$styleable;->LoadingBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRingWidth:I

    .line 34
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRingHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->doProgress:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    iget v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    iget v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRingWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRingHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    iget v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    .line 60
    iget v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 61
    iget v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->mOuterRotation:F

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "dw":I
    const/4 v0, 0x0

    .line 83
    .local v0, "dh":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 87
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/LoadingBar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 88
    invoke-static {v1, p1}, Lcom/lenovo/scg/camera/ui/LoadingBar;->resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, Lcom/lenovo/scg/camera/ui/LoadingBar;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/ui/LoadingBar;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->outerRing:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    :cond_0
    return-void
.end method

.method public startLoading(Z)V
    .locals 0
    .param p1, "onOff"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ui/LoadingBar;->doProgress:Z

    .line 68
    return-void
.end method
