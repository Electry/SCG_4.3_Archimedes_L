.class public Lcom/lenovo/scg/camera/effect/LiveEffectManager;
.super Ljava/lang/Object;
.source "LiveEffectManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

.field private mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

.field private mIsShowEffectList:Z

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 200
    invoke-static {}, Lcom/lenovo/scg/le3deffect/Le3DEffect;->loadNativeLibs()V

    .line 201
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "LiveEffectManager"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mIsShowEffectList:Z

    .line 25
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 27
    return-void
.end method


# virtual methods
.method public changeEffectFrame(Lcom/lenovo/scg/camera/effect/LiveEffectFrame;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 1
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
    .param p2, "dstType"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p3, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 120
    invoke-virtual {p1, p2, p3}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->changeEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    return v0
.end method

.method public createFBO(II)Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 71
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(II)V

    .line 72
    .local v0, "fbo":Lcom/lenovo/scg/le3deffect/Le3DFBO;
    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 73
    return-object v0
.end method

.method public createLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;II)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .locals 6
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 41
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;-><init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 42
    .local v0, "eLiveEffect":Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v1}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 44
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 47
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->init()Z

    .line 48
    return-object v0
.end method

.method public createLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IILcom/lenovo/scg/le3deffect/Le3DFBO;)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .locals 7
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 53
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;-><init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 54
    .local v0, "eLiveEffect":Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v1}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 56
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 59
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->init()Z

    .line 60
    return-object v0
.end method

.method public createLiveEffectFrame(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/le3deffect/Le3DFBO;)Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 36
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v0, p1, p2, v1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;-><init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/le3deffect/Le3DFBO;Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    return-object v0
.end method

.method public destoryEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;)V
    .locals 1
    .param p1, "effectFrame"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->finish()V

    .line 140
    const/4 p1, 0x0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Finish()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 147
    :cond_1
    return-void
.end method

.method public destoryEffect(Lcom/lenovo/scg/camera/effect/LiveEffectFrame;)V
    .locals 1
    .param p1, "effectFrame"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrame;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->finish()V

    .line 128
    const/4 p1, 0x0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Finish()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 135
    :cond_1
    return-void
.end method

.method public doLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .param p2, "textureId"    # I
    .param p3, "texWidth"    # I
    .param p4, "texHeight"    # I
    .param p5, "IsExt"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setInputTex(IIIZ)V

    .line 83
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->doEffect()V

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    return-object v0
.end method

.method public doLiveEffect(Lcom/lenovo/scg/camera/effect/LiveEffectFrame;IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
    .param p2, "textureId"    # I
    .param p3, "texWidth"    # I
    .param p4, "texHeight"    # I
    .param p5, "IsExt"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->setInputTex(IIIZ)V

    .line 92
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->doEffect()V

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->getFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    return-object v0
.end method

.method public doLiveEffect(Lcom/lenovo/scg/camera/effect/LiveEffectFrame;[BII)[B
    .locals 4
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
    .param p2, "data"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "eRet":[B
    if-eqz p1, :cond_0

    .line 101
    array-length v1, p2

    mul-int v2, p3, p4

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_1

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->TAG:Ljava/lang/String;

    const-string v2, "doLiveEffect yuv"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1, p2, p3, p4}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->setYUVData([BII)V

    .line 104
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->doEffect()V

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->getJPEGData()[B

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLiveEffect yuv eRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->setJpegData([B)V

    .line 107
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->doEffect()V

    goto :goto_0
.end method

.method public getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public getIsShowEffectList()Z
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsShowEffectList isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mIsShowEffectList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mIsShowEffectList:Z

    return v0
.end method

.method public setCurrentType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 171
    return-void
.end method

.method public setEffectFrameFBO(Lcom/lenovo/scg/camera/effect/LiveEffectFrame;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 0
    .param p1, "frame"    # Lcom/lenovo/scg/camera/effect/LiveEffectFrame;
    .param p2, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/camera/effect/LiveEffectFrame;->setFBO(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setIsShowEffectList(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsShowEffectList isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/LiveEffectManager;->mIsShowEffectList:Z

    .line 184
    return-void
.end method
