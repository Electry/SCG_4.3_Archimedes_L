.class public Lcom/lenovo/scg/le3deffect/ColorFilterTexture;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "ColorFilterTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    .line 9
    return-void
.end method

.method private native SetYuvDataC(J[BII)Z
.end method

.method private native YUVConstructC()J
.end method

.method private native YUVDestructC(J)V
.end method


# virtual methods
.method protected ConstructC()J
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->YUVConstructC()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    .line 27
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    return-wide v0
.end method

.method protected DestructC(J)V
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->YUVDestructC(J)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    .line 34
    return-void
.end method

.method public DoEffect()I
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->DoEffectC(J)I

    move-result v0

    return v0
.end method

.method protected native DoEffectC(J)I
.end method

.method protected native SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public setData([BII)Z
    .locals 7

    .prologue
    .line 13
    const-string v0, "ColorFilter"

    const-string v1, "ColorFilterTexture setData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->SetYuvDataC(J[BII)Z

    move-result v0

    return v0
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 59
    return-void
.end method

.method public setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/ColorFilterTexture;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 38
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
