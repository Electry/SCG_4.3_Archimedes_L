.class public Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;
.super Lcn/jingling/lib/advanceedit/brush/DrawState;
.source "CompoundDrawState.java"


# instance fields
.field protected mWholePath:Landroid/graphics/Path;

.field protected mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;-><init>(Landroid/graphics/Bitmap;)V

    .line 19
    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    .line 21
    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    .line 25
    new-instance v0, Lcn/jingling/lib/advanceedit/brush/MyPaint;

    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-direct {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;-><init>(Lcn/jingling/lib/advanceedit/brush/MyPaint;)V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    .line 26
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected getShaderWidth()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public mouseDown(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 30
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    .line 31
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 32
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 34
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 35
    .local v1, "y":I
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_X:I

    .line 36
    iput v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_Y:I

    .line 37
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    .line 38
    iput v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    .line 39
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_LastX:I

    .line 40
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_LastY:I

    .line 41
    return-void
.end method

.method public mouseMove(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v7, 0x4

    .line 45
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 46
    .local v3, "x":I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 48
    .local v4, "y":I
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_X:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 49
    .local v0, "dx":I
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_Y:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 50
    .local v1, "dy":I
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 51
    .local v2, "path":Landroid/graphics/Path;
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    int-to-float v5, v5

    iget v6, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 52
    if-ge v0, v7, :cond_0

    if-lt v1, v7, :cond_1

    .line 53
    :cond_0
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_Y:I

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    .line 54
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_X:I

    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    .line 56
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_X:I

    int-to-float v5, v5

    iget v6, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_Y:I

    int-to-float v6, v6

    iget v7, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    int-to-float v7, v7

    iget v8, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    int-to-float v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 58
    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v5, v2, v6}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 60
    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    iget-object v7, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v5, v6, v7}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 62
    iput v3, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_X:I

    .line 63
    iput v4, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->last_Y:I

    .line 64
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    iput v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_LastX:I

    .line 65
    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    iput v5, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_LastY:I

    .line 67
    :cond_1
    return-void
.end method

.method public mouseUp(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 72
    .local v0, "path":Landroid/graphics/Path;
    iget v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_X:I

    int-to-float v1, v1

    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->refresh_Y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v1, v0, v2}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 76
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePathPaint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0, v1, v2, v3}, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 78
    iget-object v1, p0, Lcn/jingling/lib/advanceedit/brush/CompoundDrawState;->mWholePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 79
    return-void
.end method
