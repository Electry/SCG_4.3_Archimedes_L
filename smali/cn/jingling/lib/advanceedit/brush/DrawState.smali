.class public Lcn/jingling/lib/advanceedit/brush/DrawState;
.super Ljava/lang/Object;
.source "DrawState.java"


# static fields
.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_PEN_WIDTH:I = 0x1e

.field protected static final TOUCH_TOLERANCE:I = 0x4


# instance fields
.field protected last_X:I

.field protected last_Y:I

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mPath:Landroid/graphics/Path;

.field protected paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

.field protected penColor:I

.field protected penWidth:I

.field protected refresh_LastX:I

.field protected refresh_LastY:I

.field protected refresh_X:I

.field protected refresh_Y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x6a

    .line 20
    const/16 v0, 0xff

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcn/jingling/lib/advanceedit/brush/DrawState;->DEFAULT_COLOR:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "pathBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-direct {v0}, Lcn/jingling/lib/advanceedit/brush/MyPaint;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    .line 36
    const/16 v0, 0x1e

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penWidth:I

    .line 37
    sget v0, Lcn/jingling/lib/advanceedit/brush/DrawState;->DEFAULT_COLOR:I

    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penColor:I

    .line 46
    invoke-virtual {p0, p1}, Lcn/jingling/lib/advanceedit/brush/DrawState;->setPathBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->getPenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->getPenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 51
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeMiter(F)V

    .line 52
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    invoke-virtual {p0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->statisticEvent()V

    .line 56
    return-void
.end method


# virtual methods
.method public getPathBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPenColor()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penColor:I

    return v0
.end method

.method public getPenWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penWidth:I

    return v0
.end method

.method public mouseDown(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 64
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 65
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 67
    .local v1, "y":I
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    .line 68
    iput v1, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    .line 69
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 70
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    int-to-float v3, v3

    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    iput v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_X:I

    .line 72
    iput v1, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_Y:I

    .line 73
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_X:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_LastX:I

    .line 74
    iget v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_Y:I

    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_LastY:I

    .line 75
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 77
    return-void
.end method

.method public mouseMove(Landroid/graphics/Point;)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 84
    iget v2, p1, Landroid/graphics/Point;->x:I

    .line 85
    .local v2, "x":I
    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 87
    .local v3, "y":I
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v0, v4

    .line 88
    .local v0, "dx":F
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 89
    .local v1, "dy":F
    cmpl-float v4, v0, v5

    if-gez v4, :cond_0

    cmpl-float v4, v1, v5

    if-ltz v4, :cond_1

    .line 91
    :cond_0
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_X:I

    .line 92
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_Y:I

    .line 93
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    int-to-float v5, v5

    iget v6, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    int-to-float v6, v6

    iget v7, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_X:I

    int-to-float v7, v7

    iget v8, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_Y:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 94
    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iput v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_X:I

    .line 99
    iput v3, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->last_Y:I

    .line 100
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_X:I

    iput v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_LastX:I

    .line 101
    iget v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_Y:I

    iput v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->refresh_LastY:I

    .line 104
    :cond_1
    return-void
.end method

.method public mouseUp(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 111
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 112
    .local v0, "x":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 114
    .local v1, "y":I
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget-object v2, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 116
    return-void
.end method

.method public resetPath()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 180
    return-void
.end method

.method public setPathBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 158
    iput-object p1, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mBitmap:Landroid/graphics/Bitmap;

    .line 159
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setPenColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 141
    iput p1, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penColor:I

    .line 142
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setColor(I)V

    .line 143
    return-void
.end method

.method public setPenWidth(I)V
    .locals 2
    .param p1, "pWidth"    # I

    .prologue
    .line 123
    iput p1, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->penWidth:I

    .line 124
    iget-object v0, p0, Lcn/jingling/lib/advanceedit/brush/DrawState;->paint:Lcn/jingling/lib/advanceedit/brush/MyPaint;

    invoke-virtual {p0}, Lcn/jingling/lib/advanceedit/brush/DrawState;->getPenWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/jingling/lib/advanceedit/brush/MyPaint;->setStrokeWidth(F)V

    .line 125
    return-void
.end method

.method protected statisticEvent()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Brush:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcn/jingling/lib/statistics/LogStoreUtils;->storeDataCommitOnce(Ljava/lang/String;)V

    .line 186
    return-void
.end method
