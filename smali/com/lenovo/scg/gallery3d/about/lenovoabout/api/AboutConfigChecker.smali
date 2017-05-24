.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;
.super Ljava/lang/Object;
.source "AboutConfigChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
    }
.end annotation


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mActivity:Landroid/app/Activity;

.field mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

.field mClassInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mClassInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mActivity:Landroid/app/Activity;

    .line 34
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    .line 38
    return-void
.end method


# virtual methods
.method public check()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v6, "Cmcc: \u79fb\u52a8\u5b9a\u5236\u7248"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isCmcc()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "\u79fb\u52a8\u5b9a\u5236\u7248, \u4e0d\u663e\u793a\u68c0\u67e5\u66f4\u65b0\uff0c\u7981\u6b62\u540e\u53f0\u68c0\u67e5\u66f4\u65b0, \u8054\u7f51\u64cd\u4f5c\u5f39\u7a97\u63d0\u793a\u7528\u6237."

    :goto_1
    invoke-direct {v5, v0, v6, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    const-string/jumbo v6, "row: \u6d77\u5916\u7248"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isRow()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "\u6d77\u5916\u7248\uff0c\u9690\u85cf\u68c0\u67e5\u66f4\u65b0\uff0c\u9690\u85cf\u610f\u89c1\u53cd\u9988, \u9690\u85cfQQ, \u5fae\u535a"

    :goto_3
    invoke-direct {v5, v0, v6, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    const-string v2, "Background Data"

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u5141\u8bb8\u540e\u53f0\u6570\u636e"

    :goto_5
    invoke-direct {v4, v1, v2, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mClassInvoker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    new-instance v2, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker;->invokeAllNonParamMethod(Ljava/lang/Object;Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;)V

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->init(Ljava/lang/String;)V

    .line 100
    const-string v0, "com.lenovo.lenovoabout.LenovoAboutActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 101
    const-string v0, "com.lenovo.lenovoabout.LenovoUpdateInfoActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 102
    const-string v0, "com.lenovo.lenovoabout.LenovoNetReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkReceiver(Ljava/lang/String;)V

    .line 103
    const-string v0, "com.lenovo.lenovoabout.UpdateAlarmReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkReceiver(Ljava/lang/String;)V

    .line 104
    const-string v0, "com.lenovo.feedback.FeedbackBroadcastReceiver"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkReceiver(Ljava/lang/String;)V

    .line 106
    const-string v0, "com.lenovo.feedback.feedback.FeedbackActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 107
    const-string v0, "com.lenovo.feedback.feedback.query.MyFeedbackActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 108
    const-string v0, "com.lenovo.feedback.setting.SettingsActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 110
    const-string v0, "com.lenovo.feedback.editimage.ImageEditActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 111
    const-string v0, "com.lenovo.feedback.feedback.im.FeedbackIMActivity"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkActivity(Ljava/lang/String;)V

    .line 112
    const-string v0, "SUS_APPKEY"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkMeta(Ljava/lang/String;)V

    .line 113
    const-string v0, "SUS_CHANNEL"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkMeta(Ljava/lang/String;)V

    .line 115
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 116
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 117
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 118
    const-string v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 119
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 120
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 121
    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.permission.GET_TASKS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 123
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 124
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 125
    const-string v0, "android.permission.USE_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 126
    const-string v0, "android.permission.READ_LOGS"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->checkPermission(Ljava/lang/String;)V

    .line 127
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto/16 :goto_0

    :cond_1
    const-string v3, "false"

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 57
    goto/16 :goto_2

    :cond_3
    const-string v3, "false"

    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 75
    goto/16 :goto_4

    :cond_5
    const-string/jumbo v0, "\u7981\u6b62\u540e\u53f0\u6570\u636e, \u81ea\u52a8\u68c0\u67e5\u66f4\u65b0\u5931\u6548"

    goto/16 :goto_5
.end method

.method checkActivity(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isActivityExited(Ljava/lang/String;)Z

    move-result v0

    .line 209
    .local v0, "exits":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void

    .line 209
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method checkMeta(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v4, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 178
    .local v0, "exits":Z
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    if-eqz v0, :cond_1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void

    .end local v0    # "exits":Z
    :cond_0
    move v0, v3

    .line 176
    goto :goto_0

    .restart local v0    # "exits":Z
    :cond_1
    move v3, v2

    .line 178
    goto :goto_1
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isPermissionExited(Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "exits":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-void

    .line 198
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method checkReceiver(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mAndroidManifestChecker:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->isReceiverExited(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, "exits":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, p1, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void

    .line 188
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public printResults()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 131
    const-string v2, "AboutConfigChecker"

    const-string/jumbo v3, "printResults-------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    .line 134
    .local v1, "result":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
    iget v2, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->level:I

    if-ne v2, v6, :cond_0

    .line 135
    const-string v2, "AboutConfigChecker"

    const-string/jumbo v3, "printResults, %s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->title:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->content:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 137
    :cond_0
    const-string v2, "AboutConfigChecker"

    const-string/jumbo v3, "printResults, %s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->title:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->content:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/MyLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 141
    .end local v1    # "result":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
    :cond_1
    const-string v2, "AboutConfigChecker"

    const-string/jumbo v3, "printResults-------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public showResultDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x1

    const/16 v7, 0xa

    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 146
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "Check Results"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "content":Landroid/widget/TextView;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v4, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v4}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 153
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    .line 154
    .local v3, "result":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
    iget v4, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->level:I

    if-ne v4, v8, :cond_0

    .line 155
    const-string v4, "<font color=\"#FF0000\"><b>%s</b><br/>%s<br/></font>"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->title:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->content:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_0
    const-string v4, "<font color=\"#0000FF\"><b>%s</b><br/>%s<br/></font>"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->title:Ljava/lang/String;

    aput-object v6, v5, v9

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;->content:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .end local v3    # "result":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;
    :cond_1
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 168
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 170
    const-string v4, "OK"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 172
    return-void
.end method
