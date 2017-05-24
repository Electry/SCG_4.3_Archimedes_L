.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->downloadUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

.field final synthetic val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;Landroid/content/Context;Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    invoke-direct {p0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;)V
    .locals 4
    .param p1, "downloaded"    # Ljava/io/File;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->onComplete(Ljava/io/File;)V

    .line 129
    if-nez p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f097a

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 150
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloader.onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->cancelDownloadProgress()V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f0974

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 138
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v1, 0x7f0f0a72

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 139
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;-><init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1$1;->start()V

    goto :goto_0
.end method

.method public onProgress(IJ)V
    .locals 4
    .param p1, "rate"    # I
    .param p2, "fileSize"    # J

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onProgress(IJ)V

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->onProgress(IJ)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setProgress(IIZ)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->notifyDownloadProgress(Landroid/app/Notification;)V

    .line 124
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onStart()V

    .line 106
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->onStart()V

    .line 107
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mToastHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;

    const v2, 0x7f0f0984

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ToastHelper;->shortToast(I)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v0

    .line 111
    .local v0, "update_info":Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->FileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    .line 113
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager;->mNotificationHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/UpdateManager$1;->val$builder:Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/v4/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/NotificationHelper;->notifyDownloadProgress(Landroid/app/Notification;)V

    .line 114
    return-void
.end method
