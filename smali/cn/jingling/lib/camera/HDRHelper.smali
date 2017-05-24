.class public Lcn/jingling/lib/camera/HDRHelper;
.super Ljava/lang/Object;
.source "HDRHelper.java"


# static fields
.field private static final MAX_EXPOSURE:F = 1.5f

.field private static final MIN_EXPOSURE:F = 1.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HDRSimulation(Landroid/graphics/Bitmap;Z)[I
    .locals 8
    .param p0, "srcBm"    # Landroid/graphics/Bitmap;
    .param p1, "isRecycle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    const-string v0, "HDRSimulation"

    const-string v2, "error!! srcBm == null || srcBm.isRecycled() == true"

    invoke-static {v0, v2}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    .line 95
    :cond_1
    :goto_0
    return-object v1

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 88
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 89
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "imgPixels":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 90
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 91
    const/4 v0, 0x5

    const/16 v2, 0x8

    invoke-static {v1, v3, v7, v0, v2}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->HDRsimple([IIIII)V

    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static HDRSimulationBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "srcBm"    # Landroid/graphics/Bitmap;
    .param p1, "isRecycle"    # Z

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-static {p0, v2}, Lcn/jingling/lib/camera/HDRHelper;->HDRSimulation(Landroid/graphics/Bitmap;Z)[I

    move-result-object v1

    .line 66
    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 67
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 68
    .local v7, "h":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmMask":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 69
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    :cond_0
    return-object v0
.end method

.method public static clearExposure(Landroid/hardware/Camera;)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 99
    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 101
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcn/jingling/lib/camera/HDRHelper;->isSupportExposure(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 107
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getOptimizedExposureCompensationIndex(Landroid/hardware/Camera$Parameters;Z)I
    .locals 10
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "positive"    # Z

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 129
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    .line 130
    .local v2, "mic":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    .line 131
    .local v1, "mac":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    .line 132
    .local v3, "step":F
    if-eqz p1, :cond_0

    :cond_0
    div-float/2addr v4, v3

    float-to-int v0, v4

    .line 133
    .local v0, "limit":I
    if-nez v0, :cond_2

    .line 134
    if-eqz p1, :cond_1

    int-to-float v4, v1

    mul-float/2addr v4, v7

    mul-float/2addr v4, v8

    div-float/2addr v4, v9

    float-to-int v2, v4

    .line 137
    .end local v2    # "mic":I
    :cond_1
    :goto_0
    return v2

    .line 136
    .restart local v2    # "mic":I
    :cond_2
    const-string v4, "Exposure"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mic "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mac "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "step "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    if-eqz p1, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    mul-float/2addr v4, v8

    div-float/2addr v4, v9

    float-to-int v4, v4

    :goto_1
    move v2, v4

    goto :goto_0

    :cond_3
    neg-int v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1
.end method

.method private static isSupportExposure(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 119
    .local v1, "min":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 120
    .local v0, "max":I
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    .line 124
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static mergeHDRImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "bitmapBright"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapDark"    # Landroid/graphics/Bitmap;

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 40
    .local v3, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 41
    .local v7, "h":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 42
    .local v1, "imgDark":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 43
    mul-int v0, v3, v7

    new-array v9, v0, [I

    .line 44
    .local v9, "imgBright":[I
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v11, v3

    move v14, v3

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 45
    mul-int v0, v3, v7

    new-array v11, v0, [I

    .line 46
    .local v11, "dst":[I
    invoke-static {v1, v9, v11, v3, v7}, Lcn/jingling/lib/filters/SmoothSkinProcessor;->HDR([I[I[III)V

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 50
    .local v10, "bitmapMerged":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v3

    move/from16 v16, v3

    move/from16 v17, v7

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 53
    const/16 v0, 0x3a

    invoke-static {v10, v0}, Lcn/jingling/lib/filters/ImageProcessUtils;->saturationPs(Landroid/graphics/Bitmap;I)V

    .line 55
    return-object v10
.end method

.method public static updateExposure(Landroid/hardware/Camera;Z)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "bright"    # Z

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 20
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    invoke-static {v2}, Lcn/jingling/lib/camera/HDRHelper;->isSupportExposure(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {v2, p1}, Lcn/jingling/lib/camera/HDRHelper;->getOptimizedExposureCompensationIndex(Landroid/hardware/Camera$Parameters;Z)I

    move-result v1

    .line 28
    .local v1, "ev":I
    const/4 v1, -0x2

    .line 29
    const-string v3, "Exposure"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set ev "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 32
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
