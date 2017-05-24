.class public Lcom/lenovo/scg/camera/front/FrontWindow;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "FrontWindow.java"


# instance fields
.field private mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 9
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    iget-object v1, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/ScreenNail;->getGaussBlurFboTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/front/FrontWindow;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 35
    :sswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getTopSpace()I

    move-result v3

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getPreviewScreenWidth()I

    move-result v4

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getPreviewScreenHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 39
    :sswitch_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getTopSpace()I

    move-result v5

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getPreviewScreenHeight()I

    move-result v7

    invoke-static {}, Lcom/lenovo/scg/camera/front/FrontUtil;->getPreviewScreenWidth()I

    move-result v8

    move-object v4, p1

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontWindow;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 19
    return-void
.end method
