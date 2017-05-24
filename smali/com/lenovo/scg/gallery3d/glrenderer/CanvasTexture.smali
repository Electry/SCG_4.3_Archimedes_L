.class abstract Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;
.super Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/glrenderer/UploadedTexture;-><init>()V

    .line 33
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->setSize(II)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->setOpaque(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    invoke-static {}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 40
    iget v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mHeight:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 42
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 43
    return-object v0
.end method
