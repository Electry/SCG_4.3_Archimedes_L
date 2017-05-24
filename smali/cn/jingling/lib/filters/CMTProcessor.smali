.class public Lcn/jingling/lib/filters/CMTProcessor;
.super Ljava/lang/Object;
.source "CMTProcessor.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string/jumbo v0, "mtprocessor-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native BlueEdg([I[I[III)V
.end method

.method public static native ColorPencil([I[I[III)V
.end method

.method public static native HalfTone([III[IIII)V
.end method

.method public static native HopeEffect([III)V
.end method

.method public static native OilPainting([I[I[III)V
.end method

.method public static native Pencil([I[I[III)V
.end method

.method public static native Posterize([IIII)V
.end method

.method public static native WaterColor([I[III)V
.end method

.method public static native alphaCompositeEffect([I[IIII)V
.end method

.method public static native autoColor([IIIII)V
.end method

.method public static native autoContrast([IIIII)V
.end method

.method public static native autoLevels([III)V
.end method

.method public static native blueEffect([I[I[I[III)V
.end method

.method public static native blur([IIIIII)V
.end method

.method public static native blurBackgroundEffectByCircle([IIIIIII)V
.end method

.method public static native blurBackgroundEffectByLine([IIIIIIIF)V
.end method

.method public static native brightEffect([IIII)V
.end method

.method public static native colorBurn([I[III)V
.end method

.method public static native colorLevel([IIIIFIII)V
.end method

.method public static native computeHueExpectationAndVariance([III)Lcn/jingling/lib/filters/ExpVar;
.end method

.method public static native contrastEffect([IIII)V
.end method

.method public static native coverEffect([I[III)V
.end method

.method public static native curveEffect([I[I[I[III)V
.end method

.method public static native darken([I[III)V
.end method

.method public static native dlomo([IIIIII)V
.end method

.method public static native dreamy([IIII)V
.end method

.method public static native emissionEffect([III)V
.end method

.method public static native equlizeHist([III)V
.end method

.method public static native etocEffect([III)V
.end method

.method public static native eyeBrighten([III)V
.end method

.method public static native eyeEnlarge([IIIIIIF)V
.end method

.method public static native eyeEnlargeWithTags([I[III[I[I[I[FI)V
.end method

.method public static native fastAverageBlur([IIII)V
.end method

.method public static native fastAverageBlurWithThreshold([IIIII)V
.end method

.method public static native fastAverageBlurWithThresholdAndWeight([IIIIII)V
.end method

.method public static native fastAverageBlurWithThresholdWeightSkinDetection([IIIIIIIIIIII)V
.end method

.method public static native gaussBlur([IIIIF)V
.end method

.method public static native getDynamicFrame([I[IIIII)V
.end method

.method public static native gray([III)V
.end method

.method public static native lightenEffect([I[III)V
.end method

.method public static native linearBurn([I[IIII)V
.end method

.method public static native linearDodgeEffect([I[III)V
.end method

.method public static native llomo([IIIIII)V
.end method

.method public static native lomo([IIIIIII)V
.end method

.method public static native mergeSelection([I[I[III)V
.end method

.method public static native mergeWeight([I[IIII)V
.end method

.method public static native multiplyAlphaEffect([I[IIIIII)V
.end method

.method public static native multiplyEffect([I[III)V
.end method

.method public static native normalization([IIIII)V
.end method

.method public static native overlayAlphaEffect([I[IIII)V
.end method

.method public static native overlayEffect([I[III)V
.end method

.method public static native popstyle([IIII)V
.end method

.method public static native postivefilterEffect([III)V
.end method

.method public static native progressiveLineInitialize(IIIII)V
.end method

.method public static native progressiveLineProcess([II)[I
.end method

.method public static native progressiveRelease()V
.end method

.method public static native redeyeEffect([IIIIII)V
.end method

.method public static native relief([IIII)V
.end method

.method public static native rsCoverageEffect([I[IIIII)V
.end method

.method public static native rsLinearBurn([I[IIIIII)V
.end method

.method public static native rsMultiplyAlphaEffect([I[IIII)V
.end method

.method public static native rsMultiplyEffect([I[IIIII)V
.end method

.method public static native rsOverlayAlphaEffect([I[IIIIII)V
.end method

.method public static native rsOverlayEffect([I[IIIII)V
.end method

.method public static native rsScreenEffect([I[IIIII)V
.end method

.method public static native screenEffect([I[III)V
.end method

.method public static native screenWithLimitedLayer([I[IIIII)V
.end method

.method public static native setHopeEffectTexturePixels([III)V
.end method

.method public static native setVisibleArea([III[II)V
.end method

.method public static native sharpenEffect([IIII)V
.end method

.method public static native singleColorEffect([III[FFFFFF)V
.end method

.method public static native sketchEffect([III)V
.end method

.method public static native skinSmoothPointEffect([IIIIII)V
.end method

.method public static native skinWhitePointEffect([I[IIIIII)V
.end method

.method public static native skinWhiteTeethPointEffect([I[IIIIII)V
.end method

.method public static native smileWholeMouth([IIIIIIIF)V
.end method

.method public static native smoothEffect([III)V
.end method

.method public static native softlightEffect([I[III)V
.end method

.method public static native thinEffect([IIIIIIIIFI)V
.end method

.method public static native thinEffectAuto([IIIIIIII)V
.end method

.method public static native thinEffectWholeFace([IIIIIIIF)V
.end method

.method public static native transToGray([I[BII)V
.end method

.method public static native transToReversedBGR([I[BII)V
.end method

.method public static native unsharpEffect([I[IIIIIF)V
.end method

.method public static native usmProcessProgressive([IIIII)[I
.end method

.method public static native yuv2rgbBitmap([BII[I)V
.end method

.method public static native yuv2rgbResize([BII[BIII)V
.end method

.method public static native yuv420sp2rgb([B[BII)V
.end method
