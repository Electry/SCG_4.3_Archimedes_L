.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;
.source "AboutManifestCheckerGroupItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    const-string v0, "About Manifest \u68c0\u67e5"

    const-string/jumbo v1, "\u68c0\u67e5AndroidManifest.xml \u4e2dAbout\u7ec4\u4ef6\u7684\u914d\u7f6e\u4fe1\u606f"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/ManifestCheckerGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    const-string v0, "com.lenovo.lenovoabout.LenovoAboutActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 11
    const-string v0, "com.lenovo.lenovoabout.LenovoUpdateInfoActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 12
    const-string v0, "com.lenovo.lenovoabout.LenovoNetReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkReceiver(Ljava/lang/String;)V

    .line 13
    const-string v0, "com.lenovo.lenovoabout.UpdateAlarmReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkReceiver(Ljava/lang/String;)V

    .line 14
    const-string v0, "com.lenovo.feedback.FeedbackBroadcastReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkReceiver(Ljava/lang/String;)V

    .line 16
    const-string v0, "com.lenovo.feedback.feedback.FeedbackActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 17
    const-string v0, "com.lenovo.feedback.feedback.query.MyFeedbackActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 18
    const-string v0, "com.lenovo.feedback.setting.SettingsActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 20
    const-string v0, "com.lenovo.feedback.editimage.ImageEditActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 21
    const-string v0, "com.lenovo.feedback.feedback.im.FeedbackIMActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkActivity(Ljava/lang/String;)V

    .line 23
    const-string v0, "SUS_APPKEY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkMeta(Ljava/lang/String;)V

    .line 24
    const-string v0, "SUS_CHANNEL"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkMeta(Ljava/lang/String;)V

    .line 26
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 27
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 28
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 29
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 30
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 31
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 32
    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 33
    const-string v0, "android.permission.GET_TASKS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 34
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 35
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 36
    const-string v0, "android.permission.USE_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 37
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->checkPermission(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "\u68c0\u67e5\u901a\u8fc7"

    const-string/jumbo v1, "\u914d\u7f6e\u5b8c\u6574..."

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/ui/debug/AboutManifestCheckerGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
