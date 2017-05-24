.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
.super Ljava/lang/Object;
.source "AboutConfig.java"


# static fields
.field public static final ACTION_AUTO_CHECK_UPDATE_ALARM:Ljava/lang/String; = "android.intent.action.START_SUS_Update"

.field public static final BACKGROUND_DATA_ENABLE_BY_DEFAULT:Z

.field public static final CMCC_BY_DEFAULT:Z

.field public static final CTA_BY_DEFAULT:Z

.field public static final PREF_ACTIONBAR_THEME:Ljava/lang/String; = "actionbar_theme"

.field public static final PREF_APP_ICON:Ljava/lang/String; = "app_icon"

.field public static final PREF_APP_NAME:Ljava/lang/String; = "app_name"

.field public static final PREF_AUTO_CHECK_UPDATE_ALARM_TIME:Ljava/lang/String; = "auto_check_update_alarm_time"

.field public static final PREF_AUTO_CHECK_UPDATE_ONLY_WIFI:Ljava/lang/String; = "auto_check_update_only_wifi"

.field public static final PREF_AUTO_CHECK_UPDATE_ON_ABOUT_ACTIVITY_CREATE:Ljava/lang/String; = "auto_check_update_on_about_activity_create"

.field public static final PREF_AUTO_CHECK_UPDATE_ON_WIFI_CONNECTED:Ljava/lang/String; = "auto_check_update_on_wifi_connected"

.field public static final PREF_BACKGROUND_DATA_ENABLE:Ljava/lang/String; = "background_data_enable"

.field public static final PREF_BBS:Ljava/lang/String; = "bbs"

.field public static final PREF_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PREF_CMCC:Ljava/lang/String; = "cmcc"

.field public static final PREF_CTA:Ljava/lang/String; = "cta"

.field public static final PREF_EMAIL:Ljava/lang/String; = "email"

.field public static final PREF_MIN_CHECK_INTERVAL:Ljava/lang/String; = "min_check_interval_time"

.field public static final PREF_QQ_GROUP:Ljava/lang/String; = "qq_group"

.field public static final PREF_ROW:Ljava/lang/String; = "row"

.field public static final PREF_SECOND_CHECK_UPDATE_APP:Ljava/lang/String; = "second_package_name"

.field public static final PREF_SHOW_CHECK_UPDATE:Ljava/lang/String; = "show_check_update"

.field public static final PREF_SHOW_FEEDBACK:Ljava/lang/String; = "show_feedback"

.field public static final PREF_SUB_APPS:Ljava/lang/String; = "sub_apps"

.field public static final PREF_THEME:Ljava/lang/String; = "theme"

.field public static final PREF_UPDATE_NOTIFICATION_SMALL_ICON:Ljava/lang/String; = "icon_update_status_bar"

.field public static final PREF_WEBSITE:Ljava/lang/String; = "website"

.field public static final PREF_WEIBO:Ljava/lang/String; = "weibo"

.field public static final PREF_WEIBO_URL:Ljava/lang/String; = "weibo_url"

.field public static final PREF_WEIXIN:Ljava/lang/String; = "winxin"

.field public static final ROW_BY_DEFAULT:Z

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "about_config"

.field public static final THEME_DARK:Ljava/lang/String; = "dark"

.field public static final THEME_LIGHT:Ljava/lang/String; = "light"


# instance fields
.field isDebugModeByDefault:Z

.field mCollectionHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;

.field mContext:Landroid/content/Context;

.field mPendingEditor:Landroid/content/SharedPreferences$Editor;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemVersion;->isRow()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->ROW_BY_DEFAULT:Z

    .line 55
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemVersion;->isCmcc()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->CMCC_BY_DEFAULT:Z

    .line 56
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemVersion;->isCta()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->CTA_BY_DEFAULT:Z

    .line 57
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemVersion;->isBackgroundDataEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->BACKGROUND_DATA_ENABLE_BY_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mCollectionHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;

    .line 76
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    const-string v1, "about_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isDebugModeByDefault:Z

    .line 79
    return-void
