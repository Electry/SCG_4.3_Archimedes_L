.class public Lcn/jingling/lib/livefilter/CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "CameraGLSurfaceView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRender:Lcn/jingling/lib/livefilter/CameraRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mContext:Landroid/content/Context;

    .line 19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public createRender(Z)V
    .locals 2
    .param p1, "smooth"    # Z

    .prologue
    .line 46
    new-instance v0, Lcn/jingling/lib/livefilter/CameraRenderer;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    .line 47
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 48
    return-void
.end method

.method public getFitlerInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraRenderer;->getFilterInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;

    move-result-object v0

    return-object v0
.end method

.method public initRender(IIIIIIZ)V
    .locals 9
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "direction"    # I
    .param p6, "format"    # I
    .param p7, "flip"    # Z

    .prologue
    .line 67
    sget-object v8, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->initRender(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 68
    return-void
.end method

.method public initRender(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 9
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "direction"    # I
    .param p6, "format"    # I
    .param p7, "flip"    # Z
    .param p8, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 84
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/CameraRenderer;->init(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 85
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->onPause()V

    .line 86
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->onResume()V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraRenderer;->refresh()V

    .line 35
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 36
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;->setFilterAsync(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setFrame([B)V
    .locals 1
    .param p1, "frame"    # [B

    .prologue
    .line 105
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;->setFrame([B)V

    .line 106
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 93
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;->setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 94
    return-void
.end method

.method public setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V
    .locals 1
    .param p1, "l"    # Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    .prologue
    .line 51
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->mRender:Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;->setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V

    .line 52
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceView;->setRenderMode(I)V

    .line 43
    return-void
.end method
