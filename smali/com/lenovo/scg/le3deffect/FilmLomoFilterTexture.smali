.class public Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "FilmLomoFilterTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    .line 9
    return-void
.end method

.method private native ConstructC(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)J
.end method

.method private native SetFboSizeC(II)V
.end method

.method private native SetInputC(JIIIZ)V
.end method

.method private native SetSourceDataC(J[BI)V
.end method

.method private native SetYuvDataC(J[BII)Z
.end method

.method private native SetYuvDataHanldeC(JJII)Z
.end method


# virtual methods
.method protected ConstructC()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->ConstructC(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected native DestructC(J)V
.end method

.method public DoEffect()I
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->DoEffectC(J)I

    move-result v0

    return v0
.end method

.method protected native DoEffectC(J)I
.end method

.method protected native SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public setData(JII)Z
    .locals 9

    .prologue
    .line 19
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetYuvDataHanldeC(JJII)Z

    move-result v0

    return v0
.end method

.method public setData([BII)Z
    .locals 7

    .prologue
    .line 50
    const-string v0, "FilmLomoFilterTexture"

    const-string v1, "FilmLomoFilterTexture setData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetYuvDataC(J[BII)Z

    move-result v0

    return v0
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 82
    return-void
.end method

.method public setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 33
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetFboSizeC(II)V

    .line 58
    return-void
.end method

.method public setInput(IIIZ)V
    .locals 8

    .prologue
    .line 14
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetInputC(JIIIZ)V

    .line 15
    return-void
.end method

.method public setSourceData([B)V
    .locals 3

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->m_handleC:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;->SetSourceDataC(J[BI)V

    .line 37
    return-void
.end method