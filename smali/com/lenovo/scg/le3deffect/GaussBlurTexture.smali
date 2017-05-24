.class public Lcom/lenovo/scg/le3deffect/GaussBlurTexture;
.super Lcom/lenovo/scg/le3deffect/EffectTexture2D;
.source "GaussBlurTexture.java"


# instance fields
.field public mBlurRect:[F

.field private mTexID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;-><init>()V

    return-void
.end method

.method private native SetBlurCoefC(JI)V
.end method

.method private native SetBlurRectC(J[F)V
.end method

.method private native SetInputC(JIIIZ)V
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

.method public setBlurCoef(I)V
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->m_handleC:J

    invoke-direct {p0, v0, v1, p1}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->SetBlurCoefC(JI)V

    .line 30
    return-void
.end method

.method public setBlurRect(Landroid/graphics/RectF;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    const/4 v1, 0x2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 41
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->m_handleC:J

    iget-object v2, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mBlurRect:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->SetBlurRectC(J[F)V

    .line 42
    return-void
.end method

.method public setFBOManager(Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mFBOManager:Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .line 71
    return-void
.end method

.method public setFboSize(II)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public setInput(IIIZ)V
    .locals 8

    .prologue
    .line 20
    iput p1, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->mTexID:I

    .line 21
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/scg/le3deffect/GaussBlurTexture;->SetInputC(JIIIZ)V

    .line 22
    return-void
.end method
