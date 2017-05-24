.class public Lcn/jingling/lib/filters/SmoothSkinProcessor;
.super Ljava/lang/Object;
.source "SmoothSkinProcessor.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "mtprocessor-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BEEPSHorizontalVertical([DII)V
.end method

.method public static native BEEPSVerticalHorizontal([DII)V
.end method

.method public static native Bilateral([IIIIII)V
.end method

.method public static native BrightEyes([IIIIIIII)V
.end method

.method public static native CLAHERGB3([IIIII)V
.end method

.method public static native ColorTemperature([I[III)I
.end method

.method public static native HDR([I[I[III)V
.end method

.method public static native HDRsimple([IIIII)V
.end method

.method public static native InitializeCircle(IIIIII[IIII)V
.end method

.method public static native Kirsch([IIII)V
.end method

.method public static native LightenDemo([IIIIIII)I
.end method

.method public static native LocaEnhanceRGB([IIIII)V
.end method

.method public static native MSRCR([III)V
.end method

.method public static native NightGenerate([[I[IIII)V
.end method

.method public static native NightGenerateYUV([[B[IIIIII)V
.end method

.method public static native ShadowHighLight([III)V
.end method

.method public static native ShadowHighLight1([III)V
.end method

.method public static native ShadowHighLight2([III)V
.end method

.method public static native ViberationControl([IIIF)V
.end method

.method public static native ViberationInitial([III)V
.end method

.method public static native ViberationRelease()V
.end method

.method public static native autoContrast([IIIFF)V
.end method

.method public static native beepsDetailRecover([I[I)V
.end method

.method public static native beepsOverlay([I[I)V
.end method

.method public static native beepsSetupAll([III)V
.end method

.method public static native buffingTemplate([IIIII)V
.end method

.method public static native deHaze([IIIIFFF)V
.end method

.method public static native decolorization([II)V
.end method

.method public static native faceBuffing([III[I[I[I)V
.end method

.method public static native faceBuffingBackup([III[I[I[I)V
.end method

.method public static native faceBuffingWeight([III[I[I[II)V
.end method

.method public static native gifProcess([III[IIII)V
.end method

.method public static native produceArea([I[III[I)V
.end method

.method public static native releaseSource()V
.end method

.method public static native sceneEnhance([IIIII[I)V
.end method

.method public static native sceneProcess([III)V
.end method

.method public static native setupDecolorization([III)V
.end method

.method public static native shadowAndHighlight([IIIII)V
.end method

.method public static native skinOverLay([I[III)V
.end method

.method public static native usmProcess([IIIIII)V
.end method

.method public static native whiteBalance([III)V
.end method

.method public static native whiten([IIIIIIII)V
.end method
