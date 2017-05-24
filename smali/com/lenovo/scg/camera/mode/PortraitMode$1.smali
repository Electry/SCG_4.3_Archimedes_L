.class Lcom/lenovo/scg/camera/mode/PortraitMode$1;
.super Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;
.source "PortraitMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/PortraitMode;->handleLiteBeautyFace([BLcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
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
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/PortraitMode;[B)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->val$data:[B

    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->handle()[B

    move-result-object v0

    return-object v0
.end method

.method public handle()[B
    .locals 26

    .prologue
    .line 241
    const-string v21, "PortraitMode"

    const-string v22, "handleBeautyFace, handle!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 244
    .local v6, "mSize":Landroid/hardware/Camera$Size;
    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    .line 245
    .local v10, "pictureW":I
    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    .line 246
    .local v9, "pictureH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$000(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/controller/PortraitModeController;->getOrientation()I

    move-result v7

    .line 248
    .local v7, "ori":I
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onPictureTaken, org -- pictureW = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pictureH = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", ori = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$100(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z

    move-result v21

    if-nez v21, :cond_1

    if-eqz v7, :cond_0

    const/16 v21, 0xb4

    move/from16 v0, v21

    if-ne v7, v0, :cond_1

    .line 251
    :cond_0
    move v11, v9

    .line 252
    .local v11, "tmp":I
    move v9, v10

    .line 253
    move v10, v11

    .line 255
    .end local v11    # "tmp":I
    :cond_1
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onPictureTaken, new -- pictureW = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pictureH = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", ori = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 259
    .local v12, "time1":J
    const/16 v20, 0x0

    .line 260
    .local v20, "yuvData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mIsOneShot:Z
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$100(Lcom/lenovo/scg/camera/mode/PortraitMode;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->val$data:[B

    move-object/from16 v20, v0

    .line 265
    :goto_0
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "time1-------------jgeg2yuv with time is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v12

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v21, "PortraitMode"

    const-string v22, "----------------fd"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 302
    .local v14, "time2":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mSync:[B
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$200(Lcom/lenovo/scg/camera/mode/PortraitMode;)[B

    move-result-object v22

    monitor-enter v22

    .line 303
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$300(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$300(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v10, v9}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFaceToFaceInfo(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)V

    .line 310
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "time2-------------detect face with time is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v5

    .line 314
    .local v5, "faceNumber":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v21

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 315
    :cond_2
    const-string v21, "PortraitMode"

    const-string v22, "faceNumber < 1, no detect face!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    # setter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z
    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$502(Lcom/lenovo/scg/camera/mode/PortraitMode;Z)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->val$data:[B

    .line 365
    .end local v5    # "faceNumber":I
    :goto_1
    return-object v4

    .line 263
    .end local v14    # "time2":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->val$data:[B

    move-object/from16 v21, v0

    sget v22, Lcom/lenovo/scg/LeImageJI/CLeImageColorFormat;->YVU420sp:I

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v10, v9, v1}, Lcom/lenovo/scg/common/utils/image/ConvertUtils;->JPEG2YUV([BIII)[B

    move-result-object v20

    goto/16 :goto_0

    .line 306
    .restart local v14    # "time2":J
    :cond_4
    :try_start_1
    const-string v21, "PortraitMode"

    const-string v23, "mDetectJNI = null!! return!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    # setter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$502(Lcom/lenovo/scg/camera/mode/PortraitMode;Z)Z

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->val$data:[B

    monitor-exit v22

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 321
    .restart local v5    # "faceNumber":I
    :cond_5
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "faceNumber = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v8, Lcom/lenovo/scg/camera/agender/AgenderParams;

    invoke-direct {v8}, Lcom/lenovo/scg/camera/agender/AgenderParams;-><init>()V

    .line 331
    .local v8, "params":Lcom/lenovo/scg/camera/agender/AgenderParams;
    iput v5, v8, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$400(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/common/utils/FaceInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceOrients()[I

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v8, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 350
    .local v16, "time3":J
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "time3-------------detect gender with time is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v16

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceBeauty:Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$600(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->setAgenderParams(Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 362
    .local v18, "time4":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mFaceBeauty:Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$600(Lcom/lenovo/scg/camera/mode/PortraitMode;)Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v9, v7}, Lcom/lenovo/scg/camera/facebeauty/FaceLiteBeauty;->processStaticImageBeautyFace([BIII)[B

    move-result-object v4

    .line 363
    .local v4, "data2":[B
    const-string v21, "PortraitMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "time4-------------face beauty with time is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/PortraitMode$1;->this$0:Lcom/lenovo/scg/camera/mode/PortraitMode;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/PortraitMode;->mSaveOrignData:Z
    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/camera/mode/PortraitMode;->access$502(Lcom/lenovo/scg/camera/mode/PortraitMode;Z)Z

    goto/16 :goto_1
.end method
