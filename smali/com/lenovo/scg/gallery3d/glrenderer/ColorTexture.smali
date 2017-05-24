.class public Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;
.super Ljava/lang/Object;
.source "ColorTexture.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/glrenderer/Texture;


# instance fields
.field private final mColor:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mColor:I

    .line 34
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 35
    iput v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mHeight:I

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 40
    iget v4, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mWidth:I

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 41
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
    .line 45
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    iget v5, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 46
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "target"    # Landroid/graphics/RectF;

    .prologue
    .line 71
    iget v0, p3, Landroid/graphics/RectF;->left:F

    float-to-int v2, v0

    iget v0, p3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v0

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v4, v0

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 72
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mColor:I

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mWidth:I

    .line 55
    iput p2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/ColorTexture;->mHeight:I

    .line 56
    return-void
.end method
