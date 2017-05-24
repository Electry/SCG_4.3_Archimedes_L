.class public Lcom/baidu/speech/easr/easrNativeJni;
.super Ljava/lang/Object;
.source "easrNativeJni.java"


# static fields
.field public static final CODE_ERROR:I = -0x1

.field public static final CODE_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v0, "scg_mmtScore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "scg_bdEASRAndroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BuildNet(ILjava/lang/String;)I
.end method

.method public static native BuildSlot(Ljava/lang/String;I)I
.end method

.method public static native Decode(I[SI[[BIZ)I
.end method

.method public static native Free()I
.end method

.method public static native GetImmeSentence(I)Ljava/lang/String;
.end method

.method public static native GetLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)I
.end method

.method public static native GetTestAuthorize()I
.end method

.method public static native GetVadEd(I)I
.end method

.method public static native GetVadSt(I)I
.end method

.method public static native Initial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native InitialDecoder(IIID)I
.end method

.method public static native InitialVAD(IFF)I
.end method

.method public static native LoadRes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native ReadLM(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method public static native ReadSlot(Ljava/lang/String;)I
.end method

.method public static native ReadSlotLink(Ljava/lang/String;)I
.end method

.method public static native ResetDecoder(I)I
.end method

.method public static native ResetVAD(I)I
.end method

.method public static native SetCurrNetTreeID(III)I
.end method

.method public static native SetLogLevel(I)I
.end method

.method public static native VADDetect(I[SIZ)I
.end method

.method public static native VerifyLicense(Landroid/content/Context;Ljava/lang/String;[BI[B)I
.end method
