.class public Lcn/jingling/lib/statistics/StatisticsManager;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/statistics/StatisticsManager$SyncStatisticsTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "StatisticsManager"

.field private static UPLOAD_MAX_COUNT:I

.field private static instance:Lcn/jingling/lib/statistics/StatisticsManager;

.field private static upload_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput v0, Lcn/jingling/lib/statistics/StatisticsManager;->UPLOAD_MAX_COUNT:I

    .line 22
    sput v0, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/statistics/StatisticsManager;->instance:Lcn/jingling/lib/statistics/StatisticsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private deleteLogFile([Ljava/io/File;)V
    .locals 2
    .param p1, "needZipFile"    # [Ljava/io/File;

    .prologue
    .line 241
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 249
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 243
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 244
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteOutFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 197
    new-instance v0, Lcn/jingling/lib/statistics/StatisticsManager$3;

    invoke-direct {v0, p0}, Lcn/jingling/lib/statistics/StatisticsManager$3;-><init>(Lcn/jingling/lib/statistics/StatisticsManager;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jingling/lib/statistics/StatisticsManager;->deleteLogFile([Ljava/io/File;)V

    .line 219
    return-void
.end method

.method private execTask()V
    .locals 6

    .prologue
    .line 56
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/jingling/lib/statistics/StatisticsManager;->getSdcardPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/.baiduCameraSdk/statistics/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 61
    invoke-static {}, Lcn/jingling/lib/statistics/Config;->getStatiticsDay()I

    move-result v0

    .line 62
    .local v0, "day":I
    if-lez v0, :cond_0

    .line 64
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 70
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v2}, Lcn/jingling/lib/statistics/StatisticsManager;->postZipFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "day":I
    :goto_1
    invoke-direct {p0, v2}, Lcn/jingling/lib/statistics/StatisticsManager;->deleteOutFile(Ljava/io/File;)V

    .line 77
    return-void

    .line 66
    .restart local v0    # "day":I
    .restart local v3    # "i":I
    :cond_1
    :try_start_1
    invoke-static {v3}, Lcn/jingling/lib/statistics/StatisticsManager;->getDay(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcn/jingling/lib/statistics/StatisticsManager;->zipLogFile(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "day":I
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDay(I)Ljava/lang/String;
    .locals 3
    .param p0, "d"    # I

    .prologue
    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 267
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x5

    neg-int v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 268
    sget-object v1, Lcn/jingling/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcn/jingling/lib/statistics/StatisticsManager;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcn/jingling/lib/statistics/StatisticsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jingling/lib/statistics/StatisticsManager;->instance:Lcn/jingling/lib/statistics/StatisticsManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcn/jingling/lib/statistics/StatisticsManager;

    invoke-direct {v0}, Lcn/jingling/lib/statistics/StatisticsManager;-><init>()V

    sput-object v0, Lcn/jingling/lib/statistics/StatisticsManager;->instance:Lcn/jingling/lib/statistics/StatisticsManager;

    .line 30
    :cond_0
    sget-object v0, Lcn/jingling/lib/statistics/StatisticsManager;->instance:Lcn/jingling/lib/statistics/StatisticsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSdcardPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v1, ""

    .line 80
    .local v1, "sdDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string/jumbo v3, "mounted"

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_0
    return-object v1
.end method

.method public static getToday()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 274
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v1, Lcn/jingling/lib/statistics/LogFile;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private postZipFile(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 157
    new-instance v5, Lcn/jingling/lib/statistics/StatisticsManager$2;

    invoke-direct {v5, p0}, Lcn/jingling/lib/statistics/StatisticsManager$2;-><init>(Lcn/jingling/lib/statistics/StatisticsManager;)V

    invoke-virtual {p1, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "fs":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 164
    array-length v7, v0

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_1

    .line 190
    :cond_0
    return-void

    .line 164
    :cond_1
    aget-object v4, v0, v5

    .line 165
    .local v4, "zFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 166
    sget v8, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    sget v9, Lcn/jingling/lib/statistics/StatisticsManager;->UPLOAD_MAX_COUNT:I

    if-gt v8, v9, :cond_4

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 168
    .local v2, "t":J
    invoke-static {}, Lcn/jingling/lib/statistics/Config;->getStaticsticsPostUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcn/jingling/lib/statistics/LogPostUtils;->post2(Ljava/lang/String;Ljava/io/File;)I

    move-result v1

    .line 170
    .local v1, "response":I
    const/16 v8, 0xc8

    if-ne v8, v1, :cond_3

    .line 172
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 173
    sput v6, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    .line 164
    .end local v1    # "response":I
    .end local v2    # "t":J
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .restart local v1    # "response":I
    .restart local v2    # "t":J
    :cond_3
    sget v8, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    goto :goto_1

    .line 183
    .end local v1    # "response":I
    .end local v2    # "t":J
    :cond_4
    sput v6, Lcn/jingling/lib/statistics/StatisticsManager;->upload_count:I

    goto :goto_1
.end method

.method private zipLogFile(Ljava/io/File;Ljava/lang/String;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "day"    # Ljava/lang/String;
    .param p3, "i"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p3}, Lcn/jingling/lib/statistics/StatisticsManager;->getDayZipFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "zipFile":Ljava/lang/String;
    new-instance v3, Lcn/jingling/lib/statistics/StatisticsManager$1;

    invoke-direct {v3, p0, p2}, Lcn/jingling/lib/statistics/StatisticsManager$1;-><init>(Lcn/jingling/lib/statistics/StatisticsManager;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 133
    .local v1, "fileLogs":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 134
    invoke-static {v2, v1}, Lcn/jingling/lib/statistics/LogZipUtils;->zipFileList(Ljava/lang/String;[Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-direct {p0, v1}, Lcn/jingling/lib/statistics/StatisticsManager;->deleteLogFile([Ljava/io/File;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    invoke-static {}, Lcn/jingling/lib/statistics/Config;->getStatisticsSupport2()I

    move-result v1

    .line 38
    .local v1, "su2":I
    if-eqz v1, :cond_2

    .line 41
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 42
    invoke-direct {p0}, Lcn/jingling/lib/statistics/StatisticsManager;->execTask()V

    .line 54
    .end local v1    # "su2":I
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v1    # "su2":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 44
    invoke-static {}, Lcn/jingling/lib/statistics/Config;->isWiFiActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-direct {p0}, Lcn/jingling/lib/statistics/StatisticsManager;->execTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v1    # "su2":I
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "su2":I
    :cond_2
    :try_start_1
    const-string v2, "STATISTICS_LOG"

    const-string v3, "baidu camera Statistics Function can\'t support!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getDayZipFilePath(I)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # I

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 253
    .local v0, "zipfile":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcn/jingling/lib/statistics/StatisticsManager;->getSdcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 254
    const-string v2, "/.baiduCameraSdk/statistics/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcn/jingling/lib/statistics/StatisticsManager;->getDay(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 255
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
