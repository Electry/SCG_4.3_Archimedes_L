.class public Lcom/lenovo/scg/camera/mode/FrontCameraMode;
.super Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;
.source "FrontCameraMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontCameraMode"


# instance fields
.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    return-void
.end method


# virtual methods
.method public OnDebugNotify(I)V
    .locals 0
    .param p1, "notify"    # I

    .prologue
    .line 41
    return-void
.end method

.method public OnLeSCFPictureTaken([B)Z
    .locals 23
    .param p1, "data"    # [B

    .prologue
    .line 45
    const-string v19, "FrontCameraMode"

    const-string v20, "OnLeSCFPictureTaken"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->isImageCaptureIntent()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 48
    const/16 v19, 0x1

    .line 131
    :goto_0
    return v19

    .line 72
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v7

    .line 74
    .local v7, "isRow":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v19

    const-string v20, "camera_front_water_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0f0022

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 77
    .local v17, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "data2":[B
    const-string v19, "FrontCameraMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnLeSCFPictureTaken, value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", isRow = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v19, "on"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-nez v7, :cond_3

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 85
    .local v15, "size":Landroid/hardware/Camera$Size;
    iget v12, v15, Landroid/hardware/Camera$Size;->width:I

    .line 86
    .local v12, "previewW":I
    iget v11, v15, Landroid/hardware/Camera$Size;->height:I

    .line 88
    .local v11, "previewH":I
    invoke-static/range {p1 .. p1}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v4

    .line 89
    .local v4, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v4}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v9

    .line 91
    .local v9, "ori":I
    const-string v19, "FrontCameraMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnLeSCFPictureTaken, previewW = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", previewH = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", orientation = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->imageBytes2Bitmap(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 95
    .local v16, "src":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v19

    check-cast v19, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getmFrontView()Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v5

    .line 96
    .local v5, "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/front/FrontView;->getWaterPanel()Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    move-result-object v6

    .line 98
    .local v6, "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    iget v14, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .local v14, "screenWidth":I
    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 103
    .local v13, "screenHeight":I
    const-string v19, "FrontCameraMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnLeSCFPictureTaken, 1111screenWidth = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", screenHeight = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v19

    const-string v20, "camera_front_setting_picture_size_key"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0f002d

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 107
    .local v18, "valuePictureSize":Ljava/lang/String;
    const-string v19, "FrontCameraMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnLeSCFPictureTaken, valuePictureSize = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v19, "4x3"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 109
    mul-int/lit8 v19, v13, 0x3

    div-int/lit8 v13, v19, 0x4

    .line 111
    :cond_1
    const-string v19, "FrontCameraMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "OnLeSCFPictureTaken, 2222screenWidth = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", screenHeight = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, v16

    invoke-static {v0, v9, v13, v14, v6}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->createWaterBitmap(Landroid/graphics/Bitmap;IIILcom/lenovo/scg/camera/front/FrontWaterPanel;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 113
    .local v3, "des":Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 115
    const-string v20, "FrontCameraMode"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "data2 = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    if-eqz v2, :cond_2

    array-length v0, v2

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v3    # "des":Landroid/graphics/Bitmap;
    .end local v4    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v5    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .end local v6    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "ori":I
    .end local v11    # "previewH":I
    .end local v12    # "previewW":I
    .end local v13    # "screenHeight":I
    .end local v14    # "screenWidth":I
    .end local v15    # "size":Landroid/hardware/Camera$Size;
    .end local v16    # "src":Landroid/graphics/Bitmap;
    .end local v18    # "valuePictureSize":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v10}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 122
    .local v10, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    check-cast v19, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface/range {v19 .. v19}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 124
    iput-object v2, v10, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->getSavePicNeedMirror()Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/lenovo/scg/camera/MediaSavePara;->mirror:Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->getSavePicNeedTrim11()Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v10, Lcom/lenovo/scg/camera/MediaSavePara;->trim11:Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 131
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 115
    .end local v10    # "para":Lcom/lenovo/scg/camera/MediaSavePara;
    .restart local v3    # "des":Landroid/graphics/Bitmap;
    .restart local v4    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .restart local v5    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .restart local v6    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .restart local v8    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "ori":I
    .restart local v11    # "previewH":I
    .restart local v12    # "previewW":I
    .restart local v13    # "screenHeight":I
    .restart local v14    # "screenWidth":I
    .restart local v15    # "size":Landroid/hardware/Camera$Size;
    .restart local v16    # "src":Landroid/graphics/Bitmap;
    .restart local v18    # "valuePictureSize":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 117
    .end local v3    # "des":Landroid/graphics/Bitmap;
    .end local v4    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v5    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .end local v6    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v9    # "ori":I
    .end local v11    # "previewH":I
    .end local v12    # "previewW":I
    .end local v13    # "screenHeight":I
    .end local v14    # "screenWidth":I
    .end local v15    # "size":Landroid/hardware/Camera$Size;
    .end local v16    # "src":Landroid/graphics/Bitmap;
    .end local v18    # "valuePictureSize":Ljava/lang/String;
    :cond_3
    move-object/from16 v2, p1

    goto :goto_2
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 229
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->enter(Landroid/content/Context;)V

    .line 149
    const-string v2, "FrontCameraMode"

    const-string v3, "enter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 151
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v1

    .line 152
    .local v1, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 153
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->enter(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 158
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mIsSupportZSD:Z

    .line 160
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$DataCallbackListener;)V

    .line 161
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->setOnNotifyListener(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$OnNotifyListener;)V

    .line 163
    const-string v2, "FrontCameraMode enter"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected exit()V
    .locals 5

    .prologue
    .line 168
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->exit()V

    .line 169
    const-string v3, "FrontCameraMode"

    const-string v4, "exit"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "FrontCameraMode exit"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v2

    .line 173
    .local v2, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 176
    .local v0, "para":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoController;

    .line 179
    .local v1, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 181
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->reset()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->exit(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method protected getLeSCFBaseModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    return-object v0
.end method

.method public getSavePicNeedMirror()Z
    .locals 5

    .prologue
    .line 271
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_front_mirror"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    const v4, 0x7f0f002a

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "value":Ljava/lang/String;
    const-string v1, "FrontCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePicNeedMirror\uff0cvalue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavePicNeedTrim11()Z
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    .line 256
    .local v0, "isSettingTrim11":Z
    const-string v1, "FrontCameraMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSavePicNeedTrim11\uff0cvalue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v0
.end method

.method public getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v0

    .line 196
    .local v0, "stub":Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->getSupportZSD()Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mIsSupportZSD:Z

    .line 198
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v1

    return-object v1
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->exit()V

    .line 239
    sget-boolean v0, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeforeTakePicture()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/LeSCFCaptureMode;->onBeforeTakePicture()V

    .line 137
    const-string v0, "FrontCameraMode"

    const-string/jumbo v1, "onBeforeTakePicture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/FrontCameraMode;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->startLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 234
    return-void
.end method
