.class public abstract Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;
.super Lcn/jingling/lib/advanceedit/brush/DrawState;
.source "DiscreteDrawState.java"


# instance fields
.field protected DEFAULT_DRAW_SPACE:I

.field protected mDrawSpace:I

.field private mLastX:F

.field private mLastY:F

.field private mPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    const/16 v0, 0x50

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->DEFAULT_DRAW_SPACE:I

    .line 19
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->DEFAULT_DRAW_SPACE:I

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mDrawSpace:I

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mPoint:Landroid/graphics/Point;

    .line 27
    return-void
.end method


# virtual methods
.method protected abstract doDraw(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Paint;)V
.end method

.method public mouseDown(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 31
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastX:F

    .line 32
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastY:F

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v0, p1, v1}, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Paint;)V

    .line 34
    return-void
.end method

.method public mouseMove(Landroid/graphics/Point;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 39
    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v4

    .line 40
    .local v2, "x":F
    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v4

    .line 41
    .local v3, "y":F
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastX:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 42
    .local v0, "dx":F
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastY:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 43
    .local v1, "dy":F
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mDrawSpace:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mDrawSpace:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 44
    :cond_0
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mPoint:Landroid/graphics/Point;

    float-to-int v5, v2

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 45
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mPoint:Landroid/graphics/Point;

    float-to-int v5, v3

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 46
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mPoint:Landroid/graphics/Point;

    iget-object v6, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v4, v5, v6}, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Point;Landroid/graphics/Paint;)V

    .line 47
    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastX:F

    .line 48
    iput v3, p0, Lcn/jingling/lib/advanceedit/brush/DiscreteDrawState;->mLastY:F

    .line 50
    :cond_1
    return-void
.end method

.method public mouseUp(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 56
    return-void
.end method
