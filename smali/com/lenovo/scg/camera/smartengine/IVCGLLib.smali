.class public Lcom/lenovo/scg/camera/smartengine/IVCGLLib;
.super Ljava/lang/Object;
.source "IVCGLLib.java"


# static fields
.field public static final FEATURE_AVG:I = 0x2

.field public static final FEATURE_NUM:I = 0xa

.field public static final FEATURE_POS_CENTER:I = 0x6

.field public static final FEATURE_POS_DOWN:I = 0x7

.field public static final FEATURE_POS_LEFT:I = 0x8

.field public static final FEATURE_POS_RIGHT:I = 0x9

.field public static final FEATURE_STD:I = 0x4

.field public static final FEATURE_SUM:I = 0x1

.field public static final FEATURE_VAR:I = 0x3

.field static GL_TEXTURE0:I = 0x0

.field static GL_TEXTURE1:I = 0x0

.field static GL_TEXTURE2:I = 0x0

.field static GL_TEXTURE3:I = 0x0

.field static GL_TEXTURE4:I = 0x0

.field static GL_TEXTURE5:I = 0x0

.field static GL_TEXTURE6:I = 0x0

.field static GL_TEXTURE7:I = 0x0

.field static GL_TEXTURE8:I = 0x0

.field public static final ORIENTATION_HYSTERESIS:I = 0x5

.field static SAMPLE2D0:I = 0x0

.field static SAMPLE2D1:I = 0x0

.field static SAMPLE2D2:I = 0x0

.field static SAMPLE2D3:I = 0x0

.field static SAMPLE2D4:I = 0x0

.field static SAMPLE2D5:I = 0x0

.field static SAMPLE2D6:I = 0x0

.field static SAMPLE2D7:I = 0x0

.field static SAMPLE2D8:I = 0x0

