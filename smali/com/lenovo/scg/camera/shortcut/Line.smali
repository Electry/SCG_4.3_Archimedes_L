.class public Lcom/lenovo/scg/camera/shortcut/Line;
.super Landroid/view/View;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;,
        Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;,
        Lcom/lenovo/scg/camera/shortcut/Line$TYPE;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

.field private mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v2, "Line"

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->TAG:Ljava/lang/String;

    .line 33
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;-><init>(Lcom/lenovo/scg/camera/shortcut/Line;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    .line 34
    new-instance v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;-><init>(Lcom/lenovo/scg/camera/shortcut/Line;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    .line 37
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    .line 58
    const-string v2, "Line"

    const-string v3, "Line"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/shortcut/Line;->setWillNotDraw(Z)V

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    .line 63
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 69
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    .line 71
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    .line 73
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    .line 74
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    .line 76
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    .line 77
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    .line 79
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    .line 80
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    .line 82
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    .line 83
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    .line 85
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    .line 86
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v3, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, "Line"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;-><init>(Lcom/lenovo/scg/camera/shortcut/Line;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    .line 34
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;-><init>(Lcom/lenovo/scg/camera/shortcut/Line;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    .line 53
    const-string v0, "Line"

    const-string v1, "Line"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 177
    const-string v0, "Line"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 183
    const-string v0, "Line"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    const-string v0, "Line"

    const-string/jumbo v1, "onDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    sget-object v1, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->FOUR:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    if-ne v0, v1, :cond_3

    .line 207
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundColor(I)V

    .line 208
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    const/4 v9, 0x0

    .line 217
    .local v9, "isDebug":Z
    if-eqz v9, :cond_0

    .line 218
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .local v10, "mTestPaint":Landroid/graphics/Paint;
    const/16 v0, 0x64

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    const v0, -0xff0100

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 227
    .end local v10    # "mTestPaint":Landroid/graphics/Paint;
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    .end local v9    # "isDebug":Z
    :cond_1
    :goto_0
    return-void

    .line 235
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mCenterPoint:Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    sget-object v1, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->NINE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    if-ne v0, v1, :cond_1

    .line 245
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundColor(I)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    .line 249
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    .line 251
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v4, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v5, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v7, v0

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 255
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    .line 268
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 285
    :cond_4
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v1, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 287
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mScreenHeight:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 292
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    add-int/lit8 v0, v0, -0x14

    int-to-float v2, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mNineLinePoint:Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;

    iget v0, v0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 171
    const-string v0, "Line"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "isDebug":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setLeft(I)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setTop(I)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setRight(I)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setBottom(I)V

    .line 197
    const v1, -0xffff01

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundColor(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "mRect"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/Line;->invalidate()V

    .line 49
    return-void
.end method

.method public show4Line()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->FOUR:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    .line 138
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/Line;->postInvalidate()V

    .line 140
    return-void
.end method

.method public show9Line()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->NINE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/Line;->postInvalidate()V

    .line 146
    return-void
.end method

.method public showInfiniteLine()V
    .locals 3

    .prologue
    const v2, 0x7f0201ed

    .line 149
    sget-object v0, Lcom/lenovo/scg/camera/shortcut/Line$TYPE;->INFINITE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mTYPE:Lcom/lenovo/scg/camera/shortcut/Line$TYPE;

    .line 150
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/shortcut/Line;->postInvalidate()V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundResource(I)V

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/Line;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->is16v9(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundResource(I)V

    goto :goto_0

    .line 161
    :cond_1
    const v0, 0x7f0201ee

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/Line;->setBackgroundResource(I)V

    goto :goto_0
.end method
