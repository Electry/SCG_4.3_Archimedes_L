.class public Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "CountryLomoFilterTexture.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    .line 7
    const-string v0, "CountryLomoFilterTexture"

    iput-object v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->TAG:Ljava/lang/String;

    .line 11
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
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->ConstructC(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected native DestructC(J)V
.end method

.method public DoEffect()I
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->DoEffectC(J)I

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
    .line 21
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetYuvDataHanldeC(JJII)Z

    move-result v0

    return v0
.end method

.method public setData([BII)Z
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetYuvDataC(J[BII)Z

    move-result v0

    return v0
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 85
    return-void
.end method

.method public setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 35
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetFboSizeC(II)V

    .line 60
    return-void
.end method

.method public setInput(IIIZ)V
    .locals 8

    .prologue
    .line 16
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetInputC(JIIIZ)V

    .line 17
    return-void
.end method

.method public setSourceData([B)V
    .locals 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->m_handleC:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;->SetSourceDataC(J[BI)V

    .line 39
    return-void
.end method
