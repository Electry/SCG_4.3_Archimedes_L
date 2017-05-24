.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->mContext:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 2

    .prologue
    .line 19
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 20
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWiFiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 24
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/NetworkHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 25
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
