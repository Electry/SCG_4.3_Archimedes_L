.class public Lcn/jingling/lib/livefilter/Opengl20JniLib;
.super Ljava/lang/Object;
.source "Opengl20JniLib.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "opengljni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getCoverageFragmentShader()Ljava/lang/String;
.end method

.method private static native getCurveFragmentShader()Ljava/lang/String;
.end method

.method private static native getDarkenFragmentShader()Ljava/lang/String;
.end method

.method private static native getEmptyFragmentShader()Ljava/lang/String;
.end method

.method private static native getGenerateBlueFragmentShader()Ljava/lang/String;
.end method

.method private static native getHighLightFragmentShader()Ljava/lang/String;
.end method

.method private static native getHopeEffectFragmentShader()Ljava/lang/String;
.end method

.method private static native getKirsch1FragmentShader()Ljava/lang/String;
.end method

.method private static native getKirschFragmentShader()Ljava/lang/String;
.end method

.method private static native getKirschVertexShader()Ljava/lang/String;
.end method

.method private static native getLevelsCompressionShader()Ljava/lang/String;
.end method

.method private static native getLinearburnFragmentShader()Ljava/lang/String;
.end method

.method private static native getMultiplyFragmentShader()Ljava/lang/String;
.end method

.method private static native getOverlayFragmentShader()Ljava/lang/String;
.end method

.method private static native getPencilOverLayFragmentShader()Ljava/lang/String;
.end method

.method private static native getPosterizeFragmentShader()Ljava/lang/String;
.end method

.method private static native getRgb2grayFragmentShader()Ljava/lang/String;
.end method

.method private static native getRgbFragmentShader()Ljava/lang/String;
.end method

.method private static native getSaturationFragmentShader()Ljava/lang/String;
.end method

.method private static native getSceneEnhanceFragmentShader()Ljava/lang/String;
.end method

.method private static native getScreenFragmentShader()Ljava/lang/String;
.end method

.method public static getShader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string v0, "curve_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getCurveFragmentShader()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 12
    :cond_0
    const-string v0, "linearburn_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getLinearburnFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_1
    const-string/jumbo v0, "multiply_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getMultiplyFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_2
    const-string/jumbo v0, "overlay_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getOverlayFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_3
    const-string/jumbo v0, "screen_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getScreenFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_4
    const-string v0, "darken_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getDarkenFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_5
    const-string v0, "coverage_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getCoverageFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_6
    const-string/jumbo v0, "smooth_apply_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothApplyFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_7
    const-string/jumbo v0, "smooth_blur_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothBlurFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_8
    const-string/jumbo v0, "smooth_blur_horizontal_vertex_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 29
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothBlurHorizontalVertexShader()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_9
    const-string/jumbo v0, "smooth_blur_vertical_vertex_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 31
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothBlurVerticalVertexShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 32
    :cond_a
    const-string/jumbo v0, "smooth_extract_selection_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothExtractSelectionFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 34
    :cond_b
    const-string/jumbo v0, "smooth_template_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSmoothTemplateFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 36
    :cond_c
    const-string/jumbo v0, "vertex_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 38
    :cond_d
    const-string/jumbo v0, "yuv_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getYuvFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 40
    :cond_e
    const-string/jumbo v0, "saturation_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSaturationFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 42
    :cond_f
    const-string v0, "empty_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 43
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getEmptyFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 44
    :cond_10
    const-string/jumbo v0, "scene_enhance_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSceneEnhanceFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 46
    :cond_11
    const-string/jumbo v0, "rgb_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getRgbFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 48
    :cond_12
    const-string/jumbo v0, "vertex_shader_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 50
    :cond_13
    const-string v0, "high_light_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 51
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getHighLightFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 52
    :cond_14
    const-string v0, "kirsch_vertex_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getKirschVertexShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 54
    :cond_15
    const-string v0, "kirsch_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 55
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getKirschFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 56
    :cond_16
    const-string v0, "levels_compression_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getLevelsCompressionShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :cond_17
    const-string/jumbo v0, "softlight_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 59
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSoftlightFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 60
    :cond_18
    const-string/jumbo v0, "sobel_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 61
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getSobelFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    :cond_19
    const-string/jumbo v0, "rgb2gray_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getRgb2grayFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 64
    :cond_1a
    const-string/jumbo v0, "posterize_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getPosterizeFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 66
    :cond_1b
    const-string v0, "generate_blue_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 67
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getGenerateBlueFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 68
    :cond_1c
    const-string/jumbo v0, "pencil_overlay_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 69
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getPencilOverLayFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :cond_1d
    const-string v0, "hope_effect_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 71
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getHopeEffectFragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 72
    :cond_1e
    const-string v0, "kirsch1_fragment_shader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 73
    invoke-static {}, Lcn/jingling/lib/livefilter/Opengl20JniLib;->getKirsch1FragmentShader()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_1f
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static native getShaderProgram(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native getSmoothApplyFragmentShader()Ljava/lang/String;
.end method

.method private static native getSmoothBlurFragmentShader()Ljava/lang/String;
.end method

.method private static native getSmoothBlurHorizontalVertexShader()Ljava/lang/String;
.end method

.method private static native getSmoothBlurVerticalVertexShader()Ljava/lang/String;
.end method

.method private static native getSmoothExtractSelectionFragmentShader()Ljava/lang/String;
.end method

.method private static native getSmoothTemplateFragmentShader()Ljava/lang/String;
.end method

.method private static native getSobelFragmentShader()Ljava/lang/String;
.end method

.method private static native getSoftlightFragmentShader()Ljava/lang/String;
.end method

.method private static native getVertexShader()Ljava/lang/String;
.end method

.method private static native getVertexShader2()Ljava/lang/String;
.end method

.method private static native getYuvFragmentShader()Ljava/lang/String;
.end method
