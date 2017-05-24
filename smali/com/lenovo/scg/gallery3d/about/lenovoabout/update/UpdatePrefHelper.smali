.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;
.super Ljava/lang/Object;
.source "UpdatePrefHelper.java"


# static fields
.field public static final FILE_LAST_QUERY_RESULT:Ljava/lang/String; = "last_query_result"

.field public static final PREF_BACKGROUND_DATA_PROMPT_AGAIN:Ljava/lang/String; = "background_data_prompt"

.field public static final PREF_IS_UPGRADE_BUTTON_CLICKED:Ljava/lang/String; = "about_update_click"

.field public static final PREF_LAST_CHECK_UPDATE_TIME:Ljava/lang/String; = "last_check_update_time"

.field public static final PREF_LAST_PROMT_VERSION_CODE:Ljava/lang/String; = "newversion_prompt_code"

.field public static final PREF_LAST_UPDATE_INFO_FETCHED_TIME:Ljava/lang/String; = "last_update_info_fetched_time"

.field public static final PREF_LAST_UPDATE_VERSION_CODE:Ljava/lang/String; = "update_vercode"

.field public static final PREF_PROMT_NEW_VERSION:Ljava/lang/String; = "newversion_prompt"

.field public static final SHARED_PREF_NAME_ABOUT:Ljava/lang/String; = "update_config_about"

.field public static final SHARED_PREF_NAME_UPDATE_INFO:Ljava/lang/String; = "update_info"

.field static sSuffixToUpdateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mPrefNameSuffix:Ljava/lang/String;

.field mSharedPrefAbout:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->sSuffixToUpdateInfo:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mContext:Landroid/content/Context;

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update_config_about"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    .line 44
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->sSuffixToUpdateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 162
    return-void
.end method

.method public clearLastLastUpdateInfo()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->sSuffixToUpdateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLastCheckUpdateTime()J
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string v1, "last_check_update_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastPromtVersionCode()I
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "newversion_prompt_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->sSuffixToUpdateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    return-object v0
.end method

.method public getLastUpdateInfoFetchedTime()J
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string v1, "last_update_info_fetched_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdateVersionCode()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "update_vercode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBackGroundDataDontPromt()Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string v1, "background_data_prompt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCmccDontPromt(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pref_promt"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPromtNewVersion()Z
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "newversion_prompt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUpgradeButtonClicked()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mSharedPrefAbout:Landroid/content/SharedPreferences;

    const-string v2, "about_update_click"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setBackGroundDataDontPromt()V
    .locals 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "background_data_prompt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method public setCmccDontPromt(Ljava/lang/String;)V
    .locals 2
    .param p1, "pref_promt"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method public setLastCheckUpdateTime(J)V
    .locals 3
    .param p1, "lastCheckUpdateTime"    # J

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_check_update_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    return-void
.end method

.method public setLastPromtVersionCode(I)V
    .locals 2
    .param p1, "versionCode"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "newversion_prompt_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    return-void
.end method

.method public setLastUpdateInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 2
    .param p1, "updateInfoItem"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 126
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->sSuffixToUpdateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->mPrefNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public setLastUpdateInfoFetchedTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_info_fetched_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void
.end method

.method public setLastUpdateVersionCode(I)V
    .locals 2
    .param p1, "versionCode"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "update_vercode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public setPromtNewVersion(Z)V
    .locals 2
    .param p1, "promt"    # Z

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "newversion_prompt"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    return-void
.end method

.method public setUpgradeButtonClicked(Z)V
    .locals 2
    .param p1, "clicked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "about_update_click"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return-void
.end method
