.class public Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "Le3DGraphFBOManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    return-void
.end method

.method private native CreateFboManagerC()J
.end method

.method private native GetFboC(JIII)J
.end method

.method private native ReleaseFboC(JJ)V
.end method


# virtual methods
.method protected ConstructC()J
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->CreateFboManagerC()J

    move-result-wide v0

    return-wide v0
.end method

.method protected native DestructC(J)V
.end method

.method public getFbo(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .locals 7

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    iget-wide v2, p0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->m_handleC:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->GetFboC(JIII)J

    move-result-wide v4

    .line 13
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 15
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(IIIJ)V

    .line 17
    :cond_0
    return-object v0
.end method

.method public releaseFbo(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 4

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->m_handleC:J

    invoke-virtual {p1}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->getHandleC()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;->ReleaseFboC(JJ)V

    .line 24
    return-void
.end method
