.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;
.super Ljava/lang/Object;
.source "SusUpdateInspector.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;
.implements Lcom/lenovo/lps/sus/SUSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$7;
    }
.end annotation


# instance fields
.field private isForceShowPromt:Z

.field isShowDialog:Z

.field isShowNotification:Z

.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mContext:Landroid/content/Context;

.field mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

.field mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

.field mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

.field mPackageName:Ljava/lang/String;

.field mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

.field mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowNotification:Z

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowDialog:Z

    .line 184
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isForceShowPromt:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mPackageName:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    .line 47
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->getInstance(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    .line 49
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 50
    return-void
.end method


# virtual methods
.method public asyncCheckUpdate(ZZ)V
    .locals 5
    .param p1, "show_notification"    # Z
    .param p2, "show_dialog"    # Z

    .prologue
    const/4 v2, 0x1

    .line 83
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->canCheckingUpdate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "UpdateInspectorImpl"

    const-string v2, "checkUpdate: checking update."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    const-string v1, "UpdateInspectorImpl"

    const-string v2, "checkUpdate: No available network."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->startCheckingUpdate()V

    .line 94
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowNotification:Z

    .line 95
    iput-boolean p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowDialog:Z

    .line 97
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->getLocalAppInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    move-result-object v0

    .line 99
    .local v0, "localAppInfo":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    invoke-static {v2}, Lcom/lenovo/lps/sus/SUSSetting;->setPatchUpdateEnableFlag(Z)V

    .line 100
    invoke-static {v2}, Lcom/lenovo/lps/sus/SUS;->setAllPromptDisableFlag(Z)V

    .line 101
    invoke-static {v2}, Lcom/lenovo/lps/sus/SUS;->setDebugModeFlag(Z)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    iget v3, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_code:I

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/lps/sus/SUS;->AsyncQueryLatestVersionByPackageName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    goto :goto_0
.end method

.method public enableToast(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->setEnable(Z)V

    .line 71
    return-void
.end method

.method finishCheckingUpdate()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "UpdateInspectorImpl"

    const-string v1, "finishCheckingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/lps/sus/SUS;->setSUSListener(Lcom/lenovo/lps/sus/SUSListener;)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->markCheckingUpdateFinished()V

    .line 126
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$2;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public getLocalAppInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mLocalAppInfo:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    return-object v0
.end method

.method handleUpdateInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 2
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 153
    const-string v0, "SUCCESS"

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$3;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v0, "LATESTVERSION"

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$4;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "NOTFOUND"

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$5;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "EXCEPTION"

    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->resultion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$6;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hideToast()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->setEnable(Z)V

    .line 66
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v0, "UpdateInspectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f097a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 252
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onLatesVersion()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "UpdateInspectorImpl"

    const-string/jumbo v1, "onLatesVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f0978

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 234
    return-void
.end method

.method public onNotFound()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "UpdateInspectorImpl"

    const-string/jumbo v1, "onNotFound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f0979

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 243
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onUpdate(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 2
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 224
    const-string v0, "UpdateInspectorImpl"

    const-string/jumbo v1, "onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method onUpdateInternal(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 6
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getVersionCode()I

    move-result v2

    .line 193
    .local v2, "new_version_code":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastUpdateVersionCode(I)V

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastPromtVersionCode()I

    move-result v1

    .line 196
    .local v1, "lastPromtVersionCode":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->isPromtNewVersion()Z

    move-result v0

    .line 199
    .local v0, "isPromptNewVersion":Z
    if-eqz v0, :cond_0

    if-gt v2, v1, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isForceShowPromt:Z

    if-eqz v3, :cond_3

    .line 201
    :cond_1
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowNotification:Z

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->showNotification(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 203
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastPromtVersionCode(I)V

    .line 205
    :cond_2
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isShowDialog:Z

    if-eqz v3, :cond_3

    .line 206
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->showDialog(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 207
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastPromtVersionCode(I)V

    .line 212
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastUpdateInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 213
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastUpdateInfoFetchedTime(J)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->onUpdate(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 215
    return-void
.end method

.method public onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 3
    .param p1, "eventType"    # Lcom/lenovo/lps/sus/EventType;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "l"    # J

    .prologue
    .line 288
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$7;->$SwitchMap$com$lenovo$lps$sus$EventType:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/sus/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 294
    .end local p3    # "o":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->finishCheckingUpdate()V

    .line 295
    return-void

    .line 290
    .restart local p3    # "o":Ljava/lang/Object;
    :pswitch_0
    const-string v0, "SusUpdateInspector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    check-cast p3, Lcom/lenovo/lps/sus/QueryResult;

    .end local p3    # "o":Ljava/lang/Object;
    invoke-direct {v0, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;-><init>(Lcom/lenovo/lps/sus/QueryResult;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->handleUpdateInfo(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    goto :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUiTaskExcutor:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/UiTaskExcutor;->execute(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public setForceShowPromt(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->isForceShowPromt:Z

    .line 189
    return-void
.end method

.method public shouldCheckingUpdateNow()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 145
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastCheckUpdateTime()J

    move-result-wide v0

    .line 146
    .local v0, "last_checking_time":J
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getMinCheckIntervalTime()J

    move-result-wide v2

    .line 147
    .local v2, "min_checking_interval":J
    cmp-long v4, v0, v6

    if-ltz v4, :cond_0

    cmp-long v4, v2, v6

    if-ltz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected showDialog(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 3
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 261
    const-string v1, "UpdateInspectorImpl"

    const-string/jumbo v2, "showDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    const-class v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 266
    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected showNotification(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 3
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 255
    const-string v1, "UpdateInspectorImpl"

    const-string/jumbo v2, "showNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->getLocalAppInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    move-result-object v0

    .line 257
    .local v0, "local_app":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    invoke-virtual {v1, v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->notifyNewVersion(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    .line 258
    return-void
.end method

.method public showToast()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->setEnable(Z)V

    .line 61
    return-void
.end method

.method startCheckingUpdate()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "UpdateInspectorImpl"

    const-string/jumbo v1, "startCheckingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lcom/lenovo/lps/sus/SUS;->setSUSListener(Lcom/lenovo/lps/sus/SUSListener;)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->markCheckingUpdate()V

    .line 110
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
