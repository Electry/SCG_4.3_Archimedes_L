.class public Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;
.source "EffectBitmapTexture.java"


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    .line 13
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 22
    const-string v0, "EffectBitmapTexture"

    const-string v1, "glBlendFunc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 24
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 25
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/EffectBitmapTexture;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;IIII)V

    .line 26
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
