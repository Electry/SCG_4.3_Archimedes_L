.class public Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;
.super Landroid/opengl/GLSurfaceView;
.source "CameraGLSurfaceViewEx.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isUseSTRender:Z

.field private mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->isUseSTRender:Z

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->TAG:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->isUseSTRender:Z

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->TAG:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 46
    iput-object p1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 48
    invoke-virtual/range {v0 .. v6}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setEGLConfigChooser(IIIIII)V

    .line 49
    return-void
.end method

.method private resetViewSize(II)V
    .locals 1
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->isUseSTRender:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;

    invoke-virtual {v0, p1, p2}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->resetViewSize(II)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public createRender(Z)V
    .locals 1
    .param p1, "smooth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->createRender(ZZ)V

    .line 73
    return-void
.end method

.method public createRender(ZZ)V
    .locals 2
    .param p1, "isUseSTRender"    # Z
    .param p2, "smooth"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->isUseSTRender:Z

    .line 82
    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcn/jingling/lib/livefilter/CameraSTRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    .line 87
    :goto_0
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 88
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcn/jingling/lib/livefilter/CameraRenderer;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcn/jingling/lib/livefilter/CameraRenderer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    goto :goto_0
.end method

.method public getFitlerInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/AbsCameraRender;->getFilterInfo()Lcn/jingling/lib/livefilter/LiveFilterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public initCommonRender(IIIIIIZ)V
    .locals 9
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I
    .param p5, "direction"    # I
    .param p6, "format"    # I
    .param p7, "flip"    # Z

    .prologue
    .line 110
    sget-object v8, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->initCommonRender(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 111
    return-void
.end method

.method public initCommonRender(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
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
    .line 119
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraRenderer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcn/jingling/lib/livefilter/CameraRenderer;->init(IIIIIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 120
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onResume()V

    .line 122
    return-void
.end method

.method public initSTRender(IIIZ)V
    .locals 6
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "direction"    # I
    .param p4, "flip"    # Z

    .prologue
    .line 95
    sget-object v5, Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;->FIT_CENTER:Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->initSTRender(IIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 96
    return-void
.end method

.method public initSTRender(IIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 6
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "direction"    # I
    .param p4, "flip"    # Z
    .param p5, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 99
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->init(IIIZLcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 100
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onPause()V

    .line 101
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->onResume()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/AbsCameraRender;->refresh()V

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 57
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->setFilterAsync(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public setFrame([B)V
    .locals 1
    .param p1, "frame"    # [B

    .prologue
    .line 158
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraRenderer;->setFrame([B)V

    .line 159
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "imageType"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 136
    return-void
.end method

.method public setObserver(Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;)V
    .locals 1
    .param p1, "observer"    # Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    check-cast v0, Lcn/jingling/lib/livefilter/CameraSTRenderer;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/CameraSTRenderer;->setObserver(Lcn/jingling/lib/livefilter/CameraSTRenderer$Observer;)V

    .line 155
    return-void
.end method

.method public setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V
    .locals 1
    .param p1, "l"    # Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->mCameraRenderer:Lcn/jingling/lib/livefilter/AbsCameraRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->setOnFpsListener(Lcn/jingling/lib/livefilter/AbsCameraRender$OnFpsListener;)V

    .line 92
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->setRenderMode(I)V

    .line 63
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 64
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 176
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/jingling/lib/livefilter/CameraGLSurfaceViewEx;->resetViewSize(II)V

    .line 177
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 168
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 185
    return-void
.end method
