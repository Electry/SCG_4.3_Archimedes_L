.class final Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper$1;
.super Ljava/lang/Thread;
.source "VREngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Start(Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 142
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    if-nez v5, :cond_0

    .line 143
    new-instance v5, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    const v6, 0xfa00

    invoke-direct {v5, v6}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;-><init>(I)V

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 145
    :cond_0
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->reset()V

    .line 146
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$100()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->start()Z

    .line 148
    :try_start_0
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 149
    :try_start_1
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v5

    if-nez v5, :cond_3

    .line 150
    const-string v5, "VREngineWrapper"

    const-string v7, "Start(): !mAvailable && return"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 181
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 183
    :try_start_2
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free engine tid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    const-string v5, "VREngineWrapper"

    const-string v7, "Free engine & !mAvailable && return"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v6

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    invoke-static {}, Lcom/baidu/speech/easr/easrNativeJni;->Free()I

    move-result v4

    .line 189
    .local v4, "ret":I
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$302(Z)Z

    .line 191
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {v12}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$102(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 193
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v6

    monitor-enter v6

    .line 194
    :try_start_3
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->clear()V

    .line 195
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 196
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 191
    .end local v4    # "ret":I
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 153
    :cond_3
    :try_start_5
    # invokes: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Restart()V
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$400()V

    .line 154
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 155
    const/16 v1, 0x640

    .line 156
    .local v1, "bufferSize":I
    const/4 v0, 0x0

    .line 157
    .local v0, "bufferRead":I
    :try_start_6
    new-array v3, v1, [S

    .line 159
    .local v3, "realBuffer":[S
    :cond_4
    :goto_1
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$100()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->getStatus()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    move-result-object v5

    sget-object v6, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    if-eq v5, v6, :cond_5

    .line 160
    const-wide/16 v6, 0x5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 161
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v6

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 162
    :try_start_7
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->readShort([SI)I

    move-result v0

    .line 163
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 164
    if-lez v0, :cond_4

    .line 165
    :try_start_8
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 166
    :try_start_9
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v5

    if-nez v5, :cond_6

    .line 167
    const-string v5, "VREngineWrapper"

    const-string v7, "Start: !mAvailable && break"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 175
    :cond_5
    :try_start_a
    const-string v5, "VREngineWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exit from decoding thread tid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 181
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 183
    :try_start_b
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free engine tid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v5

    if-nez v5, :cond_7

    .line 185
    const-string v5, "VREngineWrapper"

    const-string v7, "Free engine & !mAvailable && return"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v6

    goto/16 :goto_0

    .line 191
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v5

    .line 154
    .end local v0    # "bufferRead":I
    .end local v1    # "bufferSize":I
    .end local v3    # "realBuffer":[S
    :catchall_3
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 181
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$600()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 183
    :try_start_f
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free engine tid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v5

    if-nez v5, :cond_8

    .line 185
    const-string v5, "VREngineWrapper"

    const-string v7, "Free engine & !mAvailable && return"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v6

    goto/16 :goto_0

    .line 191
    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v5

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufferRead":I
    .restart local v1    # "bufferSize":I
    .restart local v3    # "realBuffer":[S
    :catchall_5
    move-exception v5

    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    throw v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 181
    .end local v0    # "bufferRead":I
    .end local v1    # "bufferSize":I
    .end local v3    # "realBuffer":[S
    :catchall_6
    move-exception v5

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mExitFlag:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$600()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 182
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$200()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 183
    :try_start_12
    const-string v7, "VREngineWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Free engine tid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$300()Z

    move-result v7

    if-nez v7, :cond_9

    .line 185
    const-string v5, "VREngineWrapper"

    const-string v7, "Free engine & !mAvailable && return"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v6

    goto/16 :goto_0

    .line 191
    :catchall_7
    move-exception v5

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v5

    .line 170
    .restart local v0    # "bufferRead":I
    .restart local v1    # "bufferSize":I
    .restart local v3    # "realBuffer":[S
    :cond_6
    :try_start_13
    # invokes: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->ProcData([SI)V
    invoke-static {v3, v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$500([SI)V

    .line 171
    monitor-exit v6

    goto/16 :goto_1

    :catchall_8
    move-exception v5

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    throw v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 188
    :cond_7
    :try_start_15
    invoke-static {}, Lcom/baidu/speech/easr/easrNativeJni;->Free()I

    move-result v4

    .line 189
    .restart local v4    # "ret":I
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$302(Z)Z

    .line 191
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 192
    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {v12}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$102(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 193
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v6

    monitor-enter v6

    .line 194
    :try_start_16
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->clear()V

    .line 195
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 196
    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v5

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v5

    .line 188
    .end local v0    # "bufferRead":I
    .end local v1    # "bufferSize":I
    .end local v3    # "realBuffer":[S
    .end local v4    # "ret":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_17
    invoke-static {}, Lcom/baidu/speech/easr/easrNativeJni;->Free()I

    move-result v4

    .line 189
    .restart local v4    # "ret":I
    const-string v5, "VREngineWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Free "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$302(Z)Z

    .line 191
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 192
    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {v12}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$102(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 193
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v6

    monitor-enter v6

    .line 194
    :try_start_18
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->clear()V

    .line 195
    const/4 v5, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 196
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v5

    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    throw v5

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "ret":I
    :cond_9
    :try_start_19
    invoke-static {}, Lcom/baidu/speech/easr/easrNativeJni;->Free()I

    move-result v4

    .line 189
    .restart local v4    # "ret":I
    const-string v7, "VREngineWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Free "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v7, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mAvailable:Z
    invoke-static {v7}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$302(Z)Z

    .line 191
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 192
    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mRecorder:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
    invoke-static {v12}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$102(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .line 193
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v6

    monitor-enter v6

    .line 194
    :try_start_1a
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$000()Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;->clear()V

    .line 195
    const/4 v7, 0x0

    # setter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->mDataBuffer:Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;
    invoke-static {v7}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->access$002(Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;)Lcom/lenovo/scg/camera/voiceshutter/VREngineDataBuffer;

    .line 196
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .end local v4    # "ret":I
    :cond_a
    throw v5

    .restart local v4    # "ret":I
    :catchall_b
    move-exception v5

    :try_start_1b
    monitor-exit v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v5
.end method
