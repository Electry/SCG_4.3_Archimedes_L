.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;
.source "SettingBackupTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingBackupTask"


# instance fields
.field private service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

.field private uploadListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->uploadListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 33
    return-void
.end method

.method private buildSettingUploadEntity()Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    const-string/jumbo v3, "settingAppConfig"

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "meta":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->buildAllSettingKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;)Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    .line 69
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifySubProgress(F)V

    .line 70
    const-string v3, "data"

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->getPackageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "file":Ljava/io/File;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    const-string v4, "application/zip"

    invoke-direct {v3, v0, v2, v4}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method protected notifySubProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    .line 90
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->progressStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 107
    const-string v0, "SettingBackupTask"

    const-string/jumbo v1, "notifyStepProgress stepProgress paramter ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void

    .line 92
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifyProgress(F)V

    goto :goto_0

    .line 95
    :sswitch_1
    mul-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifyProgress(F)V

    goto :goto_0

    .line 98
    :sswitch_2
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifyProgress(F)V

    goto :goto_0

    .line 101
    :sswitch_3
    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifyProgress(F)V

    goto :goto_0

    .line 104
    :sswitch_4
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->notifyProgress(F)V

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
    .end sparse-switch
.end method

.method public startTask()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->start:J

    .line 40
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    .line 41
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->service:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V

    .line 44
    const/16 v1, 0x65

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->buildSettingUploadEntity()Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    move-result-object v10

    .line 46
    .local v10, "settingUploadEntity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V

    .line 47
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v0

    .line 48
    .local v0, "appConfigApi":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;>;"
    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V

    .line 49
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->uploadListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v0, v1, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    .line 50
    const-string v1, "####"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    .line 54
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->removePackageFile()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->cost:J

    .line 57
    const-string v2, "LCPSetting"

    const-string v3, "SETTING_BACKUP"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->cost:J

    const-string v8, "0"

    move-object v1, p0

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 60
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1

    .line 61
    :cond_0
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->setProgressStatus(I)V

    .line 63
    :cond_1
    return-void

    .line 52
    .end local v0    # "appConfigApi":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;>;"
    .end local v10    # "settingUploadEntity":Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    :catchall_0
    move-exception v1

    move-object v11, v1

    .line 53
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->close()V

    .line 54
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileWriter;->removePackageFile()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->cost:J

    .line 57
    const-string v2, "LCPSetting"

    const-string v3, "SETTING_BACKUP"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->result:I

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->cost:J

    const-string v8, "0"

    move-object v1, p0

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 59
    throw v11
.end method
