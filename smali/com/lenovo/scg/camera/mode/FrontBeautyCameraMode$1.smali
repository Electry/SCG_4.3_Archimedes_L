.class Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;
.super Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;
.source "FrontBeautyCameraMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->handleBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;[B)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->val$data:[B

    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->handle()[B

    move-result-object v0

    return-object v0
.end method

.method public handle()[B
    .locals 43

    .prologue
    .line 99
    const-string v6, "FrontBeautyCameraMode"

    const-string v7, "handleBeautyFace, handle!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v29

    .line 102
    .local v29, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v30

    .line 103
    .local v30, "mPictureSize":Landroid/hardware/Camera$Size;
    invoke-virtual/range {v29 .. v29}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v31

    .line 105
    .local v31, "mPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_front_beauty"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v8

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v8

    const v9, 0x7f0f0029

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 108
    .local v42, "valuex":Ljava/lang/String;
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "valuex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v28, 0x0

    .line 111
    .local v28, "jpegData1":[B
    const-string/jumbo v6, "off"

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 113
    move-object/from16 v0, v30

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v30

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    new-array v10, v6, [B

    .line 114
    .local v10, "tmpBuffer":[B
    new-instance v5, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;

    invoke-direct {v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;-><init>()V

    .line 115
    .local v5, "pLeImageDecoder":Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;
    invoke-virtual {v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Init()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->val$data:[B

    sget v7, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    move-object/from16 v0, v30

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v30

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual/range {v5 .. v10}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->DecodeImage([BIII[B)I

    .line 118
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$200(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v30

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7, v10, v8, v9}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFaceToFaceInfo(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)V

    .line 120
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v24

    .line 121
    .local v24, "faceNumber":I
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "faceNumber = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->val$data:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$100(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceOrients()[I

    move-result-object v16

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getOrientation()I

    move-result v21

    # invokes: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->beautyProcess(Landroid/content/Context;[B[Landroid/graphics/Rect;I[IIIIII)[B
    invoke-static/range {v11 .. v21}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$300(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;Landroid/content/Context;[B[Landroid/graphics/Rect;I[IIIIII)[B

    move-result-object v28

    .line 127
    invoke-virtual {v5}, Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;->Finish()V

    .line 133
    .end local v5    # "pLeImageDecoder":Lcom/lenovo/scg/LeImageJI/CLeImageDecoder;
    .end local v10    # "tmpBuffer":[B
    .end local v24    # "faceNumber":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iget-object v6, v6, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v27

    .line 135
    .local v27, "isRow":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iget-object v6, v6, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_front_water_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iget-object v8, v8, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0022

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 140
    .local v40, "value":Ljava/lang/String;
    const-string/jumbo v6, "on"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v27, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v38

    .line 144
    .local v38, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v35, v0

    .line 145
    .local v35, "previewW":I
    move-object/from16 v0, v38

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v34, v0

    .line 147
    .local v34, "previewH":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->val$data:[B

    invoke-static {v6}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v23

    .line 148
    .local v23, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v33

    .line 150
    .local v33, "ori":I
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previewW = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", previewH = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", orientation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iget-object v6, v6, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->imageBytes2Bitmap(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 154
    .local v39, "src":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v6

    check-cast v6, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getmFrontView()Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v25

    .line 155
    .local v25, "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/camera/front/FrontView;->getWaterPanel()Lcom/lenovo/scg/camera/front/FrontWaterPanel;

    move-result-object v26

    .line 157
    .local v26, "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    new-instance v32, Landroid/util/DisplayMetrics;

    invoke-direct/range {v32 .. v32}, Landroid/util/DisplayMetrics;-><init>()V

    .line 158
    .local v32, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v37, v0

    .line 161
    .local v37, "screenWidth":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v36, v0

    .line 162
    .local v36, "screenHeight":I
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screenHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    # getter for: Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/NormalModeController;
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->access$000(Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;)Lcom/lenovo/scg/camera/mode/controller/NormalModeController;

    move-result-object v6

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/NormalModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_front_setting_picture_size_key"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->this$0:Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;

    iget-object v8, v8, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode;->mContext:Landroid/content/Context;

    const v9, 0x7f0f002d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 166
    .local v41, "valuePictureSize":Ljava/lang/String;
    const-string v6, "FrontBeautyCameraMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OnLeSCFPictureTaken, valuePictureSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v6, "4x3"

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    mul-int/lit8 v6, v36, 0x3

    div-int/lit8 v36, v6, 0x4

    .line 171
    :cond_1
    move-object/from16 v0, v39

    move/from16 v1, v33

    move/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->createWaterBitmap(Landroid/graphics/Bitmap;IIILcom/lenovo/scg/camera/front/FrontWaterPanel;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 172
    .local v22, "des":Landroid/graphics/Bitmap;
    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v28

    .line 174
    const-string v7, "FrontBeautyCameraMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jpegData1 = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v28, :cond_4

    move-object/from16 v0, v28

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v22    # "des":Landroid/graphics/Bitmap;
    .end local v23    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v25    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .end local v26    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .end local v32    # "metrics":Landroid/util/DisplayMetrics;
    .end local v33    # "ori":I
    .end local v34    # "previewH":I
    .end local v35    # "previewW":I
    .end local v36    # "screenHeight":I
    .end local v37    # "screenWidth":I
    .end local v38    # "size":Landroid/hardware/Camera$Size;
    .end local v39    # "src":Landroid/graphics/Bitmap;
    .end local v41    # "valuePictureSize":Ljava/lang/String;
    :cond_2
    return-object v28

    .line 130
    .end local v27    # "isRow":Z
    .end local v40    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/FrontBeautyCameraMode$1;->val$data:[B

    move-object/from16 v28, v0

    goto/16 :goto_0

    .line 174
    .restart local v22    # "des":Landroid/graphics/Bitmap;
    .restart local v23    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .restart local v25    # "frontView":Lcom/lenovo/scg/camera/front/FrontView;
    .restart local v26    # "fwp":Lcom/lenovo/scg/camera/front/FrontWaterPanel;
    .restart local v27    # "isRow":Z
    .restart local v32    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v33    # "ori":I
    .restart local v34    # "previewH":I
    .restart local v35    # "previewW":I
    .restart local v36    # "screenHeight":I
    .restart local v37    # "screenWidth":I
    .restart local v38    # "size":Landroid/hardware/Camera$Size;
    .restart local v39    # "src":Landroid/graphics/Bitmap;
    .restart local v40    # "value":Ljava/lang/String;
    .restart local v41    # "valuePictureSize":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method
