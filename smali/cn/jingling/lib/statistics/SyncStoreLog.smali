.class public Lcn/jingling/lib/statistics/SyncStoreLog;
.super Ljava/lang/Object;
.source "SyncStoreLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x28

.field private static instance:Lcn/jingling/lib/statistics/SyncStoreLog;

.field private static vsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private forceExecute:Z

.field private logFile:Lcn/jingling/lib/statistics/LogFile;

.field private obserable:Landroid/database/DataSetObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->instance:Lcn/jingling/lib/statistics/SyncStoreLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v1, "SyncStoreLog"

    iput-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->TAG:Ljava/lang/String;

    .line 16
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    .line 17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z

    .line 118
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->obserable:Landroid/database/DataSetObservable;

    .line 35
    new-instance v0, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;

    invoke-direct {v0, p0}, Lcn/jingling/lib/statistics/SyncStoreLog$LogDataSetObserver;-><init>(Lcn/jingling/lib/statistics/SyncStoreLog;)V

    .line 36
    .local v0, "observer":Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->obserable:Landroid/database/DataSetObservable;

    invoke-virtual {v1, v0}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcn/jingling/lib/statistics/SyncStoreLog;)Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z

    return v0
.end method

.method static synthetic access$1(Lcn/jingling/lib/statistics/SyncStoreLog;Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z

    return-void
.end method

.method static synthetic access$2(Lcn/jingling/lib/statistics/SyncStoreLog;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcn/jingling/lib/statistics/SyncStoreLog;->appendLog()V

    return-void
.end method

.method static synthetic access$3()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method private appendLog()V
    .locals 8

    .prologue
    .line 77
    iget-object v4, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    iget-object v4, v4, Lcn/jingling/lib/statistics/LogFile;->file:Ljava/io/File;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    iget-object v4, v4, Lcn/jingling/lib/statistics/LogFile;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 83
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 84
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    iget-object v6, v6, Lcn/jingling/lib/statistics/LogFile;->file:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    sget-object v4, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 95
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    if-eqz v3, :cond_5

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 103
    const/4 v2, 0x0

    .line 108
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_2
    sget-object v4, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 85
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .local v0, "content":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 89
    :catch_0
    move-exception v5

    goto :goto_1

    .line 96
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    .line 101
    :goto_3
    if-eqz v2, :cond_3

    .line 102
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 103
    const/4 v2, 0x0

    .line 108
    :cond_3
    :goto_4
    sget-object v4, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 105
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 101
    :goto_5
    if-eqz v2, :cond_4

    .line 102
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 103
    const/4 v2, 0x0

    .line 108
    :cond_4
    :goto_6
    sget-object v5, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 109
    throw v4

    .line 105
    :catch_3
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    .line 106
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 99
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_5

    .line 96
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method public static declared-synchronized getInstance()Lcn/jingling/lib/statistics/SyncStoreLog;
    .locals 2

    .prologue
    .line 112
    const-class v1, Lcn/jingling/lib/statistics/SyncStoreLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->instance:Lcn/jingling/lib/statistics/SyncStoreLog;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcn/jingling/lib/statistics/SyncStoreLog;

    invoke-direct {v0}, Lcn/jingling/lib/statistics/SyncStoreLog;-><init>()V

    sput-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->instance:Lcn/jingling/lib/statistics/SyncStoreLog;

    .line 115
    :cond_0
    sget-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->instance:Lcn/jingling/lib/statistics/SyncStoreLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public notifiyDataSetChanged()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z

    .line 40
    iget-object v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->obserable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 41
    return-void
.end method

.method public notifiyDataSetChanged(Z)V
    .locals 1
    .param p1, "forceExecute"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->forceExecute:Z

    .line 48
    iget-object v0, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->obserable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 49
    return-void
.end method

.method public setStoreLog(Lcn/jingling/lib/statistics/LogFile;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Lcn/jingling/lib/statistics/LogFile;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Lcn/jingling/lib/statistics/SyncStoreLog;->logFile:Lcn/jingling/lib/statistics/LogFile;

    .line 29
    sget-object v0, Lcn/jingling/lib/statistics/SyncStoreLog;->vsCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0}, Lcn/jingling/lib/statistics/SyncStoreLog;->notifiyDataSetChanged()V

    .line 33
    :cond_0
    return-void
.end method
