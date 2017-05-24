.class public Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;
.super Ljava/lang/Object;
.source "LocalTimeGridTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/Texture;


# instance fields
.field private mHeight:I

.field private mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 1
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mWidth:I

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 48
    iget v4, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 49
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 55
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 61
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/LocalTimeAlbumSet/LocalTimeGridTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
