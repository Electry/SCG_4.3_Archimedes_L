.class public Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;
.super Ljava/lang/Object;
.source "PhotoSettingManager.java"


# static fields
.field public static final LENOVO_SYNC_PACKAGE_NAME:Ljava/lang/String; = "com.lenovo.leos.cloud.sync"

.field public static final PREFERENCE_NAME:Ljava/lang/String; = "com_lenovo_photo_setting_preference"

.field public static final SYS_PHOTO_IS_AUTO_SYNC:Ljava/lang/String; = "SYS_PHOTO_IS_AUTO_SYNC"

.field public static final SYS_PHOTO_IS_AUTO_SYNC_WLAN:Ljava/lang/String; = "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

.field private static final TAG:Ljava/lang/String; = "PhotoSettingManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContainsPhotoSettings()Z
    .locals 1

    .prologue
    .line 45
    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static contains(Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "retVal":Z
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v2, "PhotoSettingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexcepted Exception in method existsConfigItem:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getPreference()Landroid/content/SharedPreferences;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getInstance()Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "currentAppContext":Landroid/content/Context;
    move-object v1, v0

    .line 84
    .local v1, "lenovoSynContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lenovo.leos.cloud.sync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "com.lenovo.leos.cloud.sync"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 87
    :cond_0
    const-string v2, "com_lenovo_photo_setting_preference"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    return-object v2
.end method

.method private static readBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 60
    move v1, p1

    .line 62
    .local v1, "retVal":Z
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string v2, "PhotoSettingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexcepted Exception in method readBoolean:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readPhotoAutoSyncIsOpen(Z)Z
    .locals 1
    .param p0, "defValue"    # Z

    .prologue
    .line 29
    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readPhotoAutoSyncWlanIsOpen(Z)Z
    .locals 1
    .param p0, "defValue"    # Z

    .prologue
    .line 33
    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static saveBoolean(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->getPreference()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 51
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v2, "PhotoSettingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexcepted Exception in method saveBoolean:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writePhotoAutoSyncIsOpen(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 37
    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public static writePhotoAutoSyncWlanIsOpen(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 41
    const-string v0, "SYS_PHOTO_IS_AUTO_SYNC_WLAN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/storage/photo/util/PhotoSettingManager;->saveBoolean(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method
