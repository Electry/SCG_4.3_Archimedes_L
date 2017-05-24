.class public Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;
.source "FadeOutTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeOutTexture"


# instance fields
.field private final mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 32
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 41
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 43
    :cond_0
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 50
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->getRatio()F

    move-result v0

    invoke-interface {p1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeOutTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 52
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 53
    return-void
.end method
