.class public Lcom/lenovo/scg/le3deffect/MaskFilterTexture;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "MaskFilterTexture.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    return-void
.end method

.method private native ConstructC(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)J
.end method

.method private native SetDstC(JIIIZ)V
.end method

.method private native SetJpegMaskDataC(J[BII)V
.end method

.method private native SetSourceDataC(J[BII)V
.end method

.method private native SetSrcC(JLandroid/graphics/Bitmap;)I
.end method


# virtual methods
.method protected ConstructC()J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->ConstructC(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected native DestructC(J)V
.end method

.method public DoEffect()I
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->DoEffectC(J)I

    move-result v0

    return v0
.end method

.method protected native DoEffectC(J)I
.end method

.method protected native SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public setDst(IIIZ)V
    .locals 8

    .prologue
    .line 16
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->SetDstC(JIIIZ)V

    .line 17
    return-void
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 23
    return-void
.end method

.method public setFboOut(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I

    .line 31
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setJpegSrc([BI)V
    .locals 7

    .prologue
    .line 44
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    array-length v5, p1

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->SetJpegMaskDataC(J[BII)V

    .line 45
    return-void
.end method

.method public setSourceData([BI)V
    .locals 7

    .prologue
    .line 40
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    array-length v5, p1

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->SetSourceDataC(J[BII)V

    .line 41
    return-void
.end method

.method public setSrc(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/MaskFilterTexture;->SetSrcC(JLandroid/graphics/Bitmap;)I

    .line 9
    return-void
.end method
