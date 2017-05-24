.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;
.super Ljava/lang/Object;
.source "SUSUpdateDownloader.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateDownloader;
.implements Lcom/lenovo/lps/sus/SUSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader$1;
    }
.end annotation


# static fields
.field public static final DIR_UPDATE:Ljava/lang/String; = "/mnt/sdcard/SUSdownload/"


# instance fields
.field mContext:Landroid/content/Context;

.field mDownloaded:Ljava/io/File;

.field mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

.field mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->getInstance(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    .line 36
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public getDownloadedFile(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)Ljava/io/File;
    .locals 3
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/SUSdownload/"

    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->FileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onComplete(Ljava/io/File;)V
    .locals 2
    .param p1, "downloaded"    # Ljava/io/File;

    .prologue
    .line 86
    const-string v0, "SUSUpdateDownloader"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onProgress(IJ)V
    .locals 0
    .param p1, "rate"    # I
    .param p2, "fileSize"    # J

    .prologue
    .line 82
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "SUSUpdateDownloader"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method public final onUpdateNotification(Lcom/lenovo/lps/sus/EventType;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6
    .param p1, "eventType"    # Lcom/lenovo/lps/sus/EventType;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "reserveParam"    # Ljava/lang/Object;
    .param p4, "l"    # J

    .prologue
    .line 91
    sget-object v4, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader$1;->$SwitchMap$com$lenovo$lps$sus$EventType:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/sus/EventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onStart()V

    goto :goto_0

    .line 97
    :pswitch_1
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 98
    check-cast v0, Landroid/os/Bundle;

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "rate"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "rate":I
    const-string v4, "filesize"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 101
    .local v2, "file_size":J
    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onProgress(IJ)V

    goto :goto_0

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "rate":I
    .end local v2    # "file_size":J
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->markDownloadingUpdateFinished()V

    .line 107
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mDownloaded:Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onComplete(Ljava/io/File;)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->markDownloadingUpdateFinished()V

    .line 115
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onComplete(Ljava/io/File;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public start(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)V
    .locals 6
    .param p1, "update_info"    # Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    .prologue
    .line 41
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->isVersionUpdateStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "SUSUpdateDownloader"

    const-string/jumbo v5, "start: already downloading."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 48
    iget-object v4, p1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->Size:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 50
    .local v2, "updateSize":J
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->getDownloadedFile(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "downloaded":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 53
    const-string v4, "SUSUpdateDownloader"

    const-string/jumbo v5, "start: already download."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onComplete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v0    # "downloaded":Ljava/io/File;
    .end local v2    # "updateSize":J
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SUSUpdateDownloader"

    const-string/jumbo v5, "start: error happens."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "downloaded":Ljava/io/File;
    .restart local v2    # "updateSize":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdateStatus:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdateStatus;->markDownloadingUpdate()V

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->onStart()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->getDownloadedFile(Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mDownloaded:Ljava/io/File;

    .line 60
    invoke-static {p0}, Lcom/lenovo/lps/sus/SUS;->setSUSListener(Lcom/lenovo/lps/sus/SUSListener;)V

    .line 61
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lenovo/lps/sus/SUS;->setNotificationProgressDisableFlag(Z)V

    .line 63
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SUSUpdateDownloader;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->getLastUpdateInfo()Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/utils/UpdateInfo;->query_result:Lcom/lenovo/lps/sus/QueryResult;

    invoke-static {v4, v5}, Lcom/lenovo/lps/sus/SUS;->downloadAppExt(Landroid/content/Context;Ljava/lang/Object;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