.field public static final TAG:Ljava/lang/String; = "IVCGLLib"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x84c0

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE0:I

    .line 32
    const v0, 0x84c1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE1:I

    .line 33
    const v0, 0x84c2

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE2:I

    .line 34
    const v0, 0x84c3

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE3:I

    .line 35
    const v0, 0x84c4

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE4:I

    .line 36
    const v0, 0x84c5

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE5:I

    .line 37
    const v0, 0x84c6

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE6:I

    .line 38
    const v0, 0x84c7

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE7:I

    .line 39
    const v0, 0x84c8

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->GL_TEXTURE8:I

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D0:I

    .line 42
    const/4 v0, 0x1

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D1:I

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D2:I

    .line 44
    const/4 v0, 0x3

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D3:I

    .line 45
    const/4 v0, 0x4

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D4:I

    .line 46
    const/4 v0, 0x5

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D5:I

    .line 47
    const/4 v0, 0x6

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D6:I

    .line 48
    const/4 v0, 0x7

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D7:I

    .line 49
    const/16 v0, 0x8

    sput v0, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->SAMPLE2D8:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accDiff([F)F
    .locals 4
    .param p0, "data"    # [F

    .prologue
    .line 589
    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x0

    aget v2, p0, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x4

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x2

    aget v3, p0, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float v0, v1, v2

    .line 591
    .local v0, "acc_diff_value":F
    return v0
.end method

.method public static getNumInHistArray([III)I
    .locals 5
    .param p0, "hist"    # [I
    .param p1, "thresLow"    # I
    .param p2, "thresHigh"    # I

    .prologue
    const/4 v4, -0x1

    .line 525
    const/4 v3, 0x0

    .line 526
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "low":I
    const/4 v0, 0x0

    .line 527
    .local v0, "high":I
    if-ne p1, v4, :cond_0

    .line 528
    add-int/lit8 v2, p2, -0x1

    .line 529
    const/16 v0, 0x100

    .line 537
    :goto_0
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 538
    aget v4, p0, v1

    add-int/2addr v3, v4

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 530
    .end local v1    # "i":I
    :cond_0
    if-ne p2, v4, :cond_1

    .line 531
    const/4 v2, 0x0

    .line 532
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    add-int/lit8 v2, p1, -0x1

    .line 535
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    .line 541
    .restart local v1    # "i":I
    :cond_2
    return v3
.end method

.method private static getRAvgFromRGBA([BI)D
    .locals 4
    .param p0, "rgba"    # [B
    .param p1, "length"    # I

    .prologue
    .line 461
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRSumFromRGBA([BI)J

    move-result-wide v2

    long-to-double v0, v2

    .line 462
    .local v0, "sum":D
    div-int/lit8 v2, p1, 0x4

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method private static getRNumFromRGBA([BIF)I
    .locals 4
    .param p0, "rgba"    # [B
    .param p1, "length"    # I
    .param p2, "thres"    # F

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "num":I
    div-int/lit8 v2, p1, 0x4

    .line 435
    .local v2, "rLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 436
    mul-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    .line 437
    add-int/lit8 v1, v1, 0x1

    .line 435
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    return v1
.end method

.method private static getRPosFromRGBA([B[BI)D
    .locals 14
    .param p0, "img"    # [B
    .param p1, "rgba"    # [B
    .param p2, "length"    # I

    .prologue
    .line 390
    array-length v5, p0

    .line 391
    .local v5, "rLength":I
    invoke-static/range {p1 .. p2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRAvgFromRGBA([BI)D

    move-result-wide v0

    .line 398
    .local v0, "avg":D
    const-wide/16 v2, 0x0

    .local v2, "denom":D
    const-wide/16 v6, 0x0

    .line 399
    .local v6, "numer":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 400
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    int-to-double v10, v10

    sub-double/2addr v10, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 401
    aget-byte v10, p0, v4

    and-int/lit16 v10, v10, 0xff

    int-to-double v10, v10

    sub-double/2addr v10, v0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 399
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 403
    :cond_0
    int-to-double v10, v5

    div-double v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 405
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_1

    .line 406
    int-to-double v10, v5

    div-double/2addr v6, v10

    .line 407
    div-double v8, v6, v2

    .line 411
    .local v8, "s":D
    :goto_1
    return-wide v8

    .line 409
    .end local v8    # "s":D
    :cond_1
    const-wide v8, 0x408f400000000000L    # 1000.0

    .restart local v8    # "s":D
    goto :goto_1
.end method

.method private static getRStdFromRGBA([BI)D
    .locals 6
    .param p0, "rgba"    # [B
    .param p1, "length"    # I

    .prologue
    .line 484
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRVarFromRGBA([BI)D

    move-result-wide v2

    .line 485
    .local v2, "var":D
    div-int/lit8 v4, p1, 0x4

    int-to-double v4, v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 486
    .local v0, "std":D
    return-wide v0
.end method

.method private static getRSumFromRGBA([BI)J
    .locals 6
    .param p0, "rgba"    # [B
    .param p1, "length"    # I

    .prologue
    .line 448
    const-wide/16 v2, 0x0

    .line 449
    .local v2, "sum":J
    div-int/lit8 v1, p1, 0x4

    .line 450
    .local v1, "rLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 451
    mul-int/lit8 v4, v0, 0x4

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return-wide v2
.end method

.method private static getRVarFromRGBA([BI)D
    .locals 10
    .param p0, "rgba"    # [B
    .param p1, "length"    # I

    .prologue
    .line 470
    const-wide/16 v4, 0x0

    .line 471
    .local v4, "var":D
    div-int/lit8 v3, p1, 0x4

    .line 472
    .local v3, "rLength":I
    invoke-static {p0, p1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRAvgFromRGBA([BI)D

    move-result-wide v0

    .line 473
    .local v0, "avg":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 474
    mul-int/lit8 v6, v2, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-double v6, v6

    sub-double/2addr v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-wide v4
.end method

.method public static getSplitPointData(I)[F
    .locals 6
    .param p0, "a"    # I

    .prologue
    .line 549
    mul-int v2, p0, p0

    .line 550
    .local v2, "length":I
    mul-int/lit8 v4, v2, 0x2

    new-array v0, v4, [F

    .line 551
    .local v0, "data":[F
    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v5, p0, -0x1

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 552
    .local v3, "tmp":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 553
    mul-int/lit8 v4, v1, 0x2

    div-int v5, v1, p0

    int-to-float v5, v5

    mul-float/2addr v5, v3

    aput v5, v0, v4

    .line 554
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    rem-int v5, v1, p0

    int-to-float v5, v5

    mul-float/2addr v5, v3

    aput v5, v0, v4

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-object v0
.end method

.method public static glCheckGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 214
    const-string v1, "IVCGLLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    return-void
.end method

.method public static glCreateProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 147
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glLoadShader(ILjava/lang/String;)I

    move-result v3

    .line 148
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 152
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glLoadShader(ILjava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 158
    .local v2, "program":I
    const-string v5, "glCreateProgram"

    invoke-static {v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 160
    if-eqz v2, :cond_0

    .line 161
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 162
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 163
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 164
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 165
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 166
    const-string v5, "glLinkProgram"

    invoke-static {v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 167
    new-array v0, v6, [I

    .line 168
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 169
    const-string v5, "glGetProgramiv"

    invoke-static {v5}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 170
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 171
    const-string v4, "IVCGLLib"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v4, "IVCGLLib"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 174
    const-string v4, "glDeleteProgram"

    invoke-static {v4}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 175
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static glGenFBO()I
    .locals 3

    .prologue
    .line 223
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 224
    .local v0, "fbo":[I
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 225
    .local v1, "frameBuffer":Ljava/nio/IntBuffer;
    array-length v2, v0

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    .line 226
    const-string v2, "glGenFramebuffers"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    aget v2, v0, v2

    return v2
.end method

.method public static glGenTexImage2D(III[B)I
    .locals 20
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "interMode"    # I
    .param p3, "matrixData"    # [B

    .prologue
    .line 238
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 241
    .local v19, "texs":[I
    move-object/from16 v0, v19

    array-length v1, v0

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 242
    const-string v1, "glGenTextures"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 243
    const/16 v1, 0xde1

    const/4 v2, 0x0

    aget v2, v19, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 244
    const-string v1, "glBindTexture"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 245
    invoke-static/range {p2 .. p2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glTexParameter(I)V

    .line 246
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-lez v1, :cond_0

    .line 247
    invoke-static/range {p3 .. p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 248
    .local v9, "MatrixBuf":Ljava/nio/ByteBuffer;
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1909

    const/4 v6, 0x0

    const/16 v7, 0x1909

    const/16 v8, 0x1401

    move/from16 v4, p0

    move/from16 v5, p1

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 252
    .end local v9    # "MatrixBuf":Ljava/nio/ByteBuffer;
    :goto_0
    const-string v1, "glTexImage2D"

    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x0

    aget v1, v19, v1

    return v1

    .line 250
    :cond_0
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/4 v15, 0x0

    const/16 v16, 0x1908

    const/16 v17, 0x1401

    const/16 v18, 0x0

    move/from16 v13, p0

    move/from16 v14, p1

    invoke-static/range {v10 .. v18}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_0
.end method

.method public static varargs glGetFeature(IIIIILjava/nio/ByteBuffer;[F)D
    .locals 22
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "flag"    # I
    .param p5, "tmpBuffer"    # Ljava/nio/ByteBuffer;
    .param p6, "thres"    # [F

    .prologue
    .line 321
    const-wide/16 v14, 0x0

    .line 322
    .local v14, "feature":D
    sub-int v4, p2, p0

    sub-int v5, p3, p1

    mul-int/2addr v4, v5

    mul-int/lit8 v18, v4, 0x4

    .line 324
    .local v18, "length":I
    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p5

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 325
    const-string v4, "glReadPixels"

    invoke-static {v4}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p5 .. p5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    .line 328
    .local v19, "rgbaBytes":[B
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    .line 329
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRSumFromRGBA([BI)J

    move-result-wide v4

    long-to-double v14, v4

    .line 386
    :cond_0
    :goto_0
    return-wide v14

    .line 330
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_2

    .line 331
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRAvgFromRGBA([BI)D

    move-result-wide v14

    goto :goto_0

    .line 332
    :cond_2
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_3

    .line 333
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRVarFromRGBA([BI)D

    move-result-wide v14

    goto :goto_0

    .line 334
    :cond_3
    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 335
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRStdFromRGBA([BI)D

    move-result-wide v14

    goto :goto_0

    .line 336
    :cond_4
    const/4 v4, 0x6

    move/from16 v0, p4

    if-ne v0, v4, :cond_7

    .line 337
    const/16 v4, 0x90

    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 338
    .local v21, "upParts":[B
    const/4 v11, 0x0

    .line 339
    .local v11, "cnt":I
    const/16 v13, 0xa

    .local v13, "i":I
    :goto_1
    const/16 v4, 0x16

    if-ge v13, v4, :cond_6

    .line 340
    const/16 v17, 0xa

    .local v17, "j":I
    :goto_2
    const/16 v4, 0x16

    move/from16 v0, v17

    if-ge v0, v4, :cond_5

    .line 341
    mul-int v4, v13, p3

    add-int v16, v4, v17

    .line 342
    .local v16, "indx":I
    mul-int/lit8 v4, v16, 0x4

    aget-byte v4, v19, v4

    aput-byte v4, v21, v11

    .line 343
    add-int/lit8 v11, v11, 0x1

    .line 340
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 339
    .end local v16    # "indx":I
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 346
    .end local v17    # "j":I
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRPosFromRGBA([B[BI)D

    move-result-wide v14

    .line 347
    goto :goto_0

    .end local v11    # "cnt":I
    .end local v13    # "i":I
    .end local v21    # "upParts":[B
    :cond_7
    const/4 v4, 0x7

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    .line 348
    mul-int/lit8 v4, p2, 0xa

    new-array v12, v4, [B

    .line 349
    .local v12, "downParts":[B
    const/4 v11, 0x0

    .line 350
    .restart local v11    # "cnt":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move/from16 v0, p2

    if-ge v13, v0, :cond_9

    .line 351
    const/16 v17, 0x16

    .restart local v17    # "j":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_8

    .line 352
    mul-int v4, v13, p3

    add-int v16, v4, v17

    .line 353
    .restart local v16    # "indx":I
    mul-int/lit8 v4, v16, 0x4

    aget-byte v4, v19, v4

    aput-byte v4, v12, v11

    .line 354
    add-int/lit8 v11, v11, 0x1

    .line 351
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 350
    .end local v16    # "indx":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 357
    .end local v17    # "j":I
    :cond_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRPosFromRGBA([B[BI)D

    move-result-wide v14

    .line 358
    goto/16 :goto_0

    .end local v11    # "cnt":I
    .end local v12    # "downParts":[B
    .end local v13    # "i":I
    :cond_a
    const/16 v4, 0x8

    move/from16 v0, p4

    if-ne v0, v4, :cond_d

    .line 359
    const/16 v4, 0x78

    new-array v12, v4, [B

    .line 360
    .restart local v12    # "downParts":[B
    const/4 v11, 0x0

    .line 361
    .restart local v11    # "cnt":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    const/16 v4, 0xc

    if-ge v13, v4, :cond_c

    .line 362
    const/16 v17, 0x16

    .restart local v17    # "j":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_b

    .line 363
    mul-int v4, v13, p3

    add-int v16, v4, v17

    .line 364
    .restart local v16    # "indx":I
    mul-int/lit8 v4, v16, 0x4

    aget-byte v4, v19, v4

    aput-byte v4, v12, v11

    .line 365
    add-int/lit8 v11, v11, 0x1

    .line 362
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 361
    .end local v16    # "indx":I
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 368
    .end local v17    # "j":I
    :cond_c
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRPosFromRGBA([B[BI)D

    move-result-wide v14

    .line 369
    goto/16 :goto_0

    .end local v11    # "cnt":I
    .end local v12    # "downParts":[B
    .end local v13    # "i":I
    :cond_d
    const/16 v4, 0x9

    move/from16 v0, p4

    if-ne v0, v4, :cond_10

    .line 370
    const/16 v4, 0x78

    new-array v12, v4, [B

    .line 371
    .restart local v12    # "downParts":[B
    const/4 v11, 0x0

    .line 372
    .restart local v11    # "cnt":I
    const/16 v13, 0x14

    .restart local v13    # "i":I
    :goto_7
    move/from16 v0, p2

    if-ge v13, v0, :cond_f

    .line 373
    const/16 v17, 0x16

    .restart local v17    # "j":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, p3

    if-ge v0, v1, :cond_e

    .line 374
    mul-int v4, v13, p3

    add-int v16, v4, v17

    .line 375
    .restart local v16    # "indx":I
    mul-int/lit8 v4, v16, 0x4

    aget-byte v4, v19, v4

    aput-byte v4, v12, v11

    .line 376
    add-int/lit8 v11, v11, 0x1

    .line 373
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 372
    .end local v16    # "indx":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 379
    .end local v17    # "j":I
    :cond_f
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRPosFromRGBA([B[BI)D

    move-result-wide v14

    .line 380
    goto/16 :goto_0

    .end local v11    # "cnt":I
    .end local v12    # "downParts":[B
    .end local v13    # "i":I
    :cond_10
    const/16 v4, 0xa

    move/from16 v0, p4

    if-ne v0, v4, :cond_0

    .line 381
    move-object/from16 v0, p6

    array-length v4, v0

    if-lez v4, :cond_0

    .line 382
    const/4 v4, 0x0

    aget v20, p6, v4

    .line 383
    .local v20, "th":F
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->getRNumFromRGBA([BIF)I

    move-result v4

    int-to-double v14, v4

    goto/16 :goto_0
.end method

.method public static glGetHistogram(IIII[I[I[ILjava/nio/ByteBuffer;)V
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "resultR"    # [I
    .param p5, "resultG"    # [I
    .param p6, "resultB"    # [I
    .param p7, "tmpBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 499
    sub-int v0, p2, p0

    sub-int v1, p3, p1

    mul-int/2addr v0, v1

    mul-int/lit8 v9, v0, 0x4

    .line 501
    .local v9, "length":I
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 502
    const-string v0, "glReadPixels"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p7 .. p7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 506
    .local v10, "rgbaBytes":[B
    const/4 v7, 0x0

    .line 507
    .local v7, "bin":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 508
    rem-int/lit8 v0, v8, 0x4

    if-nez v0, :cond_0

    .line 509
    aget v0, p4, v7

    aget-byte v1, v10, v8

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    aput v0, p4, v7

    .line 510
    aget v0, p5, v7

    add-int/lit8 v1, v8, 0x1

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    aput v0, p5, v7

    .line 511
    aget v0, p6, v7

    add-int/lit8 v1, v8, 0x2

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    aput v0, p6, v7

    .line 512
    add-int/lit8 v7, v7, 0x1

    .line 513
    rem-int/lit16 v7, v7, 0x100

    .line 507
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 516
    :cond_1
    return-void
.end method

.method private static glLoadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 188
    .local v1, "shader":I
    const-string v2, "glCreateShader"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 189
    if-eqz v1, :cond_0

    .line 190
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 191
    const-string v2, "glShaderSource"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 192
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 193
    const-string v2, "glCompileShader"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 195
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 196
    const-string v2, "glGetShaderiv"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 197
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 198
    const-string v2, "IVCGLLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v2, "IVCGLLib"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 201
    const-string v2, "glDeleteShader"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x0

    .line 205
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private static glTexParameter(I)V
    .locals 6
    .param p0, "interMethod"    # I

    .prologue
    const/16 v5, 0x2800

    const v4, 0x46180400    # 9729.0f

    const/high16 v3, 0x46180000    # 9728.0f

    const v2, 0x812f

    const/16 v1, 0xde1

    .line 262
    if-nez p0, :cond_1

    .line 263
    const/16 v0, 0x2801

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 264
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 265
    const/16 v0, 0x2802

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 266
    const/16 v0, 0x2803

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 273
    :cond_0
    :goto_0
    const-string v0, "glTexParameteri"

    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 274
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 268
    const/16 v0, 0x2801

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 269
    invoke-static {v1, v5, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 270
    const/16 v0, 0x2802

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 271
    const/16 v0, 0x2803

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_0
.end method

.method public static glToByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 57
    array-length v1, p0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    return-object v0
.end method

.method public static glToFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "buffer"    # [F

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "floatBuffer":Ljava/nio/FloatBuffer;
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    return-object v1
.end method

.method public static glToShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .param p0, "buffer"    # [S

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "shortBuffer":Ljava/nio/ShortBuffer;
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    return-object v1
.end method

.method public static glUseFBO(IIIIZII)V
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "offScreen"    # Z
    .param p5, "fboHandle"    # I
    .param p6, "textureHandle"    # I

    .prologue
    const v5, 0x8ce0

    const/4 v4, 0x0

    const v3, 0x8d40

    .line 286
    if-nez p4, :cond_1

    .line 287
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 288
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 289
    const-string v2, "glBindFramebuffer"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void

    .line 291
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 292
    .local v0, "fboTex":[I
    invoke-static {v3, p5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 293
    const-string v2, "glBindFramebuffer"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 294
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 295
    const-string v2, "glViewport"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 296
    const/16 v2, 0xde1

    invoke-static {v3, v5, v2, p6, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 297
    const-string v2, "glFramebufferTexture2D"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 299
    const v2, 0x8cd1

    invoke-static {v3, v5, v2, v0, v4}, Landroid/opengl/GLES20;->glGetFramebufferAttachmentParameteriv(III[II)V

    .line 300
    const-string v2, "glGetFramebufferAttachmentParameteriv"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 301
    aget v2, v0, v4

    if-eq v2, p6, :cond_2

    .line 302
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The FBO textureID is wrong"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :cond_2
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 305
    .local v1, "status":I
    const-string v2, "glCheckFramebufferStatus"

    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->glCheckGlError(Ljava/lang/String;)V

    .line 306
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 307
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind FBO! status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 100
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 101
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 102
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 106
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 107
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 108
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 109
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_2
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .line 111
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadFromClasspath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v5, 0x0

    .line 124
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    const-class v7, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;

    invoke-virtual {v7, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 125
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 126
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 128
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 130
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 131
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 133
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_2
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static medianFilter([D)D
    .locals 8
    .param p0, "data"    # [D

    .prologue
    .line 600
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_1

    .line 602
    aget-wide v4, p0, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, p0, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 603
    aget-wide v2, p0, v0

    .line 604
    .local v2, "t":D
    add-int/lit8 v4, v0, 0x1

    aget-wide v4, p0, v4

    aput-wide v4, p0, v0

    .line 605
    add-int/lit8 v4, v0, 0x1

    aput-wide v2, p0, v4

    .line 601
    .end local v2    # "t":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "i":I
    :cond_2
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    aget-wide v4, p0, v4

    return-wide v4
.end method

.method public static readData(IIII)[B
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 640
    mul-int v0, p2, p3

    mul-int/lit8 v9, v0, 0x4

    .line 641
    .local v9, "length":I
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 642
    .local v6, "resultBuf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 643
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 644
    .local v10, "result":[B
    new-array v7, v9, [B

    .line 645
    .local v7, "data":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 646
    aget-byte v0, v10, v8

    aput-byte v0, v7, v8

    .line 645
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 648
    :cond_0
    return-object v7
.end method

.method public static roundOrientation(II)I
    .locals 3
    .param p0, "orientation"    # I
    .param p1, "orientationHistory"    # I

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "changeOrientation":Z
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 567
    const/4 v0, 0x1

    .line 573
    :goto_0
    if-eqz v0, :cond_0

    .line 574
    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    .line 576
    .end local p1    # "orientationHistory":I
    :cond_0
    return p1

    .line 569
    .restart local p1    # "orientationHistory":I
    :cond_1
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 570
    .local v1, "dist":I
    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 571
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static sceneFeatureFilter(Ljava/util/List;II)I
    .locals 6
    .param p1, "sceneNum"    # I
    .param p2, "thres"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 619
    .local v0, "flag":I
    new-array v2, p1, [I

    .line 620
    .local v2, "sceneFlag":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 621
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_0
    const/4 v3, 0x0

    .line 624
    .local v3, "temp":I
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 625
    aget v4, v2, v1

    if-lt v4, v3, :cond_1

    aget v4, v2, v1

    if-le v4, p2, :cond_1

    .line 626
    aget v3, v2, v1

    .line 627
    move v0, v1

    .line 624
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 630
    :cond_2
    return v0
.end method
