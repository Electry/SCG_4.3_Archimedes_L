.class public Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;
.super Ljava/lang/Object;
.source "Le3dEffectGraphManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager$1;
    }
.end annotation


# static fields
.field public static mEffectGraphType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->mEffectGraphType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static createEffectGraph(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    .locals 3
    .param p0, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 10
    const/4 v0, 0x0

    .line 11
    .local v0, "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    sget-object v1, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager$1;->$SwitchMap$com$lenovo$scg$camera$effect$Le3dLiveEffectFactory$Type:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance v0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;-><init>()V

    .line 65
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    :goto_0
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lcom/lenovo/scg/le3deffect/LomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/LomoFilterTexture;-><init>()V

    .line 14
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 16
    :pswitch_1
    new-instance v0, Lcom/lenovo/scg/le3deffect/SepiaFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/SepiaFilterTexture;-><init>()V

    .line 17
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 19
    :pswitch_2
    new-instance v0, Lcom/lenovo/scg/le3deffect/NegativeFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/NegativeFilterTexture;-><init>()V

    .line 20
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 22
    :pswitch_3
    new-instance v0, Lcom/lenovo/scg/le3deffect/GrayFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/GrayFilterTexture;-><init>()V

    .line 23
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 25
    :pswitch_4
    new-instance v0, Lcom/lenovo/scg/le3deffect/SketchFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/SketchFilterTexture;-><init>()V

    .line 26
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 28
    :pswitch_5
    new-instance v0, Lcom/lenovo/scg/le3deffect/DrawTexture2D;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/DrawTexture2D;-><init>()V

    .line 29
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 31
    :pswitch_6
    new-instance v0, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/MirrorFilterTexture;-><init>()V

    .line 32
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 34
    :pswitch_7
    new-instance v0, Lcom/lenovo/scg/le3deffect/VignetteFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/VignetteFilterTexture;-><init>()V

    .line 35
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 37
    :pswitch_8
    new-instance v0, Lcom/lenovo/scg/le3deffect/ComicFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/ComicFilterTexture;-><init>()V

    .line 38
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 40
    :pswitch_9
    new-instance v0, Lcom/lenovo/scg/le3deffect/MapleLomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/MapleLomoFilterTexture;-><init>()V

    .line 41
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 43
    :pswitch_a
    new-instance v0, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/FilmLomoFilterTexture;-><init>()V

    .line 44
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 47
    :pswitch_b
    new-instance v0, Lcom/lenovo/scg/le3deffect/MemoryLomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/MemoryLomoFilterTexture;-><init>()V

    .line 48
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 51
    :pswitch_c
    new-instance v0, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/CountryLomoFilterTexture;-><init>()V

    .line 52
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 55
    :pswitch_d
    new-instance v0, Lcom/lenovo/scg/le3deffect/VelviaLomoFilterTexture;

    .end local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    invoke-direct {v0}, Lcom/lenovo/scg/le3deffect/VelviaLomoFilterTexture;-><init>()V

    .line 56
    .restart local v0    # "effectGraphFilter":Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static createFBO(III)Lcom/lenovo/scg/le3deffect/Le3DFBO;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "textureUnitId"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/lenovo/scg/le3deffect/Le3DFBO;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/le3deffect/Le3DFBO;-><init>(III)V

    .line 81
    .local v0, "fbo":Lcom/lenovo/scg/le3deffect/Le3DFBO;
    invoke-virtual {v0}, Lcom/lenovo/scg/le3deffect/Le3DFBO;->Init()Z

    .line 82
    return-object v0
.end method

.method public static destoryEffectGraph(Lcom/lenovo/scg/le3deffect/EffectTexture2D;)V
    .locals 0
    .param p0, "effectGraph"    # Lcom/lenovo/scg/le3deffect/EffectTexture2D;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->Finish()V

    .line 96
    const/4 p0, 0x0

    .line 98
    :cond_0
    return-void
.end method

.method public static getCurrentGraphType()Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->mEffectGraphType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    return-object v0
.end method

.method public static setCurrentGraphType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V
    .locals 0
    .param p0, "type"    # Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .prologue
    .line 114
    sput-object p0, Lcom/lenovo/scg/camera/effect/Le3dEffectGraphManager;->mEffectGraphType:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 115
    return-void
.end method

.method public static setFBO(Lcom/lenovo/scg/le3deffect/EffectTexture2D;Lcom/lenovo/scg/le3deffect/Le3DFBO;)V
    .locals 0
    .param p0, "effectGraph"    # Lcom/lenovo/scg/le3deffect/EffectTexture2D;
    .param p1, "fbo"    # Lcom/lenovo/scg/le3deffect/Le3DFBO;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/le3deffect/EffectTexture2D;->setOutput(Lcom/lenovo/scg/le3deffect/Le3DFBO;)V

    .line 111
    return-void
.end method
