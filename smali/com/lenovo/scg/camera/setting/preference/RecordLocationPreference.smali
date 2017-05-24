.class public Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;
.super Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;
.source "RecordLocationPreference.java"


# static fields
.field public static final VALUE_NONE:Ljava/lang/String; = "none"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingIconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->mResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method public static get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 49
    const-string v1, "camera_setting_location_key"

    const-string/jumbo v2, "none"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSet(Landroid/content/SharedPreferences;)Z
    .locals 3
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 54
    const-string v1, "camera_setting_location_key"

    const-string/jumbo v2, "none"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->getCameraGlobSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method
