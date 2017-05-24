.class public Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;
.super Ljava/lang/Object;
.source "CloudSettingPreferences.java"


# static fields
.field private static final KEY_AUTO_SYNC:Ljava/lang/String; = "cloud is auto sync key"

.field private static final KEY_IS_COMPRESSION:Ljava/lang/String; = "cloud is compression key"

.field private static final KEY_JUST_WIFI:Ljava/lang/String; = "cloud is just wifi key"

.field private static final KEY_MOBILE_REMIND:Ljava/lang/String; = "cloud is remind 2G/3G key"

.field private static final KEY_WIFI_REMIND:Ljava/lang/String; = "cloud is remind wifi key"

.field private static volatile instance:Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;


# instance fields
.field private final DEFAULT_AUTO_SYNC:Z

.field private final DEFAULT_IS_COMPRESSION:Z

.field private final DEFAULT_JUST_WIFI:Z

.field private final DEFAULT_MOBILE_REMIND:Z

.field private final DEFAULT_WIFI_REMIND:Z

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->DEFAULT_AUTO_SYNC:Z

    .line 32
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->DEFAULT_JUST_WIFI:Z

    .line 33
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->DEFAULT_IS_COMPRESSION:Z

    .line 34
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->DEFAULT_WIFI_REMIND:Z

    .line 35
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->DEFAULT_MOBILE_REMIND:Z

    .line 38
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryLocalPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    if-nez v0, :cond_1

    .line 13
    const-class v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    .line 17
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->instance:Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isAutoSync(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cloud is auto sync key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public isAutoSync()Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud is auto sync key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCompression(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 63
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cloud is compression key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public isCompression()Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud is compression key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isJustWifi(Z)V
    .locals 2
    .param p1, "is"    # Z

    .prologue
    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cloud is just wifi key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public isJustWifi()Z
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud is just wifi key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public remindMobile(Z)V
    .locals 2
    .param p1, "remind"    # Z

    .prologue
    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cloud is remind 2G/3G key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public remindMobile()Z
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud is remind 2G/3G key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public remindWifi(Z)V
    .locals 2
    .param p1, "remind"    # Z

    .prologue
    .line 73
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cloud is remind wifi key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public remindWifi()Z
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud is remind wifi key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
