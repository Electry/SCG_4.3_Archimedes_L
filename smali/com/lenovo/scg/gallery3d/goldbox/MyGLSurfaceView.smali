.class public Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MyGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;
    }
.end annotation


# instance fields
.field public mColor:I

.field private mContext:Landroid/content/Context;

.field private mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

.field private mHeight:I

.field private mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->setZOrderOnTop(Z)V

    .line 44
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/ui/GalleryEGLConfigChooser;-><init>()V

    .line 45
    .local v0, "chooser":Lcom/lenovo/scg/gallery3d/ui/GalleryEGLConfigChooser;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 46
    if-ne p2, v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 51
    :goto_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;-><init>(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mRenderer:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 53
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/Le3dContext;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 59
    const-string/jumbo v0, "wwf"

    const-string v1, "MyGLSurfaceView onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 66
    const-string/jumbo v0, "wwf"

    const-string v1, "MyGLSurfaceView onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mColor:I

    .line 37
    return-void
.end method
