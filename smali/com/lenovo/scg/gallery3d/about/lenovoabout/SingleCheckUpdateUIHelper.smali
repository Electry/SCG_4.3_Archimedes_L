.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;
.super Ljava/lang/Object;
.source "SingleCheckUpdateUIHelper.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/CheckUpdateUIHelper;


# static fields
.field public static final CHECK_UPDATE_STATUS_CHECKING:I = 0x2

.field public static final CHECK_UPDATE_STATUS_DOWNLOADING:I = 0x3

.field public static final CHECK_UPDATE_STATUS_HAS_NEW_VERSION:I = 0x4

.field public static final CHECK_UPDATE_STATUS_NORMAL:I = 0x1


# instance fields
.field isStatusOnTitle:Z

.field mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

.field mCheckUpdateStatus:I

.field mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

.field mPackageName:Ljava/lang/String;

.field mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

.field mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

.field mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

.field tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;
    .param p2, "view"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "statusOnTitle"    # Z

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    .line 40
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    .line 44
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    .line 45
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    .line 46
    iput-boolean p4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->getInstance(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 50
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 52
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateManager:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    .line 63
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$2;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    .line 75
    return-void
.end method


# virtual methods
.method isAutoCheckUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnAboutActivityCreate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnlyWiFi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isWiFiConnected()Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isAutoCheckUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->hideToast()V

    .line 88
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v1, v2, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->asyncCheckUpdate(ZZ)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    .line 92
    .local v0, "last_update_info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_code:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getVersionCode()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->clearLastLastUpdateInfo()V

    .line 95
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastUpdateVersionCode(I)V

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshUpdateViews()V

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper$3;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    if-nez v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitle(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitleVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v2, v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 145
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public refreshLocalAppInfo()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 79
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->refreshUpdateViews()V

    .line 80
    return-void
.end method

.method public refreshUpdateViews()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mActivity:Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoAboutActivity;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->getStatus()I

    move-result v2

    .line 185
    .local v2, "update_status":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0
    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    .line 189
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    if-eqz v3, :cond_2

    .line 190
    const v3, 0x7f0f098d

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->updateStatusInfo(I)V

    .line 195
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v1

    .line 196
    .local v1, "lastUpdateInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateVersionCode()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget v4, v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_code:I

    if-le v3, v4, :cond_3

    .line 197
    .local v0, "has_new_version":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 198
    const v3, 0x7f0f098e

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->updateStatusInfo(I)V

    .line 199
    const/4 v3, 0x4

    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    goto :goto_0

    .line 192
    .end local v0    # "has_new_version":Z
    .end local v1    # "lastUpdateInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v3, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->updateStatusInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    .restart local v1    # "lastUpdateInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 203
    .end local v1    # "lastUpdateInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    :pswitch_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    .line 204
    const v3, 0x7f0f099d

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->updateStatusInfo(I)V

    goto :goto_0

    .line 207
    :pswitch_2
    const/4 v3, 0x3

    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->mCheckUpdateStatus:I

    .line 208
    const v3, 0x7f0f099e

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->updateStatusInfo(I)V

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateStatusInfo(I)V
    .locals 2
    .param p1, "statusResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitleVisibility(I)V

    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitle(I)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(I)V

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    goto :goto_0
.end method

.method updateStatusInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitleVisibility(I)V

    .line 228
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->isStatusOnTitle:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setTitle(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummary(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/SingleCheckUpdateUIHelper;->tivView:Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/ListItemView;->setSummaryVisibility(I)V

    goto :goto_0
.end method
