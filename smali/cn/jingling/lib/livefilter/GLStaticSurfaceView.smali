.class public Lcn/jingling/lib/livefilter/GLStaticSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLStaticSurfaceView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 27
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->setEGLContextClientVersion(I)V

    .line 28
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-static {p1}, Lcn/jingling/lib/PackageSecurity;->check(Landroid/content/Context;)Z

    .line 20
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->setEGLContextClientVersion(I)V

    .line 21
    iput-object p1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public initRenderer()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-direct {v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    .line 36
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->initRender(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->setRenderMode(I)V

    .line 39
    return-void
.end method

.method public releaseRender()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-virtual {v0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->releaseRender()V

    .line 46
    invoke-virtual {p0}, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->requestRender()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "originalBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterLabel"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->setFilter(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V
    .locals 1
    .param p1, "type"    # Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/jingling/lib/livefilter/GLStaticSurfaceView;->mGLStaticSurfaceViewRender:Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;

    invoke-virtual {v0, p1}, Lcn/jingling/lib/livefilter/GLStaticSurfaceViewRender;->setImageType(Lcn/jingling/lib/livefilter/GLImageViewportHelper$ImageType;)V

    .line 69
    return-void
.end method
