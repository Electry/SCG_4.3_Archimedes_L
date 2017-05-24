.class public Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "metrics"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 42
    invoke-direct {p0, p4, p5}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;-><init>(II)V

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 45
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 46
    return-void
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 1
    .param p0, "textSize"    # F
    .param p1, "color"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPaint(FIZ)Landroid/text/TextPaint;
    .locals 2
    .param p0, "textSize"    # F
    .param p1, "color"    # I
    .param p2, "bold"    # Z

    .prologue
    .line 62
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 63
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 64
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 69
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "color"    # I

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "color"    # I
    .param p3, "lengthLimit"    # F
    .param p4, "isBold"    # Z

    .prologue
    .line 79
    invoke-static {p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    .line 80
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz p4, :cond_0

    .line 81
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 83
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 84
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, v0, p3, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_1
    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;FIZ)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "textSize"    # F
    .param p2, "color"    # I
    .param p3, "bold"    # Z

    .prologue
    .line 57
    invoke-static {p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FIZ)Landroid/text/TextPaint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 91
    .local v3, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v4, v0

    .line 92
    .local v4, "width":I
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v5, v0, v1

    .line 94
    .local v5, "height":I
    if-gtz v4, :cond_0

    const/4 v4, 0x1

    .line 95
    :cond_0
    if-gtz v5, :cond_1

    const/4 v5, 0x1

    .line 96
    :cond_1
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "backing"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    return-void
.end method
