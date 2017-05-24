.class public Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory;
.super Ljava/lang/Object;
.source "Le3dLiveEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static createLe3dEffect(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;
    .locals 6
    .param p0, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .param p1, "texWidth"    # I
    .param p2, "texHeight"    # I
    .param p3, "texUnit"    # I
    .param p4, "fboManager"    # Lcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;

    .prologue
    .line 20
    new-instance v0, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffect;-><init>(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;IIILcom/lenovo/scg/le3deffect/Le3DGraphFBOManager;)V

    return-object v0
.end method
