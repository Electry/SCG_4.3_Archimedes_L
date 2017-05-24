.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;
.source "ContactSDCardBackupTask.java"


# static fields
.field public static final CONTACT_BACKUP_FILE_FULL_PATH:Ljava/lang/String; = "contactBackupFileFullPath"

.field public static final CONTACT_BACKUP_FILE_TIME:Ljava/lang/String; = "CONTACT_BACKUP_FILE_TIME"

.field private static final CONTACT_PAGE_NUMBER:I = 0x32


# instance fields
.field private fileFullPath:Ljava/lang/String;

.field private fileNameTime:J

.field private groupMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;"
        }
    .end annotation
.end field

.field private writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;J)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p3, "time"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->groupMap:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    const-string v1, "contact-"

    const-string v2, ".zip.tmp"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    .line 53
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileNameTime:J

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->groupMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileNameTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildContactsExportInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V
    .locals 3
    .param p1, "export"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v0

    .line 161
    .local v0, "totalContact":I
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;ILcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V

    .line 261
    return-void
.end method

.method private buildGroupsExportInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V
    .locals 2
    .param p1, "export"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->traverseVisiableGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V

    .line 140
    return-void
.end method

.method private deleteBackupFile()V
    .locals 8

    .prologue
    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileNameTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private resovleBackupFilePath()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "contactBackupFileFullPath"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "CONTACT_BACKUP_FILE_TIME"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileNameTime:J

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "CONTACT_BACKUP_FILE_TIME"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected beforeTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 285
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v3, "contactBackupFileFullPath"

    invoke-interface {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "resolverProblem":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 289
    const-string v0, ""

    .line 293
    .local v0, "backupRootPath":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    .end local v0    # "backupRootPath":Ljava/lang/String;
    .end local v1    # "resolverProblem":Ljava/lang/Object;
    :goto_1
    return-void

    .restart local v1    # "resolverProblem":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 291
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "backupRootPath":Ljava/lang/String;
    goto :goto_0

    .line 295
    .end local v0    # "backupRootPath":Ljava/lang/String;
    .end local v1    # "resolverProblem":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected buildHDPhotoField(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .locals 8
    .param p1, "f"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .prologue
    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    iget v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    invoke-interface {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v3

    .line 145
    .local v3, "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v2

    .line 147
    .local v2, "photoInputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 148
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 149
    .local v1, "photoBytes":[B
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v1    # "photoBytes":[B
    .end local v2    # "photoInputStream":Ljava/io/InputStream;
    .end local v3    # "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :cond_0
    :goto_0
    return-object p1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;->cancel()V

    .line 269
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 281
    return-void
.end method

.method protected notifyFinish()V
    .locals 10

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->endTime:J

    .line 93
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->deleteBackupFile()V

    .line 98
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->cost:J

    .line 99
    const-string v2, "LCPContact"

    const-string v3, "SDCARD_CONTACT_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 100
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->cost:J

    const-string v8, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->opAddCount:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->opDeleteCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->opUpdateCount:I

    add-int v9, v0, v1

    move-object v1, p0

    .line 99
    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 101
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;->notifyFinish()V

    .line 102
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->convert2RealFile()Z

    goto :goto_0
.end method

.method protected startTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->startTime:J

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->beforeTask()V

    .line 69
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/16 v1, 0x6e

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->close()V

    .line 88
    return-void

    .line 72
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->resovleBackupFilePath()V

    .line 74
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;-><init>()V

    .line 76
    .local v0, "export":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->buildContactChecksum(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    .line 79
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->buildGroupsExportInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_2
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    .line 82
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->buildContactsExportInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    .end local v0    # "export":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;
    :catchall_0
    move-exception v1

    .line 86
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->close()V

    .line 87
    throw v1

    .line 77
    .restart local v0    # "export":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    goto :goto_1

    .line 80
    :cond_2
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I

    goto :goto_2

    .line 83
    :cond_3
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->result:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method
