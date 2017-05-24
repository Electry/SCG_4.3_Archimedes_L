.class public Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/ScreenNail;


# instance fields
.field private final mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    .line 34
    return-void
.end method


# virtual methods
.method public SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .prologue
    .line 71
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 49
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "dest"    # Landroid/graphics/RectF;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 64
    return-void
.end method

.method public getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGaussBlurFboTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTransformMatrix()[F
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/BitmapScreenNail;->mBitmapTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;->recycle()V

    .line 59
    return-void
.end method
