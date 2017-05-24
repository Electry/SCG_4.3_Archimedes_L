.class public Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;
.super Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;
.source "CLeImageTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$1;,
        Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "CLeImageTransformer"

    sput-object v0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->TAG:Ljava/lang/String;

    .line 92
    const-string v0, "LeCSC"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    const-string v0, "Lejpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 94
    const-string v0, "Leskia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 95
    const-string v0, "LeImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    const-string v0, "LeImageJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lenovo/scg/LeJniHelper/ICreateDestroyInNative;-><init>()V

    .line 10
    return-void
.end method

.method private static ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;)I
    .locals 3

    .prologue
    const/16 v0, 0x5a

    .line 20
    .line 21
    sget-object v1, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$1;->$SwitchMap$com$lenovo$scg$LeImageJI$CLeImageTransformer$eTransformerType:[I

    invoke-virtual {p0}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 35
    :goto_0
    :pswitch_0
    return v0

    .line 28
    :pswitch_1
    const/16 v0, 0x10e

    .line 29
    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private native RotateBufferC(J[BIII[B)Z
.end method


# virtual methods
.method protected native ConstructC()J
.end method

.method protected native DestructC(J)V
.end method

.method public RotateYUVBuffer([BIILcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;[B)Z
    .locals 9

    .prologue
    .line 47
    if-nez p5, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->m_handleC:J

    invoke-static {p4}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->ConvertTransformTypeToInt(Lcom/lenovo/scg/LeImageJI/CLeImageTransformer$eTransformerType;)I

    move-result v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/lenovo/scg/LeImageJI/CLeImageTransformer;->RotateBufferC(J[BIII[B)Z

    move-result v0

    goto :goto_0
.end method
