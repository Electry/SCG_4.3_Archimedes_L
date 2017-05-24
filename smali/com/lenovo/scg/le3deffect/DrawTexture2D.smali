.class public Lcom/lenovo/scg/le3deffect/DrawTexture2D;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "DrawTexture2D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    .line 10
    return-void
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
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method public DoEffect()I
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->DoEffectC(J)I

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
    .line 27
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->SetYuvDataHanldeC(JJII)Z

    move-result v0

    return v0
.end method

.method public setData([BII)Z
    .locals 7

    .prologue
    .line 20
    const-string v0, "DrawTexture2D"

    const-string v1, "DrawTexture2D setData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->SetYuvDataC(J[BII)Z

    move-result v0

    return v0
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 70
    return-void
.end method

.method public setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 41
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public setInput(IIIZ)V
    .locals 8

    .prologue
    .line 15
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->SetInputC(JIIIZ)V

    .line 16
    return-void
.end method

.method public setSourceData([B)V
    .locals 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->m_handleC:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;->SetSourceDataC(J[BI)V

    .line 45
    return-void
.end method
