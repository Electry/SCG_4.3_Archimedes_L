.class public Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Utils;
.super Ljava/lang/Object;
.source "GLES20Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLES20Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readCurrentFBO(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "rcClip"    # Landroid/graphics/Rect;

    .prologue
    .line 35
    const/4 v7, 0x0

    .line 36
    .local v7, "bmpOut":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 39
    if-eqz v7, :cond_0

    .line 41
    const/4 v0, 0x4

    new-array v8, v0, [I

    .line 42
    .local v8, "vViewPort":[I
    const/16 v0, 0xba2

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 43
    const-string v0, "glGetIntegerv"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 45
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    iget v0, p0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x3

    aget v1, v8, v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 52
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 57
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "vViewPort":[I
    :cond_0
    return-object v7
.end method

.method public static readCurrentFBO(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "bmpOut"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    const/4 v1, 0x4

    new-array v7, v1, [I

    .line 19
    .local v7, "vViewPort":[I
    const/16 v1, 0xba2

    invoke-static {v1, v7, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 20
    const-string v1, "glGetIntegerv"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x2

    aget v2, v7, v1

    .line 22
    .local v2, "width":I
    const/4 v1, 0x3

    aget v3, v7, v1

    .line 23
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 25
    mul-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 26
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 27
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->checkGlError(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 31
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "vViewPort":[I
    :cond_0
    return-void
.end method
