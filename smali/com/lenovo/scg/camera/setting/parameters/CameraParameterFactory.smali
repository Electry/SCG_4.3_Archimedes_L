.class public Lcom/lenovo/scg/camera/setting/parameters/CameraParameterFactory;
.super Ljava/lang/Object;
.source "CameraParameterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCameraParameters(Lcom/lenovo/scg/camera/setting/CameraSettingController;)Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;
    .locals 1
    .param p0, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 14
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->getCPUType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/parameters/IntelCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    goto :goto_0

    .line 19
    :pswitch_1
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/parameters/MtkCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    goto :goto_0

    .line 22
    :pswitch_2
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/parameters/SamsungCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    goto :goto_0

    .line 25
    :pswitch_3
    new-instance v0, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/parameters/QualcommCameraParameters;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
