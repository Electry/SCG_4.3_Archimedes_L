.class public Lcn/jingling/lib/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraId(Z)I
    .locals 8
    .param p0, "front"    # Z

    .prologue
    const/4 v5, -0x1

    .line 120
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 121
    .local v4, "numberOfCameras":I
    new-array v1, v4, [Landroid/hardware/Camera$CameraInfo;

    .line 122
    .local v1, "cameraInfo":[Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 127
    const/4 v0, -0x1

    .local v0, "backCameraId":I
    const/4 v2, -0x1

    .line 129
    .local v2, "frontCameraId":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_1

    .line 139
    if-eq v2, v5, :cond_4

    if-eqz p0, :cond_4

    .line 144
    .end local v2    # "frontCameraId":I
    :goto_2
    return v2

    .line 123
    .end local v0    # "backCameraId":I
    :cond_0
    new-instance v6, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v6}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v6, v1, v3

    .line 124
    aget-object v6, v1, v3

    invoke-static {v3, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .restart local v0    # "backCameraId":I
    .restart local v2    # "frontCameraId":I
    :cond_1
    if-ne v0, v5, :cond_3

    .line 131
    aget-object v6, v1, v3

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v6, :cond_3

    .line 132
    move v0, v3

    .line 129
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    :cond_3
    if-ne v2, v5, :cond_2

    .line 134
    aget-object v6, v1, v3

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 135
    move v2, v3

    goto :goto_3

    .line 141
    :cond_4
    if-eq v0, v5, :cond_5

    if-nez p0, :cond_5

    move v2, v0

    .line 142
    goto :goto_2

    :cond_5
    move v2, v5

    .line 144
    goto :goto_2
.end method

.method public static getDisplayOrientation(II)I
    .locals 5
    .param p0, "degrees"    # I
    .param p1, "cameraId"    # I

    .prologue
    .line 151
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 152
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 153
    const-string v2, "Orientation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "info.orientation=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 156
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 157
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 161
    :goto_0
    return v1

    .line 159
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 167
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return v1

    .line 171
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 173
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 175
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getGLRenderDirection(IZ)I
    .locals 5
    .param p0, "cameraDisplayOrientation"    # I
    .param p1, "isFrontCamera"    # Z

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "direction":I
    sparse-switch p0, :sswitch_data_0

    .line 116
    :goto_0
    return v0

    .line 103
    :sswitch_0
    if-eqz p1, :cond_0

    move v0, v1

    .line 104
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v1

    .line 103
    goto :goto_1

    .line 106
    :sswitch_1
    if-eqz p1, :cond_1

    move v0, v2

    .line 107
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 106
    goto :goto_2

    .line 109
    :sswitch_2
    if-eqz p1, :cond_2

    move v0, v4

    .line 110
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v4

    .line 109
    goto :goto_3

    .line 112
    :sswitch_3
    if-eqz p1, :cond_3

    move v0, v3

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    .line 101
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static getOptimalSize(Ljava/util/List;I)Landroid/hardware/Camera$Size;
    .locals 10
    .param p1, "pixelNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 19
    .local v2, "ret":Landroid/hardware/Camera$Size;
    const v0, 0x7fffffff

    .line 20
    .local v0, "delta":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 30
    return-object v2

    .line 20
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 21
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v5

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    const-wide v8, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_0

    .line 24
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 25
    .local v1, "diff":I
    if-ge v1, v0, :cond_0

    .line 26
    move-object v2, v3

    .line 27
    move v0, v1

    goto :goto_0
.end method

.method public static getPictureRotation(Landroid/content/Context;ZII)I
    .locals 6
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "front"    # Z
    .param p2, "screenDirection"    # I
    .param p3, "previewRotation"    # I

    .prologue
    .line 183
    const-string v3, "getPictureRotation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "front["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]--screenDirection["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]--previewRotation["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 192
    .local v0, "cameraFilp":Z
    div-int/lit8 v3, p3, 0x5a

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v1, v3, 0x4

    .line 193
    .local v1, "direction":I
    const-string v3, "getPictureRotation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "init direction["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "pictureOrientation":I
    if-eqz p1, :cond_0

    .line 198
    rsub-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v2, v3, 0x168

    .line 202
    :goto_0
    const-string v3, "getPictureRotation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "result pictureOrientation["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return v2

    .line 200
    :cond_0
    add-int/lit8 v3, v1, 0x1

    mul-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v2, v3, 0x168

    goto :goto_0
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 41
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 42
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 45
    .local v3, "rotation":I
    const/4 v0, 0x0

    .line 46
    .local v0, "degrees":I
    packed-switch v3, :pswitch_data_0

    .line 62
    :goto_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 63
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 64
    .local v2, "result":I
    rsub-int v4, v2, 0x168

    rem-int/lit16 v2, v4, 0x168

    .line 69
    :goto_1
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 70
    return-void

    .line 48
    .end local v2    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_1
    const/16 v0, 0x5a

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    const/16 v0, 0xb4

    .line 55
    goto :goto_0

    .line 57
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 66
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "result":I
    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setCameraPictureOrientation(IILandroid/hardware/Camera;)V
    .locals 6
    .param p0, "screenOrientation"    # I
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 79
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 80
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 81
    mul-int/lit8 v1, p0, 0x5a

    .line 82
    .local v1, "orientation":I
    const/4 v3, 0x0

    .line 83
    .local v3, "rotation":I
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 84
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 88
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 89
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 90
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 92
    return-void

    .line 86
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v1

    rem-int/lit16 v3, v4, 0x168

    goto :goto_0
.end method
