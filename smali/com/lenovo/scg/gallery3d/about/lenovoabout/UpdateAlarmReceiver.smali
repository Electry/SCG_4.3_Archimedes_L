.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateAlarmReceiver.java"


# instance fields
.field private mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field private mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method clearLastPromtVersionCode(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastPromtVersionCode(I)V

    .line 36
    return-void
.end method

.method isAutoCheckUpdate()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnlyWiFi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isWiFiConnected()Z

    move-result v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v1, "UpdateAlarmReceiver"

    const-string/jumbo v2, "onReceive: Auto Check Update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->mNetworkHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    .line 24
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 26
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->isAutoCheckUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/UpdateAlarmReceiver;->clearLastPromtVersionCode(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "inspector":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;
    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->hideToast()V

    .line 31
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;->asyncCheckUpdate(ZZ)V

    .line 33
    .end local v0    # "inspector":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateInspector;
    :cond_0
    return-void
.end method
