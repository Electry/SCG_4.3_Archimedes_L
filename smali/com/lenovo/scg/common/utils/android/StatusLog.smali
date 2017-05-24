.class public Lcom/lenovo/scg/common/utils/android/StatusLog;
.super Ljava/lang/Object;
.source "StatusLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/android/StatusLog$1;,
        Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;,
        Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;,
        Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;
    }
.end annotation


# static fields
.field private static final LOG_DUMP_HPROF:I = 0x5

.field private static final LOG_DUMP_NATIVE_HEAP:I = 0x4

.field private static final LOG_PILE_EVENT_FINISH:I = 0x3

.field private static final LOG_PILE_EVENT_INIT:I = 0x1

.field private static final LOG_PILE_EVENT_WRITE:I = 0x2

.field private static final SCG_ST_LOG_DIR:Ljava/lang/String; = "/mnt/sdcard/SCGstatusLog/"

.field private static final SCG_ST_LOG_HPROF_DIR:Ljava/lang/String; = "/mnt/sdcard/SCGstatusLog/hprof/"

.field private static final SCG_ST_LOG_NATIVE_HEAP_DIR:Ljava/lang/String; = "/mnt/sdcard/SCGstatusLog/NativeHeap/"

.field private static final TAG:Ljava/lang/String; = "StatusLog"

.field private static mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;


# instance fields
.field private mHprofDumpNum:I

.field private mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

.field private mLogPileHandler:Landroid/os/Handler;

.field private mLogPileThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

.field private mNativeHeapDumpNum:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v0, "StatusLog"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/utils/android/StatusLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/android/StatusLog;

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I

    return v0
.end method

.method static synthetic access$108(Lcom/lenovo/scg/common/utils/android/StatusLog;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/android/StatusLog;

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/utils/android/StatusLog;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/android/StatusLog;

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I

    return v0
.end method

.method static synthetic access$208(Lcom/lenovo/scg/common/utils/android/StatusLog;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/android/StatusLog;

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I

    return v0
.end method

.method private static createDir(Ljava/lang/String;)V
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 199
    const-string v1, "StatusLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "StatusLog"

    const-string v2, "createDir failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    const-string v0, "StatusLog"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->exit()V

    .line 187
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    iput-object v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    .line 195
    :cond_1
    return-void
.end method

.method public static getCurTime()J
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/lenovo/scg/common/utils/android/StatusLog;

    invoke-direct {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    .line 145
    sget-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    invoke-direct {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->init()V

    .line 148
    :cond_0
    sget-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string v0, "StatusLog"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v0, "/mnt/sdcard/SCGstatusLog/"

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->createDir(Ljava/lang/String;)V

    .line 165
    const-string v0, "/mnt/sdcard/SCGstatusLog/NativeHeap/"

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->createDir(Ljava/lang/String;)V

    .line 166
    const-string v0, "/mnt/sdcard/SCGstatusLog/hprof/"

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->createDir(Ljava/lang/String;)V

    .line 168
    iput v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I

    .line 169
    iput v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I

    .line 171
    new-instance v0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;-><init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogBinThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->start()V

    .line 174
    new-instance v0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;-><init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->start()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileThread:Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    return-void
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    invoke-direct {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->finish()V

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mInstance:Lcom/lenovo/scg/common/utils/android/StatusLog;

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public dumpHprof()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    return-void
.end method

.method public dumpNativeHeap()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method

.method public writeEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "strEvent"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v1, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;-><init>(Lcom/lenovo/scg/common/utils/android/StatusLog;Lcom/lenovo/scg/common/utils/android/StatusLog$1;)V

    .line 211
    .local v1, "msgparam":Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getCurTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;->time:J

    .line 212
    iput-object p1, v1, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;->str:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog;->mLogPileHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method
