.class public Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;
.super Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;
.source "MiniCameraZoomRenderer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCameraZoomRenderer"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

.field private mMaxCircle:F

.field private mMaxZoom:I

.field private mMinCircle:F

.field private mMinZoom:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mZoomBitmap:Landroid/graphics/drawable/Drawable;

.field private mZoomFraction:I

.field private mZoomSig:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02075a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mZoomBitmap:Landroid/graphics/drawable/Drawable;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mPaint:Landroid/graphics/Paint;

    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v2, 0x7f0900c2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 90
    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mTextBounds:Landroid/graphics/Rect;

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setVisible(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public layout(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/minicamera/ui/MiniCameraOverlayRenderer;->layout(IIII)V

    .line 118
    sub-int v0, p3, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCenterX:I

    .line 119
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCenterY:I

    .line 120
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    .line 121
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    iget v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    .line 122
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 150
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 154
    const-string v3, "lxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZoomRenderer ----- onScale : mListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 156
    .local v1, "sf":F
    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCircleSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    .line 157
    .local v0, "circle":F
    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 158
    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 159
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    if-eqz v3, :cond_0

    float-to-int v3, v0

    iget v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCircleSize:I

    if-eq v3, v4, :cond_0

    .line 160
    float-to-int v3, v0

    iput v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCircleSize:I

    .line 161
    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinZoom:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCircleSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxZoom:I

    iget v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinZoom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    iget v6, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 162
    .local v2, "zoom":I
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 164
    .end local v2    # "zoom":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v1, 0x1

    .line 169
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setVisible(Z)V

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->update()V

    .line 174
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setVisible(Z)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    .line 183
    :cond_0
    return-void
.end method

.method public setOnZoomChangeListener(Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mListener:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;

    .line 113
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxCircle:F

    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinCircle:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxZoom:I

    iget v3, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinZoom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mCircleSize:I

    .line 103
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .param p1, "zoomMaxIndex"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMaxZoom:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mMinZoom:I

    .line 99
    return-void
.end method

.method public setZoomValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 106
    div-int/lit8 p1, p1, 0xa

    .line 107
    div-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mZoomSig:I

    .line 108
    rem-int/lit8 v0, p1, 0xa

    iput v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->mZoomFraction:I

    .line 109
    return-void
.end method
