.class public final Lcom/baidu/idl/lib/statistics/LogStoreUtils;
.super Ljava/lang/Object;
.source "LogStoreUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field public static final ENTER_TAG:Ljava/lang/String; = "\r\n"

.field public static final SDF:Ljava/text/SimpleDateFormat;

.field public static final SLIP_TAG:Ljava/lang/String; = "\t"

.field public static final TAG:Ljava/lang/String; = "LogStoreUtils"

.field private static logFile:Lcom/baidu/idl/lib/statistics/LogFile; = null

.field public static final logpath:Ljava/lang/String; = "/.baiduIDLSdk/statistics/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->getCTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {p0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->storeLog(Ljava/lang/String;)V

    return-void
.end method

.method private static appendLog(Lcom/baidu/idl/lib/statistics/LogFile;Ljava/lang/String;)V
    .locals 7
    .param p0, "logFile"    # Lcom/baidu/idl/lib/statistics/LogFile;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v3, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 135
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 136
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/baidu/idl/lib/statistics/LogFile;->file:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 135
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    if-eqz v2, :cond_4

    .line 147
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 148
    const/4 v1, 0x0

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 129
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-eqz v1, :cond_0

    .line 147
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 148
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 146
    :goto_3
    if-eqz v1, :cond_3

    .line 147
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 148
    const/4 v1, 0x0

    .line 153
    :cond_3
    :goto_4
    throw v3

    .line 150
    :catch_3
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 144
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 142
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private static appendLogAction(Lcom/baidu/idl/lib/statistics/LogFile;Ljava/lang/String;)V
    .locals 0
    .param p0, "logFile"    # Lcom/baidu/idl/lib/statistics/LogFile;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->appendLog(Lcom/baidu/idl/lib/statistics/LogFile;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static checkSDCARD()Z
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "mounted"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static dataCommit()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/idl/lib/statistics/LogStoreUtils$2;

    invoke-direct {v1}, Lcom/baidu/idl/lib/statistics/LogStoreUtils$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-void
.end method

.method private static getCTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 185
    const-string v3, ""

    .line 186
    .local v3, "slipTime":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, "oldSdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v4, "2010-01-01"

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 190
    .local v1, "oldDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 194
    .end local v1    # "oldDate":Ljava/util/Date;
    :goto_0
    return-object v3

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static storeData(Ljava/lang/String;)V
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/idl/lib/statistics/LogStoreUtils$1;

    invoke-direct {v1, p0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public static storeDataCommitOnce(Ljava/lang/String;)V
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/idl/lib/statistics/LogStoreUtils$3;

    invoke-direct {v1, p0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils$3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    return-void
.end method

.method private static storeLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/baidu/idl/lib/statistics/LogFile;

    invoke-direct {v0}, Lcom/baidu/idl/lib/statistics/LogFile;-><init>()V

    sput-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    .line 101
    :cond_0
    :goto_0
    sget-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    invoke-static {v0, p0}, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->appendLogAction(Lcom/baidu/idl/lib/statistics/LogFile;Ljava/lang/String;)V

    .line 102
    return-void

    .line 98
    :cond_1
    sget-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    invoke-virtual {v0}, Lcom/baidu/idl/lib/statistics/LogFile;->checkStoreLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/baidu/idl/lib/statistics/LogFile;

    sget-object v1, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->SDF:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/idl/lib/statistics/LogFile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/idl/lib/statistics/LogStoreUtils;->logFile:Lcom/baidu/idl/lib/statistics/LogFile;

    goto :goto_0
.end method

.method private static writeLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "path":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "desFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 164
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v2, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v2, "newFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 168
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 173
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 177
    .end local v0    # "desFile":Ljava/io/File;
    .end local v2    # "newFile":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 170
    .restart local v0    # "desFile":Ljava/io/File;
    .restart local v2    # "newFile":Ljava/io/RandomAccessFile;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v0    # "desFile":Ljava/io/File;
    .end local v2    # "newFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
