.class public abstract Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "EffectTexture2D.java"


# instance fields
.field protected mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract DoEffectC(J)I
.end method

.method protected abstract SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public doEffect()I
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->DoEffectC(J)I

    move-result v0

    return v0
.end method

.method public setColor(Lcom/lenovo/scg/le3deffect/EffectColor$LeColor;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public setData(JII)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public setData([BII)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
.end method

.method public abstract setFboSize(II)V
.end method

.method public setInput(IIIZ)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "ColorFilter"

    const-string v1, "EffectTexture2D setInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 23
    return-void
.end method

.method public setSourceData([B)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
