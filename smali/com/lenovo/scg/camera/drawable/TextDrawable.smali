.class public Lcom/lenovo/scg/camera/drawable/TextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TextDrawable.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_TEXTSIZE:I = 0xf


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/CharSequence;

.field private mUseDropShadow:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 47
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->updatePaint()V

    .line 53
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 54
    .local v0, "textSize":F
    iget-object v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget-object v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    .line 57
    return-void
.end method

.method private updatePaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mUseDropShadow:Z

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 89
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 91
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 121
    return-void
.end method

.method public setDropShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mUseDropShadow:Z

    .line 95
    invoke-direct {p0}, Lcom/lenovo/scg/camera/drawable/TextDrawable;->updatePaint()V

    .line 96
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "txt"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    .line 76
    if-nez p1, :cond_0

    .line 77
    iput v3, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 78
    iput v3, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicWidth:I

    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/drawable/TextDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method
