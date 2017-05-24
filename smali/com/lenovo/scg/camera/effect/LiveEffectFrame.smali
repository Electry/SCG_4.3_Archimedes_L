.class public Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
.super Ljava/lang/Object;
.source "LiveEffectFrame.java"


# instance fields
.field private mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

.field private mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

.field private mGraphFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/le3deffect/Le3DFBO;Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .param p3, "manager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 23
    iput-object p3, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mGraphFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 24
    invoke-static {p1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 27
    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 29
    iput-object p2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 35
    :cond_0
    return-void
.end method

.method private setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 1
    .param p1, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 50
    return-void
.end method


# virtual methods
.method public changeEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 6
    .param p1, "NewType"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "eRet":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-eq p1, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 115
    invoke-static {p1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 116
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mGraphFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 117
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 118
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 119
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setInput(IIIZ)V

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0
.end method

.method public doEffect()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 54
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 93
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    if-eqz v0, :cond_1

    .line 97
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 99
    :cond_1
    return-void
.end method

.method public getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public getFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    return-object v0
.end method

.method public getJPEGData()[B
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getJpegData()[B

    move-result-object v0

    return-object v0
.end method

.method public getRGBData()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    return-object v0
.end method

.method public setFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    .line 45
    :cond_0
    return-void
.end method

.method public setInputTex(IIIZ)V
    .locals 1
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "IsExt"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setInput(IIIZ)V

    .line 67
    return-void
.end method

.method public setJpegData([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 63
    return-void
.end method

.method public setYUVData([BII)V
    .locals 1
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setData([BII)Z

    .line 59
    return-void
.end method
