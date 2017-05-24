.class public Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;
.super Ljava/lang/Object;
.source "Le3dLiveEffectManager.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

.field private mIsShowEffectList:Z

.field private mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Lcom/lenovo/scg/le3deffect/Le3DEffect;->loadNativeLibs()V

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Le3dLiveEffectManager"

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mIsShowEffectList:Z

    .line 30
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 32
    return-void
.end method


# virtual methods
.method public changeEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 1
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .param p2, "dstType"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p3, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {p1, p2, p3, v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->changeEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)Z

    move-result v0

    return v0
.end method

.method public createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;III)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texWidth"    # I
    .param p3, "texHeight"    # I
    .param p4, "texUnit"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-static {p1, p2, p3, p4, v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory;->createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-result-object v0

    .line 36
    .local v0, "eliveEffect":Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 37
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->init()Z

    .line 38
    return-object v0
.end method

.method public destoryEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;)V
    .locals 1
    .param p1, "eLiveEffect"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->finish()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Finish()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 81
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
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->setInputTex(IIIZ)V

    .line 58
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->doEffect()V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;->getFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public getIsShowEffectList()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsShowEffectList isShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mIsShowEffectList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mIsShowEffectList:Z

    return v0
.end method

.method public setCurrentType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 123
    return-void
.end method

.method public setIsShowEffectList(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->TAG:Ljava/lang/String;

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

    .line 135
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->mIsShowEffectList:Z

    .line 136
    return-void
.end method
