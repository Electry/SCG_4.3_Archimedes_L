.class public Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
.super Ljava/lang/Object;
.source "Le3dLiveEffect.java"


# instance fields
.field private mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

.field private mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mIsNeedInitFBO:Z

.field private mTextureUnit:I

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texWidth"    # I
    .param p3, "texHeight"    # I
    .param p4, "texUnit"    # I
    .param p5, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p2, p3, p4}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(III)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 25
    invoke-static {p1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 26
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 27
    iput p4, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mTextureUnit:I

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p5}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mIsNeedInitFBO:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texWidth"    # I
    .param p3, "texHeight"    # I
    .param p4, "texUnit"    # I
    .param p5, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;
    .param p6, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p6, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 34
    invoke-static {p1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 35
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 36
    iput p4, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mTextureUnit:I

    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p5}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mIsNeedInitFBO:Z

    .line 39
    return-void
.end method


# virtual methods
.method public changeEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)Z
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p3, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "ret":Z
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "old type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-eq p1, v1, :cond_0

    .line 147
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 148
    const-string/jumbo v1, "tyl"

    const-string v2, "changeEffect default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 151
    invoke-static {p1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 154
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 155
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setInput(IIIZ)V

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 158
    :cond_0
    return v0
.end method

.method public doEffect()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 61
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 74
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 78
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_2

    .line 82
    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 84
    :cond_2
    return-void
.end method

.method public getEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public getFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    return-object v0
.end method

.method public getFbo()Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    return-object v0
.end method

.method public getFboTextureHeight()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFboTextureId()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getTexture()I

    move-result v0

    return v0
.end method

.method public getFboTextureUnit()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getTexUnitID()I

    move-result v0

    return v0
.end method

.method public getFboTextureWidth()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 44
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mIsNeedInitFBO:Z

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    move-result v0

    .line 49
    :goto_0
    new-instance v1, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;-><init>(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 50
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 53
    :cond_0
    return v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readFbo()[B
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getJpegData()[B

    move-result-object v0

    return-object v0
.end method

.method public setColor(Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;)V
    .locals 1
    .param p1, "color"    # Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setColor(Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;)V

    .line 128
    return-void
.end method

.method public setData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setData([BII)Z

    .line 65
    return-void
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 1
    .param p1, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 69
    return-void
.end method

.method public setInputTex(IIIZ)V
    .locals 1
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "IsExt"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setInput(IIIZ)V

    .line 117
    return-void
.end method

.method public setSourceData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->mEffectGraphFilter:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 123
    :cond_0
    return-void
.end method
