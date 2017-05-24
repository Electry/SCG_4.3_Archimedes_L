.class public Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;
.super Lcom/lenovo/scg/common/le3d/Le3dImage;
.source "Le3dShareTextureImage.java"


# instance fields
.field private mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/common/le3d/Le3dImage;)V
    .locals 2
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "le3dImage"    # Lcom/lenovo/scg/common/le3d/Le3dImage;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 13
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 14
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setSize(FF)V

    .line 15
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mTextureId:I

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getTextureId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getTextureId()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mTextureId:I

    .line 20
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mLe3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dImage;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->setSize(FF)V

    .line 21
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->initCoords()V

    .line 23
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->bind()V

    .line 24
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mTextureId:I

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dShareTextureImage;->mTextureId:I

    .line 31
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "needRecycle"    # Z

    .prologue
    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    :cond_0
    return-void
.end method
