.class public Lcom/lenovo/scg/camera/ui/ZoomRenderer;
.super Ljava/lang/Object;
.source "ZoomRenderer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAM_Zoom"


# instance fields
.field private mCircleSize:I

.field private mDetector:Landroid/view/ScaleGestureDetector;

.field private mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

.field private mMaxCircle:F

.field private mMaxZoom:I

.field private mMinCircle:F

.field private mMinZoom:I

.field private mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 102
    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    .line 103
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxCircle:F

    .line 106
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v7, 0x1

    .line 166
    const-string v3, "CAM_Zoom:zoom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ZoomRenderer ----- onScale : mListener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getEnable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    const-string v3, "CAM_Zoom"

    const-string/jumbo v4, "onScale : !mZoomBar.getEnable() && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    return v7

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getPinchEnable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    const-string v3, "CAM_Zoom"

    const-string/jumbo v4, "onScale : !mZoomBar.getPinchEnable() && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 176
    .local v1, "sf":F
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-float v0, v3

    .line 177
    .local v0, "circle":F
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 178
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxCircle:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 179
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v3, :cond_0

    float-to-int v3, v0

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mCircleSize:I

    if-eq v3, v4, :cond_0

    .line 180
    float-to-int v3, v0

    iput v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 181
    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinZoom:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mCircleSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v6, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 182
    .local v2, "zoom":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 183
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setZoomForUi(I)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v2, 0x1

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    const-string v0, "CAM_Zoom"

    const-string/jumbo v1, "onScaleBegin : !mZoomBar.getEnable() && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getPinchEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    const-string v0, "CAM_Zoom"

    const-string/jumbo v1, "onScaleBegin : !mZoomBar.getPinchEnable() && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomStart()V

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    const-string v0, "CAM_Zoom"

    const-string/jumbo v1, "onScaleEnd : !mZoomBar.getEnable() && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getPinchEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    const-string v0, "CAM_Zoom"

    const-string/jumbo v1, "onScaleEnd : !mZoomBar.getPinchEnable() && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;->onZoomEnd()V

    goto :goto_0
.end method

.method public setOnZoomChangeListener(Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mListener:Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;

    .line 126
    return-void
.end method

.method public setZoom(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    int-to-float v1, p1

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxCircle:F

    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinCircle:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxZoom:I

    iget v3, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinZoom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mCircleSize:I

    .line 116
    return-void
.end method

.method public setZoomMax(I)V
    .locals 1
    .param p1, "zoomMaxIndex"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMaxZoom:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->mMinZoom:I

    .line 112
    return-void
.end method

.method public setZoomValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 122
    return-void
.end method
