.class public Lcn/jingling/lib/advanceedit/brush/EraserState;
.super Lcn/jingling/lib/advanceedit/brush/DrawState;
.source "EraserState.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 25
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 26
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 25
    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 27
    return-void
.end method


# virtual methods
.method public getPenWidth()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->penWidth:I

    return v0
.end method

.method public mouseUp(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 43
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 44
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 46
    .local v1, "y":I
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 49
    return-void
.end method

.method public setPenWidth(I)V
    .locals 2
    .param p1, "pWidth"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->penWidth:I

    .line 38
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/EraserState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/advanceedit/brush/EraserState;->getPenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 39
    return-void
.end method
