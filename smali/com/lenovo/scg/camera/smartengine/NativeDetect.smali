.class public Lcom/lenovo/scg/camera/smartengine/NativeDetect;
.super Ljava/lang/Object;
.source "NativeDetect.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "ivc_codedetection_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native facescenedetect([B[IIIIII[I)I
.end method

.method public static native jniK860InputMo(FJ)I
.end method

.method public static native jniLePhInputBarCode([B[IIIIZ)I
.end method

.method public static native jniLePhInputBiImgTransfer([BIII)I
.end method

.method public static native jniLePhInputCodeDetect([BII[F)I
.end method

.method public static native jniLePhInputCodeDetectGPU([B[IIIIZZ)I
.end method

.method public static native jniLePhInputFeatureExtraction([[F[F[F[F[FII[F)I
.end method

.method public static native jniLePhInputQRCode([B[IIIIIII[IZ[I[I[B[B[B)I
.end method

.method public static native jniaccDiff(FFFFFF)F
.end method

.method public static native jniimgDiff([BIII)J
.end method

.method public static native jnimedianAcc([F)F
.end method

.method public static native jnimedianImgDiff([J)J
.end method

.method public static native scenedetect([BIIII[I)I
.end method
