.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field public static final ID_DOWNLOAD_PROGRESS:I = 0x1e7a

.field public static final ID_FIRST:I = 0x1e78

.field public static final ID_NEW_VERSION:I = 0x1e79


# instance fields
.field mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

.field mContext:Landroid/content/Context;

.field mDownloadProgressNotificationId:I

.field mNewVersionNotificationId:I

.field mNotificationId:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->getInstance()Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationId:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mPackageName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationId:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->getNewVersionNotificationId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNewVersionNotificationId:I

    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationId:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationId;->getDownloadProgressNotificationId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mDownloadProgressNotificationId:I

    .line 49
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 104
    return-void
.end method

.method public cancelDownloadProgress()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mDownloadProgressNotificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 108
    return-void
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(ILandroid/app/Notification;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 100
    return-void
.end method

.method public notifyDownloadProgress(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 91
    iget v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mDownloadProgressNotificationId:I

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 92
    return-void
.end method

.method public notifyNewVersion(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 9
    .param p1, "local_app"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
    .param p2, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    const/4 v8, 0x0

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0f0a73

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "contentTitle":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0f0a71

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "contentText":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 70
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mAboutConfig:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getUpdateNotificationSmallIcon()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setSmallIcon(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setWhen(J)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 72
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 73
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 74
    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 75
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setDefaults(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 77
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    const-class v6, Lcom/lenovo/scg/gallery3d/about/lenovoabout/LenovoUpdateInfoActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const/high16 v5, 0x800000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    const-string/jumbo v5, "package_name"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNewVersionNotificationId:I

    .line 84
    .local v4, "requestCode":I
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 87
    iget v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->mNewVersionNotificationId:I

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->notify(ILandroid/app/Notification;)V

    .line 88
    return-void
.end method
