.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateDownloaderCallback;


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mContext:Landroid/content/Context;

.field mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

.field mPackageName:Ljava/lang/String;

.field mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

.field mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mPackageName:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 43
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    .line 44
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    .line 47
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 48
    return-void
.end method


# virtual methods
.method public check(ZZZ)V
    .locals 1
    .param p1, "show_notification"    # Z
    .param p2, "show_dialog"    # Z
    .param p3, "show_toast"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v0, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->enableToast(Z)V

    .line 61
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->asyncCheckUpdate(ZZ)V

    .line 62
    return-void
.end method

.method public checkWithSystemProperties(ZZZ)V
    .locals 2
    .param p1, "show_notification"    # Z
    .param p2, "show_dialog"    # Z
    .param p3, "show_toast"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCTA()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const-string v0, "UpdateManager"

    const-string v1, "checkWithSystemProperties: cmcc or row or cta or background data disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v0, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->enableToast(Z)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->asyncCheckUpdate(ZZ)V

    goto :goto_0
.end method

.method public downloadUpdate()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 89
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v2

    .line 90
    .local v2, "last_update_info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    if-nez v2, :cond_0

    .line 91
    const-string v4, "UpdateManager"

    const-string v5, "downloadUpdate: NON-UpdateInfo Found!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdateInspector:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->getLocalAppInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;

    move-result-object v3

    .line 96
    .local v3, "local_app":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 97
    iget-object v4, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 98
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0a75

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 99
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getUpdateNotificationSmallIcon()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setSmallIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 100
    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setProgress(IIZ)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 102
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v4, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V

    .line 152
    .local v1, "downloader":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->start(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V

    goto :goto_0
.end method

.method public onComplete(Ljava/io/File;)V
    .locals 0
    .param p1, "downloaded"    # Ljava/io/File;

    .prologue
    .line 168
    return-void
.end method

.method public onProgress(IJ)V
    .locals 0
    .param p1, "rate"    # I
    .param p2, "fileSize"    # J

    .prologue
    .line 163
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
