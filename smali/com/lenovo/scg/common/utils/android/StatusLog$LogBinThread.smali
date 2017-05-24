.class Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;
.super Ljava/lang/Thread;
.source "StatusLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/android/StatusLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogBinThread"
.end annotation


# instance fields
.field private mCycle:J

.field mExit:Z

.field mInit:Z

.field private mLogJavaMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

.field private mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

.field final synthetic this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    .line 241
    const-string v0, "LogBinThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 234
    iput-boolean v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mInit:Z

    .line 235
    iput-boolean v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mExit:Z

    .line 278
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mCycle:J

    .line 242
    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->finish()V

    .line 254
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogJavaMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->finish()V

    .line 255
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/lenovo/scg/common/utils/android/LogFileBin;

    const-string v1, "/mnt/sdcard/SCGstatusLog/NativeMem.bin"

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/utils/android/LogFileBin;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    .line 247
    new-instance v0, Lcom/lenovo/scg/common/utils/android/LogFileBin;

    const-string v1, "/mnt/sdcard/SCGstatusLog/JavaMem.bin"

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/utils/android/LogFileBin;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogJavaMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mInit:Z

    .line 249
    return-void
.end method

.method private writeLogs()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 259
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    if-eqz v4, :cond_0

    .line 261
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getCurTime()J

    move-result-wide v2

    .line 263
    .local v2, "t":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    shr-long/2addr v4, v6

    long-to-int v1, v4

    .line 264
    .local v1, "nNativeMem":I
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wLong(J)V

    .line 265
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogNativeMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wInt(I)V

    .line 267
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    shr-long/2addr v4, v6

    long-to-int v0, v4

    .line 268
    .local v0, "nJavaAllocatedMem":I
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogJavaMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v4, v2, v3}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wLong(J)V

    .line 269
    iget-object v4, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mLogJavaMem:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wInt(I)V

    .line 271
    .end local v0    # "nJavaAllocatedMem":I
    .end local v1    # "nNativeMem":I
    .end local v2    # "t":J
    :cond_0
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mExit:Z

    .line 276
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 286
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mExit:Z

    if-nez v1, :cond_1

    .line 288
    iget-boolean v1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mInit:Z

    if-nez v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->init()V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->writeLogs()V

    .line 297
    :try_start_0
    iget-wide v2, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mCycle:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->finish()V

    .line 307
    return-void
.end method

.method public setCycle(J)V
    .locals 1
    .param p1, "cycle"    # J

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogBinThread;->mCycle:J

    .line 282
    return-void
.end method
