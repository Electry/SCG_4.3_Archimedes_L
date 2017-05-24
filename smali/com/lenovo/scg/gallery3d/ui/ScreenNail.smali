.class public interface abstract Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
.super Ljava/lang/Object;
.source "ScreenNail.java"


# virtual methods
.method public abstract SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
.end method

.method public abstract draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
.end method

.method public abstract draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.end method

.method public abstract getGaussBlurFboTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getTransformMatrix()[F
.end method

.method public abstract getWidth()I
.end method

.method public abstract noDraw()V
.end method

.method public abstract recycle()V
.end method
