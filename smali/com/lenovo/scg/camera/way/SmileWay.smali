.class public Lcom/lenovo/scg/camera/way/SmileWay;
.super Lcom/lenovo/scg/camera/way/CaptureWay;
.source "SmileWay.java"


# static fields
.field private static final SMILE_CAPTURE_VALID_VALUE:I = 0x28


# instance fields
.field private final CAPTURE_TIME_SPACE:I

.field public final FIELD_SMILE_LEVEL_0:Ljava/lang/String;

.field private final FIELD_SMILE_LEVEL_1:Ljava/lang/String;

.field private final FIELD_SMILE_LEVEL_2:Ljava/lang/String;

.field private final MSG_SET_CAPTURE_ENABLE:I

.field private final TAG:Ljava/lang/String;

.field private mCaptureEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private smileLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;-><init>()V

    .line 20
    const-string v0, "SmileMode"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->TAG:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "smileDegree"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->FIELD_SMILE_LEVEL_0:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "smilelevel"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->FIELD_SMILE_LEVEL_1:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "smile_level"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->FIELD_SMILE_LEVEL_2:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->smileLevel:I

    .line 33
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->CAPTURE_TIME_SPACE:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->MSG_SET_CAPTURE_ENABLE:I

    .line 41
    new-instance v0, Lcom/lenovo/scg/camera/way/SmileWay$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/SmileWay$1;-><init>(Lcom/lenovo/scg/camera/way/SmileWay;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/way/SmileWay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/SmileWay;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 65
    return-void
.end method

.method public bridge synthetic getShtterTimer()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v0

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 8
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v7, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    array-length v4, p1

    if-eqz v4, :cond_0

    .line 88
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    if-eqz v4, :cond_0

    .line 89
    iput v7, p0, Lcom/lenovo/scg/camera/way/SmileWay;->smileLevel:I

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v4, "android.hardware.Camera$Face"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_1
    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "cameraFace":Ljava/lang/reflect/Field;
    :try_start_1
    const-string/jumbo v4, "smileDegree"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 122
    :goto_2
    if-eqz v0, :cond_0

    .line 125
    const/4 v4, 0x0

    :try_start_2
    aget-object v4, p1, v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/lenovo/scg/camera/way/SmileWay;->smileLevel:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6

    .line 135
    :goto_3
    const-string v4, "SmileMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smileLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lenovo/scg/camera/way/SmileWay;->smileLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v4, p0, Lcom/lenovo/scg/camera/way/SmileWay;->smileLevel:I

    const/16 v5, 0x28

    if-le v4, v5, :cond_0

    .line 137
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 138
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/SmileWay;->clickShutterButton()V

    goto :goto_0

    .line 94
    .end local v0    # "cameraFace":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SmileMode"

    const-string v5, "android.hardware.Camera$Face: CLASS NOT FOUND !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cameraFace":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "SmileMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFiled: smileDegree : Illegel ARG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 108
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "SmileMode"

    const-string v5, "No smileDegree Field Found !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_3
    const-string/jumbo v4, "smilelevel"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_2

    .line 113
    :catch_3
    move-exception v3

    .line 116
    .local v3, "e1":Ljava/lang/IllegalArgumentException;
    const-string v4, "SmileMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFiled: smilelevel : Illegel ARG: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 117
    .end local v3    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 119
    .local v3, "e1":Ljava/lang/NoSuchFieldException;
    const-string v4, "SmileMode"

    const-string v5, "No smilelevel Field Found !!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .end local v3    # "e1":Ljava/lang/NoSuchFieldException;
    :catch_5
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "SmileMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get smileLevel IllegalArgument ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 130
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "SmileMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get smileLevel IllegalAccess ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 77
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/SmileWay;->mCaptureEnable:Z

    .line 59
    return-void
.end method

.method public bridge synthetic set3sDelayMust(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->set3sDelayMust(Z)V

    return-void
.end method

.method public bridge synthetic setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V

    return-void
.end method
