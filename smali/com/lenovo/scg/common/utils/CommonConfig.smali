.class public Lcom/lenovo/scg/common/utils/CommonConfig;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private static getBooleanConfig(I)Z
    .locals 1
    .param p0, "conf_id"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->getAppResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isAvatarShareReportSupported()Z
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0b0031

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isAvatarSuppored()Z
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0b0030

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isCarrieroperatorDemanded()Z
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0b0034

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isGalleryUserGuideSupported()Z
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0b0033

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isHardwareaccelerated()Z
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0b0036

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isSUSupdateSupported()Z
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0b0032

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFocusResultDisplay()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "developer_setting_focus_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportMonitorWindow()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "developer_setting_monitor_key"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    .local v0, "isDeveloperChecked":Z
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "developer_setting_monitor_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    .end local v0    # "isDeveloperChecked":Z
    :goto_0
    return v0

    .restart local v0    # "isDeveloperChecked":Z
    :cond_0
    const v1, 0x7f0b0037

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUserGuideShowWeibo()Z
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f0b0035

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method

.method public static isWeiboShieldSupported()Z
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0b0039

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/CommonConfig;->getBooleanConfig(I)Z

    move-result v0

    return v0
.end method
