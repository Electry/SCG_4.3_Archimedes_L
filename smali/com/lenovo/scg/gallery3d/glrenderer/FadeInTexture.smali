.class public Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;
.source "FadeInTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/Texture;


# static fields
.field private static final TAG:Ljava/lang/String; = "FadeInTexture"


# instance fields
.field private final mColor:I

.field private final mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;


# direct methods
.method public constructor <init>(ILcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .prologue
    .line 33
    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->isOpaque()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeTexture;-><init>(IIZ)V

    .line 34
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mColor:I

    .line 35
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mColor:I

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IFIIII)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/FadeInTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/TiledTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method
