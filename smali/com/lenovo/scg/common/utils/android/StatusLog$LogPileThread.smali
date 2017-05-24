.class Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;
.super Landroid/os/HandlerThread;
.source "StatusLog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/android/StatusLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogPileThread"
.end annotation


# instance fields
.field mLogFileNativeHeapTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

.field private mLogFileText:Lcom/lenovo/scg/common/utils/android/LogFileText;

.field private mLogFileTextTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

.field private mfNativeHeapInfo:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/common/utils/android/StatusLog;)V
    .locals 1

    .prologue
    .line 326
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    .line 327
    const-string v0, "LogPileThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 333
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 427
    :goto_0
    return v10

    .line 336
    :pswitch_0
    new-instance v6, Lcom/lenovo/scg/common/utils/android/LogFileBin;

    const-string v7, "/mnt/sdcard/SCGstatusLog/Event.bin"

    invoke-direct {v6, v7}, Lcom/lenovo/scg/common/utils/android/LogFileBin;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileTextTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    .line 337
    new-instance v6, Lcom/lenovo/scg/common/utils/android/LogFileText;

    const-string v7, "/mnt/sdcard/SCGstatusLog/Event.txt"

    invoke-direct {v6, v7}, Lcom/lenovo/scg/common/utils/android/LogFileText;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileText:Lcom/lenovo/scg/common/utils/android/LogFileText;

    .line 338
    new-instance v6, Lcom/lenovo/scg/common/utils/android/LogFileBin;

    const-string v7, "/mnt/sdcard/SCGstatusLog/NativeHeap/Time.bin"

    invoke-direct {v6, v7}, Lcom/lenovo/scg/common/utils/android/LogFileBin;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileNativeHeapTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileTextTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->finish()V

    .line 343
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileText:Lcom/lenovo/scg/common/utils/android/LogFileText;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/android/LogFileText;->finish()V

    .line 344
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileNativeHeapTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-virtual {v6}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->finish()V

    .line 345
    invoke-virtual {p0}, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->quit()Z

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;

    .line 350
    .local v5, "msgparam":Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileTextTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    iget-wide v8, v5, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;->time:J

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wLong(J)V

    .line 351
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileText:Lcom/lenovo/scg/common/utils/android/LogFileText;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;->str:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/common/utils/android/LogFileText;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v5    # "msgparam":Lcom/lenovo/scg/common/utils/android/StatusLog$MsgParam;
    :pswitch_3
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    # operator++ for: Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/android/StatusLog;->access$108(Lcom/lenovo/scg/common/utils/android/StatusLog;)I

    .line 357
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mLogFileNativeHeapTime:Lcom/lenovo/scg/common/utils/android/LogFileBin;

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getCurTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/lenovo/scg/common/utils/android/LogFileBin;->wLong(J)V

    .line 360
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt/sdcard/SCGstatusLog/NativeHeap/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    # getter for: Lcom/lenovo/scg/common/utils/android/StatusLog;->mNativeHeapDumpNum:I
    invoke-static {v8}, Lcom/lenovo/scg/common/utils/android/StatusLog;->access$100(Lcom/lenovo/scg/common/utils/android/StatusLog;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mfNativeHeapInfo:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_1
    const/4 v0, 0x0

    .line 370
    .local v0, "c":Ljava/lang/Class;
    :try_start_1
    const-string v6, "android.os.Debug"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 376
    :goto_2
    const/4 v4, 0x0

    .line 378
    .local v4, "m":Ljava/lang/reflect/Method;
    :try_start_2
    const-string v6, "dumpNativeHeap"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/io/FileDescriptor;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 384
    :goto_3
    const/4 v3, 0x0

    .line 386
    .local v3, "fdctNativeHeapInfo":Ljava/io/FileDescriptor;
    :try_start_3
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mfNativeHeapInfo:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    .line 393
    :goto_4
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    .line 406
    :goto_5
    :try_start_5
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mfNativeHeapInfo:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 411
    :goto_6
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->mfNativeHeapInfo:Ljava/io/FileOutputStream;

    goto/16 :goto_0

    .line 363
    .end local v0    # "c":Ljava/lang/Class;
    .end local v3    # "fdctNativeHeapInfo":Ljava/io/FileDescriptor;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 371
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "c":Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 379
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3

    .line 387
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "fdctNativeHeapInfo":Ljava/io/FileDescriptor;
    :catch_3
    move-exception v2

    .line 389
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 394
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    .line 397
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    .line 400
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    .line 407
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v1

    .line 409
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 417
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fdctNativeHeapInfo":Ljava/io/FileDescriptor;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :pswitch_4
    iget-object v6, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    # operator++ for: Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/android/StatusLog;->access$208(Lcom/lenovo/scg/common/utils/android/StatusLog;)I

    .line 419
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/mnt/sdcard/SCGstatusLog/hprof/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/common/utils/android/StatusLog$LogPileThread;->this$0:Lcom/lenovo/scg/common/utils/android/StatusLog;

    # getter for: Lcom/lenovo/scg/common/utils/android/StatusLog;->mHprofDumpNum:I
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/android/StatusLog;->access$200(Lcom/lenovo/scg/common/utils/android/StatusLog;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".hprof"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_0

    .line 420
    :catch_8
    move-exception v1

    .line 422
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
