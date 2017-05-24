.class public Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;
.super Landroid/view/View;
.source "RotationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView$NoBitMapError;
    }
.end annotation


# static fields
.field public static final a_add:F = 0.001f

.field public static final a_max:F = 0.0050000004f

.field public static final a_min:F = 0.001f

.field static final play:I = 0x0

.field static final stop:I = 0x1


# instance fields
.field a:F

.field currentTime:D

.field current_degree:F

.field delayedTime:I

.field deta_degree:F

.field down_x:F

.field down_y:F

.field handler:Landroid/os/Handler;

.field height:I

.field isClockWise:Z

.field lastMoveTime:D

.field maxwidth:D

.field o_x:F

.field o_y:F

.field paint:Landroid/graphics/Paint;

.field rotatBitmap:Landroid/graphics/Bitmap;

.field speed:D

.field target_x:F

.field target_y:F

.field up_degree:F

.field up_x:F

.field up_y:F

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x14

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->delayedTime:I

    .line 50
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->currentTime:D

    .line 279
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->lastMoveTime:D

    .line 294
    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->a:F

    .line 304
    iput-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->speed:D

    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->init()V

    .line 78
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->paint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->initSize()V

    .line 138
    return-void
.end method

.method private initSize()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    .line 169
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    .line 171
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->o_y:F

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->o_x:F

    goto :goto_0
.end method


# virtual methods
.method public addDegree(F)V
    .locals 3
    .param p1, "added"    # F

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    .line 190
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    .line 191
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 192
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    rem-float/2addr v0, v2

    iput v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    .line 194
    :cond_1
    const-string/jumbo v0, "panhui2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDegree, deta_degree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public detaDegree(FFFF)F
    .locals 10
    .param p1, "src_x"    # F
    .param p2, "src_y"    # F
    .param p3, "target_x"    # F
    .param p4, "target_y"    # F

    .prologue
    .line 408
    sub-float v2, p3, p1

    .line 409
    .local v2, "detaX":F
    sub-float v3, p4, p2

    .line 411
    .local v3, "detaY":F
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_3

    .line 412
    div-float v5, v3, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 414
    .local v4, "tan":F
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 415
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    .line 416
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 437
    .end local v4    # "tan":F
    .local v0, "d":D
    :goto_0
    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-float v5, v6

    return v5

    .line 418
    .end local v0    # "d":D
    .restart local v4    # "tan":F
    :cond_0
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    sub-double v0, v6, v8

    .restart local v0    # "d":D
    goto :goto_0

    .line 422
    .end local v0    # "d":D
    :cond_1
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    .line 423
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    sub-double v0, v6, v8

    .restart local v0    # "d":D
    goto :goto_0

    .line 425
    .end local v0    # "d":D
    :cond_2
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    add-double v0, v6, v8

    .restart local v0    # "d":D
    goto :goto_0

    .line 430
    .end local v0    # "d":D
    .end local v4    # "tan":F
    :cond_3
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    .line 431
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .restart local v0    # "d":D
    goto :goto_0

    .line 433
    .end local v0    # "d":D
    :cond_4
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .restart local v0    # "d":D
    goto :goto_0
.end method

.method public getOX()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->o_x:F

    return v0
.end method

.method public getOY()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->o_y:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 460
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    .line 465
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 200
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 202
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 204
    const-string/jumbo v1, "panhui2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDraw, deta_degree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->deta_degree:F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 209
    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    int-to-float v1, v1

    neg-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    int-to-float v2, v2

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 212
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    iget v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->width:I

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    div-float/2addr v1, v6

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->height:I

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 219
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 227
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->maxwidth:D

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setMeasuredDimension(II)V

    .line 229
    return-void
.end method

.method public setRotatBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    .line 142
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->initSize()V

    .line 143
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->postInvalidate()V

    .line 144
    return-void
.end method

.method public setRotatDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->rotatBitmap:Landroid/graphics/Bitmap;

    .line 156
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->initSize()V

    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->postInvalidate()V

    .line 158
    return-void
.end method

.method public setRotatDrawableResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/RotationView;->setRotatDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 152
    return-void
.end method
