.class public Lcom/lenovo/scg/camera/rewind/FaceRect;
.super Ljava/lang/Object;
.source "FaceRect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLASH_PERIOD:J = 0x1f4L

.field private static final DEFAULT_FLASH_SOLO_TIME:J = 0x3e8L

.field private static final FRAME_COLOR:I = -0x27000001

.field private static final FRAME_EDGE_ROUND_RECT_RADIUS:F = 18.5f

.field private static final FRAME_EDGE_WIDTH:I = 0x5

.field private static final FRAME_FILL_ROUND_RECT_RADIUS:F = 13.0f

.field private static final FRAME_FLASHING_COLOR:I = -0x1

.field private static final FRAME_FLASHING_EDGE_COLOR:I = -0x32000001

.field private static final FRAME_FLASHING_FILL_COLOR:I = 0x4c000000

.field private static final FRAME_ROUND_RECT_RADIUS:F = 14.5f

.field private static final FRAME_TOUCH_COLOR:I = -0x27842b0b

.field private static final FRAME_TOUCH_EDGE_COLOR:I = 0x597bd4f5

.field private static final FRAME_TOUCH_FILL_COLOR:I = 0x4c000000

.field private static final FRAME_WIDTH:I = 0x3

.field private static final NO_TRANSIENT:I = 0x0

.field private static final TRANSIENT_FLASHING:I = 0x1

.field private static final TRANSIENT_TOUCHING:I = 0x3


# instance fields
.field private mDraw:Z

.field private mEdgeRect:Landroid/graphics/RectF;

.field private mFillRect:Landroid/graphics/RectF;

.field private mFlashAlpha:F

.field private mFlashDir:I

.field private mFlashPaintCfg:Landroid/graphics/Paint;

.field private mFlashPeriod:J

.field private mId:I

.field private mListner:Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;

.field private mRect:Landroid/graphics/RectF;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mT0:J

.field private mTEnd:J

.field private mTPrev:J

.field private mTTotal:J

.field private mTransientMode:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "id"    # I

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mDraw:Z

    .line 243
    iput p3, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mId:I

    .line 244
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    .line 245
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v6

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFillRect:Landroid/graphics/RectF;

    .line 246
    const/high16 v0, 0x40800000    # 4.0f

    .line 247
    .local v0, "offset":F
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mEdgeRect:Landroid/graphics/RectF;

    .line 248
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->initRectResource(Landroid/content/res/Resources;)V

    .line 249
    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v5, 0x4c000000    # 3.3554432E7f

    const/high16 v4, 0x41940000    # 18.5f

    const/high16 v3, 0x41500000    # 13.0f

    const/high16 v2, 0x41680000    # 14.5f

    .line 339
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    if-nez v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const v1, -0x27000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/rewind/FaceRect;->getAlpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFillRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 355
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    const v1, -0x32000001    # -5.3687088E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 357
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    const v1, -0x32000001    # -5.3687088E8f

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->getAlpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mEdgeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 361
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const v1, -0x27842b0b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 366
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFillRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 373
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    const v1, 0x597bd4f5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mEdgeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private flash(JJ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "period"    # J

    .prologue
    const/4 v2, 0x1

    .line 115
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    .line 116
    iget-wide v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTEnd:J

    .line 117
    iget-wide v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    iput-wide v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTPrev:J

    .line 118
    iput-wide p1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTTotal:J

    .line 119
    iput-wide p3, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    .line 120
    iput v2, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    .line 122
    iput v2, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashDir:I

    .line 123
    return-void
.end method

.method private getAlpha(I)I
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 334
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private initRectResource(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    const v1, -0x27000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    .line 263
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPaintCfg:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 215
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->drawRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mDraw:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/rewind/FaceRect;->drawRect(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public flash()V
    .locals 4

    .prologue
    .line 110
    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/camera/rewind/FaceRect;->flash(JJ)V

    .line 111
    return-void
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mId:I

    return v0
.end method

.method public onTouch(Z)V
    .locals 1
    .param p1, "bDown"    # Z

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 382
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    return-void
.end method

.method public setDraw(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mDraw:Z

    .line 161
    return-void
.end method

.method public setFaceAnimationListner(Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;)V
    .locals 0
    .param p1, "listner"    # Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mListner:Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;

    .line 21
    return-void
.end method

.method public update(J)V
    .locals 11
    .param p1, "t"    # J

    .prologue
    const/4 v10, 0x1

    .line 164
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    if-nez v6, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 168
    iput-wide p1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    .line 169
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    iget-wide v8, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTTotal:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTEnd:J

    .line 170
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    iput-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTPrev:J

    .line 172
    :cond_2
    move-wide v4, p1

    .line 173
    .local v4, "t1":J
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTPrev:J

    sub-long v0, v4, v6

    .line 175
    .local v0, "delta":J
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    if-ne v6, v10, :cond_0

    .line 176
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 178
    .local v2, "dt":J
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashDir:I

    if-lez v6, :cond_5

    .line 179
    long-to-float v6, v2

    iget-wide v8, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    .line 184
    :cond_3
    :goto_1
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    .line 185
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_4

    .line 186
    iput-wide p1, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTPrev:J

    .line 187
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashDir:I

    neg-int v6, v6

    iput v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashDir:I

    .line 193
    :cond_4
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTEnd:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 194
    const/4 v6, 0x0

    iput v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mTransientMode:I

    .line 195
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mT0:J

    .line 196
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/camera/rewind/FaceRect;->setDraw(Z)V

    .line 197
    iget-object v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mListner:Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mListner:Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;->onFaceAnimationEnd()V

    goto :goto_0

    .line 180
    :cond_5
    iget v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashDir:I

    if-gez v6, :cond_3

    .line 181
    iget-wide v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    sub-long/2addr v6, v2

    long-to-float v6, v6

    iget-wide v8, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashPeriod:J

    long-to-float v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/lenovo/scg/camera/rewind/FaceRect;->mFlashAlpha:F

    goto :goto_1
.end method
