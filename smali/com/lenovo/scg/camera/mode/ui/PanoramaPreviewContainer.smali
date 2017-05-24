.class public Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;
.super Ljava/lang/Object;
.source "PanoramaPreviewContainer.java"


# instance fields
.field private isFirstDraw:Z

.field private mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    .line 82
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 83
    return-void
.end method

.method private rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 7
    .param p1, "degrees"    # I
    .param p2, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v6, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v3

    .line 94
    .local v3, "w":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v2

    .line 95
    .local v2, "h":I
    div-int/lit8 v0, v3, 0x2

    .line 96
    .local v0, "cx":I
    div-int/lit8 v1, v2, 0x2

    .line 97
    .local v1, "cy":I
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 98
    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-interface {p2, v4, v6, v6, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 99
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 100
    neg-int v4, v1

    int-to-float v4, v4

    neg-int v5, v0

    int-to-float v5, v5

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 102
    :cond_1
    neg-int v4, v0

    int-to-float v4, v4

    neg-int v5, v1

    int-to-float v5, v5

    invoke-interface {p2, v4, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addScaledPreview(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;FFFFI)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "scaledPreview"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "glCompensation"    # I

    .prologue
    const/16 v7, 0xbe2

    const/16 v6, 0xb4

    const/4 v5, 0x0

    .line 39
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 40
    if-eqz p7, :cond_0

    if-ne p7, v6, :cond_1

    .line 41
    :cond_0
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 42
    const/16 v3, 0x10e

    invoke-direct {p0, v3, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->rotateCanvas(ILcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 44
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 45
    .local v2, "rcSrc":Landroid/graphics/RectF;
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 47
    .local v1, "rcDst":Landroid/graphics/RectF;
    if-eqz p7, :cond_2

    if-ne p7, v6, :cond_7

    .line 48
    :cond_2
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, p4

    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, p6

    invoke-virtual {v1, v3, p3, v4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    :goto_0
    invoke-static {v7}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v0

    .line 56
    .local v0, "isEnable":Z
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 57
    const/4 v3, 0x1

    const/16 v4, 0x303

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 59
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    if-eqz v3, :cond_3

    .line 60
    invoke-interface {p1, v5, v5, v5, v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 61
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    .line 64
    :cond_3
    invoke-virtual {p2, p1, v2, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 66
    if-nez v0, :cond_4

    .line 67
    invoke-static {v7}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 70
    :cond_4
    if-eqz p7, :cond_5

    if-ne p7, v6, :cond_6

    .line 71
    :cond_5
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 73
    :cond_6
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 74
    return-void

    .line 51
    .end local v0    # "isEnable":Z
    :cond_7
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public freeTexture()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    .line 89
    return-void
.end method

.method public getTexture()Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method public updateTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;[FIIII)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "updateTexture"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;
    .param p3, "transform"    # [F
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->mPanoramaPreviewContainer:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 21
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v7

    .line 23
    .local v7, "isEnable":Z
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 24
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 26
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaPreviewContainer;->isFirstDraw:Z

    .line 30
    :cond_0
    sub-int v5, p6, p4

    sub-int v6, p7, p5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTextureYUV420sp;[FIIII)V

    .line 31
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    .line 33
    if-nez v7, :cond_1

    .line 34
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 36
    :cond_1
    return-void
.end method
