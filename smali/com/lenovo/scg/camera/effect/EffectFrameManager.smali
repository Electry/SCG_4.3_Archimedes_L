.class public Lcom/lenovo/scg/camera/effect/EffectFrameManager;
.super Ljava/lang/Object;
.source "EffectFrameManager.java"


# instance fields
.field private mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

.field private mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

.field private mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

.field private mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

.field private mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

.field private mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

.field private mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    .line 31
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->Init()Z

    .line 34
    return-void
.end method


# virtual methods
.method public ReadPicFBO([BIII)[B
    .locals 5
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    const/4 v4, 0x0

    .line 144
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ReadPicFBO width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mEffectManager.getCurrentType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "eRetByte":[B
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-nez v1, :cond_8

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setCurrentGraphType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 152
    if-le p2, p3, :cond_4

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v1, :cond_2

    .line 154
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 161
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    .line 246
    :cond_1
    :goto_1
    return-object v0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 157
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    goto :goto_0

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v1, :cond_6

    .line 169
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 174
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 180
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_7

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_5

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 172
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    goto :goto_2

    .line 194
    :cond_8
    invoke-static {}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->getCurrentGraphType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->destoryEffectGraph(Lcom/lenovo/scg/le3deffect/EffectTexture2D;)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setCurrentGraphType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 201
    :cond_9
    if-le p2, p3, :cond_d

    .line 202
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v1, :cond_b

    .line 203
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 210
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_c

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_a

    .line 205
    :cond_c
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHorJpegFBO.getWidth() != width || mHorJpegFBO.getHeight() != height HorFBO width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v3}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v3}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 208
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    goto :goto_3

    .line 219
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v1, :cond_f

    .line 220
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 227
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setSourceData([B)V

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 233
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    goto/16 :goto_1

    .line 221
    :cond_f
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_10

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_e

    .line 222
    :cond_10
    const-string/jumbo v1, "tyl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVertJpegFBO.getWidth() != width || mVertJpegFBO.getHeight() != height VertFBO width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v3}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v3}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 225
    invoke-static {p2, p3, v4}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    goto :goto_4
.end method

.method public ReadYUVFBO([BIIIZ)[B
    .locals 7
    .param p1, "yuvData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I
    .param p5, "isOneshot"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 250
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ReadYUVFBO width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mEffectManager.getCurrentType() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, "eRetByte":[B
    if-le p2, p3, :cond_3

    .line 254
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v2, :cond_0

    .line 255
    invoke-static {p2, p3, v5}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 259
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 260
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 261
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 262
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setCurrentGraphType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 264
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2, p1, p2, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setData([BII)Z

    .line 265
    const/4 p1, 0x0

    .line 266
    if-eqz p5, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-ne v2, v3, :cond_1

    .line 268
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    check-cast v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;

    move-object v1, v2

    check-cast v1, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;

    .line 269
    .local v1, "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    rem-int/lit16 v2, p4, 0xb4

    if-nez v2, :cond_2

    .line 270
    sget-object v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalTop:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;->setMirrorOrientation(Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;)V

    .line 275
    .end local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 276
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    .line 277
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 278
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 308
    :goto_1
    return-object v0

    .line 272
    .restart local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    :cond_2
    sget-object v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorHorizontal:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;->setMirrorOrientation(Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;)V

    goto :goto_0

    .line 280
    .end local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-nez v2, :cond_4

    .line 281
    invoke-static {p2, p3, v5}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 284
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 285
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFboManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    .line 286
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Init()Z

    .line 287
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    iget-object v3, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 288
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->setCurrentGraphType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 290
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2, p1, p2, p3}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setData([BII)Z

    .line 291
    const/4 p1, 0x0

    .line 292
    if-eqz p5, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Mirror:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    if-ne v2, v3, :cond_5

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    check-cast v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;

    move-object v1, v2

    check-cast v1, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;

    .line 295
    .restart local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    rem-int/lit16 v2, p4, 0xb4

    if-nez v2, :cond_6

    .line 296
    sget-object v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorVerticalTop:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;->setMirrorOrientation(Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;)V

    .line 301
    .end local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->doEffect()I

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getPixels()[B

    move-result-object v0

    .line 303
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-virtual {v2}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 304
    iput-object v6, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    goto :goto_1

    .line 298
    .restart local v1    # "texture":Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;
    :cond_6
    sget-object v2, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;->MirrorHorizontal:Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;->setMirrorOrientation(Lcom/lenovo/scg/le3deffect/MirrorFilterTexture$MirrorOrientation;)V

    goto :goto_2
.end method

.method public changeScreenEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z
    .locals 2
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v0, v1, p1, p2}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->changeEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Z

    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->setCurrentType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 72
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public destoryEffect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->destoryEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    invoke-static {v0}, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->destoryEffectGraph(Lcom/lenovo/scg/le3deffect/EffectTexture2D;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Finish()V

    .line 56
    :cond_3
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 57
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mJpegEffect:Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .line 58
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mHorJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 59
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 60
    iput-object v2, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mVertJpegFBO:Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .line 62
    return-void
.end method

.method public doPreviewEffect(IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 6
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "IsExt"    # Z

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v0, "EffectFrameManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectFrameManager create  width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;III)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 101
    const-string v0, "EffectFrameManager"

    const-string v1, "EffectFrameManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->doLiveEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;IIIZ)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mFBOTexture:Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    return-object v0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    invoke-virtual {v0, v1, p2, p3, v3}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;III)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mLiveEffect:Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    .line 104
    const-string v0, "EffectFrameManager"

    const-string v1, "EffectFrameManager create  2222"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentEffectType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getCurrentType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    move-result-object v0

    return-object v0
.end method

.method public getEffectShowOrHideState()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->getIsShowEffectList()Z

    move-result v0

    return v0
.end method

.method public sendEffectSaveFinish(Landroid/os/Handler;[B)V
    .locals 5
    .param p1, "effectHandler"    # Landroid/os/Handler;
    .param p2, "rgbaData"    # [B

    .prologue
    .line 121
    const-string/jumbo v2, "tyl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sendEffectSaveFinish rgbaData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 124
    const-string v2, "EFFECT_RGBA_DATA"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 126
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 127
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method public setCurrentEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->setCurrentType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 88
    return-void
.end method

.method public setEffectHideOrShowState(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/EffectFrameManager;->mEffectManager:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectManager;->setIsShowEffectList(Z)V

    .line 80
    return-void
.end method
