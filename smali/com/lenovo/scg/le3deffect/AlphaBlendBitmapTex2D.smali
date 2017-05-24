.class public Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "AlphaBlendBitmapTex2D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    return-void
.end method

.method private native SetDrawOffsetC(JF)V
.end method

.method private native SetDstC(JIIIZ)V
.end method

.method private native SetSrcC(JLandroid/graphics/Bitmap;)I
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method protected native DoEffectC(J)I
.end method

.method protected native SetFboOutC(JLcom/lenovo/scg/le3deffect/Le3DFBO;)I
.end method

.method public doBlend()I
    .locals 2

    .prologue
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->m_handleC:J

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->DoEffectC(J)I

    move-result v0

    .line 32
    return v0
.end method

.method public setDrawOffset(F)V
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->SetDrawOffsetC(JF)V

    .line 44
    return-void
.end method

.method public setDst(IIIZ)V
    .locals 8

    .prologue
    .line 24
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->SetDstC(JIIIZ)V

    .line 25
    return-void
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 72
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setSrc(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/AlphaBlendBitmapTex2D;->SetSrcC(JLandroid/graphics/Bitmap;)I

    .line 11
    return-void
.end method
