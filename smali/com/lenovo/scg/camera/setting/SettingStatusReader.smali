.class public Lcom/lenovo/scg/camera/setting/SettingStatusReader;
.super Ljava/lang/Object;
.source "SettingStatusReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    }
.end annotation


# static fields
.field private static isBigWheelShow:Z

.field private static isCanWatchBack:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isCanWatchBack:Z

    .line 28
    sput-boolean v0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isBigWheelShow:Z

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 1
    .param p1, "mController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 54
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static isBigWheelShow()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isBigWheelShow:Z

    return v0
.end method

.method public static isCanWatchBack()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isCanWatchBack:Z

    return v0
.end method

.method public static setBigWheelShow(Z)V
    .locals 0
    .param p0, "isBigWheelShow"    # Z

    .prologue
    .line 49
    sput-boolean p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isBigWheelShow:Z

    .line 50
    return-void
.end method

.method public static setCanWatchBack(Z)V
    .locals 0
    .param p0, "isCanWatchBack"    # Z

    .prologue
    .line 89
    sput-boolean p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isCanWatchBack:Z

    .line 90
    return-void
.end method


# virtual methods
.method public isShutterSoundOn()Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_shutter_voice_key"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSquarePicOn()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 68
    .local v0, "mSharedPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v0, :cond_0

    .line 69
    const-string v3, "camera_setting_square_pic_key"

    const-string/jumbo v4, "off"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "mSquarePic":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 73
    .end local v1    # "mSquarePic":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public isWaterLevelShowed()Z
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_flash_key"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readGouTuLineStatus()Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;-><init>(Lcom/lenovo/scg/camera/setting/SettingStatusReader;)V

    .line 166
    .local v0, "mGouTuLineStatus":Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_goutu_line_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->setType(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public readTimeStampStatus()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "mSharedPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v0, :cond_1

    .line 96
    const-string v3, "camera_setting_time_print_key"

    const-string/jumbo v4, "off"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "mTimeStamp":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string/jumbo v1, "off"

    .line 102
    :cond_0
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 104
    .end local v1    # "mTimeStamp":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public readWatchBackStatus()Z
    .locals 6

    .prologue
    const v5, 0x7f0f001b

    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "mSharedPreferences":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    if-eqz v0, :cond_1

    .line 110
    const-string v3, "camera_setting_watch_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "mTimeStamp":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_0
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 119
    .end local v1    # "mTimeStamp":Ljava/lang/String;
    :cond_1
    return v2
.end method
