.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoNetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LenovoNetReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;

    invoke-direct {v2, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;-><init>(Landroid/content/Context;)V

    .line 21
    .local v2, "networkHelper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    .line 24
    .local v0, "aboutConfig":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->isWiFiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isAutoCheckUpdateOnWiFiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const-string v3, "LenovoNetReceiver"

    const-string/jumbo v4, "onReceive: Auto Check Update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-direct {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;-><init>(Landroid/content/Context;)V

    .line 30
    .local v1, "inspector":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->hideToast()V

    .line 32
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->shouldCheckingUpdateNow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->asyncCheckUpdate(ZZ)V

    .line 39
    .end local v0    # "aboutConfig":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .end local v1    # "inspector":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;
    .end local v2    # "networkHelper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v0    # "aboutConfig":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    .restart local v1    # "inspector":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;
    .restart local v2    # "networkHelper":Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;
    :cond_1
    const-string v3, "LenovoNetReceiver"

    const-string v4, "Two soon to check update."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
