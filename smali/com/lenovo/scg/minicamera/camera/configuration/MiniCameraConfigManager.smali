.class public Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;
.super Ljava/lang/Object;
.source "MiniCameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final JPEG_QUALITY:I = 0x5a

.field private static final MAX_PICTURE_PIXELS:I = 0x5dc00

.field private static final MAX_PREVIEW_PIXELS:I = 0x1fa400

.field private static final MIN_PICTURE_PIXELS:I = 0x4b000

.field private static final MIN_PREVIEW_PIXELS:I = 0x51000

.field private static final TAG:Ljava/lang/String; = "CameraConfigManager"


# instance fields
.field private cameraPicturePointResolution:Landroid/graphics/Point;

.field private cameraPreviewPointResolution:Landroid/graphics/Point;

.field private mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

.field private final mAutoFocusCallback:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;

.field private mCallbackManager:Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

.field private mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

.field private mFocusAreaSupported:Z

.field private mFocusListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

.field private mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

.field private mMeteringAreaSupported:Z

.field private mPaused:Z

.field private mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V
    .locals 2
    .param p1, "context"    # Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
    .param p2, "cameraproxy"    # Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;-><init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mAutoFocusCallback:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;

    .line 464
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$2;-><init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    .line 74
    iput-object p2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 75
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->initializeFocusManager()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mAutoFocusCallback:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    return-object v0
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "open"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    if-eqz p2, :cond_1

    .line 523
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "torch"

    aput-object v3, v2, v4

    const-string/jumbo v3, "on"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->findSettableStringValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "flashMode":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 533
    :cond_0
    return-void

    .line 527
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "off"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->findSettableStringValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private findBestPictureSizeValue()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 164
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    const/16 v0, 0x280

    const/16 v4, 0x1e0

    invoke-direct {v3, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const v4, 0x4b000

    const v5, 0x5dc00

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private findBestPreviewSizeValue(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "screenResolution"    # Landroid/graphics/Point;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 156
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    const v4, 0x51000

    const v5, 0x1fa400

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private findBestSettingPointSizeValue(Ljava/util/List;Landroid/hardware/Camera$Size;Landroid/graphics/Point;II)Landroid/graphics/Point;
    .locals 21
    .param p2, "defaultSize"    # Landroid/hardware/Camera$Size;
    .param p3, "screenResolution"    # Landroid/graphics/Point;
    .param p4, "minSize"    # I
    .param p5, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            "Landroid/graphics/Point;",
            "II)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v12, p1

    .line 171
    .local v12, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v12, :cond_0

    .line 172
    const-string v18, "CameraConfigManager"

    const-string v19, "Device returned no supported preview sizes; using default"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 235
    :goto_0
    return-object v5

    .line 177
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .local v16, "sortedSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v18, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager$1;-><init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, "bestSize":Landroid/graphics/Point;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v15, v18, v19

    .line 205
    .local v15, "screenAspectRatio":F
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 206
    .local v4, "diff":F
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/hardware/Camera$Size;

    .line 207
    .local v17, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v17

    iget v14, v0, Landroid/hardware/Camera$Size;->width:I

    .line 208
    .local v14, "realWidth":I
    move-object/from16 v0, v17

    iget v13, v0, Landroid/hardware/Camera$Size;->height:I

    .line 209
    .local v13, "realHeight":I
    mul-int v11, v14, v13

    .line 210
    .local v11, "pixels":I
    move/from16 v0, p4

    if-lt v11, v0, :cond_1

    move/from16 v0, p5

    if-gt v11, v0, :cond_1

    .line 213
    if-ge v14, v13, :cond_2

    const/4 v7, 0x1

    .line 214
    .local v7, "isCandidatePortrait":Z
    :goto_2
    if-eqz v7, :cond_3

    move v9, v13

    .line 215
    .local v9, "maybeFlippedWidth":I
    :goto_3
    if-eqz v7, :cond_4

    move v8, v14

    .line 216
    .local v8, "maybeFlippedHeight":I
    :goto_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 217
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 218
    .local v5, "exactPoint":Landroid/graphics/Point;
    const-string v18, "CameraConfigManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found preview size exactly matching screen size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 213
    .end local v5    # "exactPoint":Landroid/graphics/Point;
    .end local v7    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedHeight":I
    .end local v9    # "maybeFlippedWidth":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .restart local v7    # "isCandidatePortrait":Z
    :cond_3
    move v9, v14

    .line 214
    goto :goto_3

    .restart local v9    # "maybeFlippedWidth":I
    :cond_4
    move v8, v13

    .line 215
    goto :goto_4

    .line 221
    .restart local v8    # "maybeFlippedHeight":I
    :cond_5
    int-to-float v0, v9

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v2, v18, v19

    .line 222
    .local v2, "aspectRatio":F
    sub-float v18, v2, v15

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 223
    .local v10, "newDiff":F
    cmpg-float v18, v10, v4

    if-gez v18, :cond_1

    .line 224
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    invoke-direct {v3, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 225
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    move v4, v10

    goto :goto_1

    .line 229
    .end local v2    # "aspectRatio":F
    .end local v7    # "isCandidatePortrait":Z
    .end local v8    # "maybeFlippedHeight":I
    .end local v9    # "maybeFlippedWidth":I
    .end local v10    # "newDiff":F
    .end local v11    # "pixels":I
    .end local v13    # "realHeight":I
    .end local v14    # "realWidth":I
    .end local v17    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_6
    if-nez v3, :cond_7

    .line 230
    new-instance v3, Landroid/graphics/Point;

    .end local v3    # "bestSize":Landroid/graphics/Point;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 231
    .restart local v3    # "bestSize":Landroid/graphics/Point;
    const-string v18, "CameraConfigManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "No suitable preview sizes, using default: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_7
    const-string v18, "CameraConfigManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "findBestSettingPointSizeValue, Found best approximate preview size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    .line 235
    goto/16 :goto_0
.end method

.method private setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 242
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "CameraConfigManager"

    const-string v1, "autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->autoFocus()V

    .line 462
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "CameraConfigManager"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->cancelAutoFocus()V

    .line 455
    :cond_0
    return-void
.end method

.method public closeCamera()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "CameraConfigManager"

    const-string v1, "mCameraProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->instance()Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraHolder;->release()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    .line 389
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onCameraReleased()V

    .line 391
    :cond_0
    return-void
.end method

.method public flattenParameters()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 85
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallbackManager()Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCallbackManager:Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    return-object v0
.end method

.method public getCameraPreviewPointResolution()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFocusManager()Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public initFromCameraParameters()V
    .locals 10

    .prologue
    .line 116
    iget-object v7, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 117
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 119
    .local v0, "display":Landroid/view/Display;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-lt v7, v8, :cond_1

    .line 120
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 121
    .local v3, "outSize":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 122
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 123
    .local v6, "width":I
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 128
    .end local v3    # "outSize":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    const-string v7, "CameraConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFromCameraParameters, width111="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",height111="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-ge v6, v1, :cond_0

    .line 134
    const-string v7, "CameraConfigManager"

    const-string/jumbo v8, "width < height, change!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move v5, v6

    .line 136
    .local v5, "temp":I
    move v6, v1

    .line 137
    move v1, v5

    .line 139
    .end local v5    # "temp":I
    :cond_0
    const-string v7, "CameraConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFromCameraParameters, width222="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",height222="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v6, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 142
    .local v4, "screenResolution":Landroid/graphics/Point;
    const-string v7, "CameraConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFromCameraParameters, Screen display = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v4}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->findBestPreviewSizeValue(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    .line 144
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->findBestPictureSizeValue()Landroid/graphics/Point;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    .line 145
    const-string v7, "CameraConfigManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFromCameraParameters, cameraPreviewPointResolution = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 125
    .end local v1    # "height":I
    .end local v4    # "screenResolution":Landroid/graphics/Point;
    .end local v6    # "width":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 126
    .restart local v6    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto/16 :goto_0
.end method

.method public initializeCallbackManager()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCallbackManager:Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;-><init>(Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCallbackManager:Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    .line 422
    :cond_0
    const-string v0, "CameraConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFocusManager, mCallbackManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCallbackManager:Lcom/lenovo/scg/minicamera/callback/MiniCameraCallbackManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method public initializeCapabilities()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 253
    .local v0, "initialParams":Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusAreaSupported:Z

    .line 254
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mMeteringAreaSupported:Z

    .line 257
    return-void
.end method

.method public initializeFocusManager()V
    .locals 6

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;-><init>(Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;Landroid/hardware/Camera$Parameters;[Ljava/lang/String;Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    .line 443
    .end local v3    # "defaultFocusModes":[Ljava/lang/String;
    :cond_0
    const-string v0, "CameraConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFocusManager, mFocusManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method public isCameraOpened()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusAreaSupported()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusAreaSupported:Z

    return v0
.end method

.method public isMeteringAreaSupported()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mMeteringAreaSupported:Z

    return v0
.end method

.method public setDesiredCameraParameters()V
    .locals 7

    .prologue
    .line 269
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 271
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 272
    const-string v4, "CameraConfigManager"

    const-string v5, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 277
    invoke-direct {p0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 279
    const-string v4, "CameraConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial camera parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mActivity:Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getCameraDisplayOrientation(Landroid/app/Activity;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 330
    const-string v4, "CameraConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDesiredCameraParameters, previewsize w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", previewsize h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 333
    .local v3, "preivewsize":Landroid/hardware/Camera$Size;
    const-string v4, "CameraConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDesiredCameraParameters, real previewsize w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->getBestSupportImageFormat(Ljava/util/Collection;)I

    move-result v2

    .line 336
    .local v2, "pictureFmt":I
    const-string v4, "CameraConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDesiredCameraParameters, picture format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 340
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 341
    const-string v4, "CameraConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDesiredCameraParameters, picture size, x= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v4, 0x100

    if-ne v2, v4, :cond_1

    .line 344
    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 347
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 349
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->initializeCallbackManager()V

    goto/16 :goto_0

    .line 324
    .end local v2    # "pictureFmt":I
    .end local v3    # "preivewsize":Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TAG"

    const-string/jumbo v5, "\u65b9\u6cd5\u9519\u8bef"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->setDisplayOrientation(I)V

    .line 374
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 101
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "pause"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mPaused:Z

    .line 504
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 380
    :cond_0
    return-void
.end method

.method public setTorch(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 515
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 516
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->doSetTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 517
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 518
    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 507
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 509
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 510
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 512
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "CameraConfigManager"

    const-string/jumbo v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->startPreviewAsync()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onPreviewStarted()V

    .line 415
    :cond_1
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "CameraConfigManager"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->stopPreview()V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onPreviewStopped()V

    .line 405
    :cond_1
    return-void
.end method

.method public unflattenParameters(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "parametersFlattened"    # Ljava/lang/String;
    .param p2, "set"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 92
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 94
    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 97
    :cond_0
    return-void
.end method

.method public updateFocusParametersOnly()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 355
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 356
    const-string v1, "CameraConfigManager"

    const-string v2, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 363
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mFocusManager:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraConfigManager;->mCameraProxy:Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/camera/hardware/MiniCameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
