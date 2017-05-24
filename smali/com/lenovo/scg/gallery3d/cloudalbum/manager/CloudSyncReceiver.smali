.class public Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudSyncReceiver.java"


# instance fields
.field private final CAMERA_NEW_PICTURE:Ljava/lang/String;

.field private final CONNECTIVITY_CHANGE:Ljava/lang/String;

.field private final HARDWARE_NEW_PICTURE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSyncReceiver;->CONNECTIVITY_CHANGE:Ljava/lang/String;

    .line 18
    const-string v0, "com.android.camera.NEW_PICTURE"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSyncReceiver;->CAMERA_NEW_PICTURE:Ljava/lang/String;

    .line 19
    const-string v0, "android.hardware.action.NEW_PICTURE"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/manager/CloudSyncReceiver;->HARDWARE_NEW_PICTURE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 23
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isAutoSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 26
    .local v7, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 27
    .local v10, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isJustWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->syncAuto()V

    .line 69
    .end local v7    # "manager":Landroid/net/ConnectivityManager;
    .end local v10    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v7    # "manager":Landroid/net/ConnectivityManager;
    .restart local v10    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v7, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 34
    .local v8, "mobileInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->syncAuto()V

    goto :goto_0

    .line 39
    .end local v7    # "manager":Landroid/net/ConnectivityManager;
    .end local v8    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v10    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :cond_4
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->isJustWifi()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 41
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 42
    new-instance v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-direct {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 43
    .local v9, "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    const-string v4, "_size"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 44
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmId(Ljava/lang/String;)V

    .line 47
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 48
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 50
    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_6
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->sync(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;)V

    goto/16 :goto_0

    .line 53
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    :cond_7
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->init(Landroid/content/Context;)V

    .line 55
    new-instance v9, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;

    invoke-direct {v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;-><init>()V

    .line 56
    .restart local v9    # "path":Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    const-string v4, "_size"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .restart local v6    # "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 58
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    sget-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->mDefaultId:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmId(Ljava/lang/String;)V

    .line 60
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setmPath(Ljava/lang/String;)V

    .line 61
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;->setSize(J)V

    .line 63
    :cond_8
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_9
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/cloudalbum/transmit/TransmitLoader;->sync(Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPath;)V

    goto/16 :goto_0
.end method
