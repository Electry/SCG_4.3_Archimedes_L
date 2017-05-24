.class public Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SCGUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidRuntime"

.field private static volatile mCrashing:Z

.field private static sCGRootPath:Ljava/lang/String;

.field private static sExceptionHandler:Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;


# instance fields
.field private formatter:Ljava/text/DateFormat;

.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mCrashing:Z

    .line 47
    new-instance v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sExceptionHandler:Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.SCG/scg_crash_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sCGRootPath:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->infos:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->formatter:Ljava/text/DateFormat;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sCGRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sExceptionHandler:Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;

    return-object v0
.end method

.method private getPendingIntent(Ljava/io/File;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "log"    # Ljava/io/File;

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "callback":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .local v1, "mUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    const-string v2, "com.lenovo.browser"

    const-string v3, "com.lenovo.browser.LeMainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2

    .line 134
    :cond_0
    new-instance v2, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler$1;-><init>(Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;)V

    invoke-virtual {v2}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler$1;->start()V

    .line 144
    iget-object v2, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->collectDeviceInfo(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "logFilePathName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->getPendingIntent(Ljava/io/File;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 24
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v16, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->infos:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 213
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 214
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 215
    .local v20, "value":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 218
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_0
    new-instance v21, Ljava/io/StringWriter;

    invoke-direct/range {v21 .. v21}, Ljava/io/StringWriter;-><init>()V

    .line 219
    .local v21, "writer":Ljava/io/Writer;
    new-instance v14, Ljava/io/PrintWriter;

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 220
    .local v14, "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 222
    .local v4, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {v4, v14}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 224
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v14}, Ljava/io/PrintWriter;->close()V

    .line 227
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 228
    .local v15, "result":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 230
    .local v18, "timestamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->formatter:Ljava/text/DateFormat;

    move-object/from16 v22, v0

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v22 .. v23}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 231
    .local v17, "time":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "crash-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".txt"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 234
    sget-object v13, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sCGRootPath:Ljava/lang/String;

    .line 235
    .local v13, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_2

    .line 237
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 252
    :cond_2
    const/4 v9, 0x0

    .line 254
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    .end local v5    # "dir":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v13    # "path":Ljava/lang/String;
    :cond_3
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->sCGRootPath:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_2
    return-object v22

    .line 268
    .restart local v5    # "dir":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/16 v22, 0x0

    goto :goto_2

    .line 257
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 259
    .local v6, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    const/16 v22, 0x0

    .line 267
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 268
    :catch_2
    move-exception v6

    .line 270
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/16 v22, 0x0

    goto :goto_2

    .line 261
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 263
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 264
    const/16 v22, 0x0

    .line 267
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 268
    :catch_4
    move-exception v6

    .line 270
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/16 v22, 0x0

    goto :goto_2

    .line 266
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 267
    :goto_5
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 271
    throw v22

    .line 268
    :catch_5
    move-exception v6

    .line 270
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/16 v22, 0x0

    goto :goto_2

    .line 266
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v22

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 261
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 257
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public collectDeviceInfo(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 168
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 169
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_0

    .line 170
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v10, :cond_1

    const-string/jumbo v9, "null"

    .line 171
    .local v9, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, "versionCode":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->infos:Ljava/util/Map;

    const-string/jumbo v11, "versionName"

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v10, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->infos:Ljava/util/Map;

    const-string/jumbo v11, "versionCode"

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "versionCode":Ljava/lang/String;
    .end local v9    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_1
    const-class v10, Landroid/os/Build;

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 179
    .local v3, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 181
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    iget-object v10, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->infos:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v10, "AndroidRuntime"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_2
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 175
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AndroidRuntime"

    const-string v11, "an error occured when collect package info"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "AndroidRuntime"

    const-string v11, "an error occured when collect crash info"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 82
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/16 v4, 0xa

    .line 88
    :try_start_0
    sget-boolean v1, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mCrashing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 117
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 119
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mCrashing:Z

    .line 94
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-direct {p0, p2}, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->handleException(Ljava/lang/Throwable;)Z

    .line 98
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/loger/SCGUncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 104
    const-string v1, "AndroidRuntime"

    const-string v2, "crash!"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 117
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 116
    .local v0, "t2":Ljava/lang/Throwable;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 117
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 116
    .end local v0    # "t2":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 117
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v1
.end method
