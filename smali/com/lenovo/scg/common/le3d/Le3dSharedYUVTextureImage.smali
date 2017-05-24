.class public Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;
.super Lcom/lenovo/scg/common/le3d/Le3dYUVImage;
.source "Le3dSharedYUVTextureImage.java"


# instance fields
.field private mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

.field private mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/common/le3d/Le3dYUVImage;)V
    .locals 2
    .param p1, "content"    # Lcom/lenovo/scg/common/le3d/Le3dContext;
    .param p2, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p3, "yuvImageTexture"    # Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 21
    iput-object p2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 22
    iput-object p3, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->setSize(FF)V

    .line 24
    return-void
.end method


# virtual methods
.method public bind()Z
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getYuvTexture()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 30
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 31
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getYuvTexture()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->setSize(FF)V

    .line 33
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getTextureWidth()F

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getTextureHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->setTextureSize(FF)V

    .line 43
    const-string v0, "Le3dSharedYUVTextureImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "Le3dSharedYUVTextureImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getYuvTexture()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "Le3dSharedYUVTextureImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "texW ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getTextureWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "texH ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->mLe3dYUVTexImage:Lcom/lenovo/scg/common/le3d/Le3dYUVImage;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dYUVImage;->getTextureHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/lenovo/scg/common/le3d/Le3dSharedYUVTextureImage;->initCoords()V

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