.end method

.method private checkConfigs()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v7

    .line 111
    .local v7, "row":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v5

    .line 112
    .local v5, "cmcc":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v4

    .line 113
    .local v4, "background_data":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCTA()Z

    move-result v6

    .line 115
    .local v6, "cta":Z
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 116
    const-string v8, "AboutConfig"

    const-string v9, "commit: both row and cmcc"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnAboutActivityCreate()Z

    move-result v2

    .line 120
    .local v2, "auto_check_update_on_about_create":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnWiFiConnected()Z

    move-result v3

    .line 121
    .local v3, "auto_check_update_on_wifi_connected":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAutoCheckUpdateByTime()J

    move-result-wide v0

    .line 123
    .local v0, "auto_check_update_alarm_time":J
    if-nez v7, :cond_1

    if-nez v5, :cond_1

    if-nez v4, :cond_4

    .line 125
    :cond_1
    if-eqz v2, :cond_2

    .line 126
    const-string v8, "AboutConfig"

    const-string v9, "commit: auto_check_update_on_about_create should be false when row or cmcc."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnAboutActivityCreate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 129
    :cond_2
    if-eqz v3, :cond_3

    .line 130
    const-string v8, "AboutConfig"

    const-string v9, "commit: auto_check_update_on_wifi_connected should be false when row or cmcc."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnWiFiConnected(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 133
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_4

    .line 134
    const-string v8, "AboutConfig"

    const-string v9, "commit: auto_check_update_alarm_time < 0 when row or cmcc."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide/16 v8, -0x1

    invoke-virtual {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateByTime(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 139
    :cond_4
    if-nez v7, :cond_5

    if-eqz v5, :cond_6

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isShowCheckUpdate()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 141
    const-string v8, "AboutConfig"

    const-string v9, "checkConfigs: CheckUpdate is invisible"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->showCheckUpdate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 147
    :cond_6
    if-eqz v7, :cond_7

    .line 148
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isShowFeedback()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 149
    const-string v8, "AboutConfig"

    const-string v9, "checkConfigs: Feedback is invisible"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->showFeedback(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 154
    :cond_7
    if-eqz v7, :cond_8

    .line 155
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->QQGroup(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 156
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weibo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 157
    const-string v8, ""

    invoke-virtual {p0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->weixin(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isShowCheckUpdate()Z

    move-result v8

    if-nez v8, :cond_9

    .line 161
    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->autoCheckUpdateOnAboutActivityCreate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 164
    :cond_9
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->checkSubApps()V

    .line 166
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    return-void
.end method

.method private checkSubApps()V
    .locals 7

    .prologue
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "subApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSubApps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 174
    .local v0, "checkUpdates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    const-string v4, "AboutConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConfigs: remove duplicate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->subApps(Ljava/util/List;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 188
    return-void
.end method

.method private getAutoCheckUpdateAlarmPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.START_SUS_Update"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public BBS(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "bbs"    # Ljava/lang/String;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bbs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 474
    return-object p0
.end method

.method public QQGroup(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "QQGroup"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "qq_group"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 434
    return-object p0
.end method

.method public actionBarTheme(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actionbar_theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    return-object p0
.end method

.method public appIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "appIcon"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 403
    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    return-object p0
.end method

.method public autoCheckUpdateByTime(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_check_update_alarm_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 507
    return-object p0
.end method

.method public autoCheckUpdateOnAboutActivityCreate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "autoCheckUpdate"    # Z

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_check_update_on_about_activity_create"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    return-object p0
.end method

.method public autoCheckUpdateOnWiFiConnected(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "autoCheckUpdate"    # Z

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_check_update_on_wifi_connected"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    return-object p0
.end method

.method public autoCheckUpdateOnlyWiFi(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "onlyWiFi"    # Z

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_check_update_only_wifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 331
    return-object p0
.end method

.method public backgroundDataEnable(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "background_data_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    return-object p0
.end method

.method cancelAutoCheckUpdateAlarm()V
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 479
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAutoCheckUpdateAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 480
    return-void
.end method

.method public channel(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    return-object p0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 523
    return-void
.end method

.method public cmcc(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "cmcc"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cmcc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    return-object p0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mPendingEditor:Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->checkConfigs()V

    .line 105
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->setAutoCheckUpdateAlarm()V

    .line 106
    return-void
.end method

.method public cta(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "cta"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cta"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 244
    return-object p0
.end method

.method public edit()Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    .line 92
    return-object p0
.end method

.method editor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mPendingEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mPendingEditor:Landroid/content/SharedPreferences$Editor;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mPendingEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public email(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    return-object p0
.end method

.method public getActionBarTheme()I
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "actionbar_theme"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppIcon()I
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_icon"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "app_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoCheckUpdateByTime()J
    .locals 4

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_check_update_alarm_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBBS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bbs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "channel"

    const-string v2, "all"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinCheckIntervalTime()J
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "min_check_interval_time"

    const-wide/32 v2, 0x5265c00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQQGroup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "qq_group"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondCheckUpdateAppPackageName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getSubApps()Ljava/util/List;

    move-result-object v0

    .line 361
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, ""

    .line 362
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSubApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "sub_apps"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 395
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mCollectionHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;

    const-string v2, ","

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "theme"

    const-string v2, "light"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateNotificationSmallIcon()I
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "icon_update_status_bar"

    const v2, 0x7f02000f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "website"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "weibo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeiboUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "weibo_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeixin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "winxin"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoCheckUpdateOnAboutActivityCreate()Z
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_check_update_on_about_activity_create"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoCheckUpdateOnWiFiConnected()Z
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_check_update_on_wifi_connected"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoCheckUpdateOnlyWiFi()Z
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_check_update_only_wifi"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundDataEnabled()Z
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "background_data_enable"

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->BACKGROUND_DATA_ENABLE_BY_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCTA()Z
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cta"

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->CTA_BY_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCmcc()Z
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cmcc"

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->CMCC_BY_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isRow()Z
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "row"

    sget-boolean v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->ROW_BY_DEFAULT:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowCheckUpdate()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_check_update"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShowFeedback()Z
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_feedback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public minCheckIntervalTime(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 3
    .param p1, "minCheckIntervalTime"    # J

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "min_check_interval_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 516
    return-object p0
.end method

.method public row(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "row"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "row"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    return-object p0
.end method

.method public secondCheckUpdateApp(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 354
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->subApps(Ljava/util/List;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 355
    return-object p0
.end method

.method setAutoCheckUpdateAlarm()V
    .locals 7

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->cancelAutoCheckUpdateAlarm()V

    .line 490
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAutoCheckUpdateByTime()J

    move-result-wide v4

    .line 491
    .local v4, "millis":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v1, "AboutConfig"

    const-string/jumbo v2, "setAutoCheckUpdateAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 496
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getAutoCheckUpdateAlarmPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public showCheckUpdate(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_check_update"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    return-object p0
.end method

.method public showFeedback(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "show_feedback"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 266
    return-object p0
.end method

.method public subApps(Ljava/util/List;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "sub_apps"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->mCollectionHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;

    const-string v3, ","

    invoke-virtual {v2, p1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/CollectionHelper;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    return-object p0
.end method

.method public theme(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "theme"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string v0, "dark"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "light"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-string v0, "AboutConfig"

    const-string/jumbo v1, "theme: ONLY THEME_LIGHT or THEME_DARK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string p1, "light"

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    return-object p0
.end method

.method public updateNotificationSmallIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "icon"    # I

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "icon_update_status_bar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 412
    return-object p0
.end method

.method public website(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "website"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    return-object p0
.end method

.method public weibo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "weibo"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "weibo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    return-object p0
.end method

.method public weiboUrl(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "weiboUrl"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "weibo_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    return-object p0
.end method

.method public weixin(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .locals 2
    .param p1, "weixin"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "winxin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    return-object p0
.end method
