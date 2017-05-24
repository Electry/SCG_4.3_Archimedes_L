.class Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;
.super Ljava/lang/Object;
.source "VREngineRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 47
    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mRecorderMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$000()Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 48
    :try_start_0
    const-string v3, "VREngineRecorder"

    const-string/jumbo v4, "mWorkThread Started."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v14

    .line 50
    .local v14, "start":J
    const/4 v12, 0x0

    .line 52
    .local v12, "record":Landroid/media/AudioRecord;
    const/16 v3, -0x10

    :try_start_1
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mSample:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$100(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I

    move-result v3

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mAudioFormat:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$200(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 57
    .local v7, "bufferSize":I
    const-string v3, "VREngineRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord.getMinBufferSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    new-instance v2, Landroid/media/AudioRecord;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mSample:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$100(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I

    move-result v4

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mAudioFormat:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$200(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I

    move-result v6

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    .end local v12    # "record":Landroid/media/AudioRecord;
    .local v2, "record":Landroid/media/AudioRecord;
    const-wide/16 v4, 0xa

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 68
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 69
    const-string v3, "VREngineRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecording() cost "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    sget-object v4, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->WORKING:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V

    .line 73
    const/4 v10, 0x1

    .line 75
    .local v10, "first":Z
    new-array v8, v7, [B

    .line 76
    .local v8, "buffer":[B
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    # getter for: Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->access$300(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const/4 v3, 0x0

    array-length v4, v8

    invoke-virtual {v2, v8, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v11

    .line 79
    .local v11, "readSize":I
    if-lez v11, :cond_2

    .line 80
    if-eqz v10, :cond_0

    .line 81
    const/4 v10, 0x0

    .line 82
    const-string v3, "VREngineRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadyForSpeech "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {v8, v11}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->SendData([BI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 91
    .end local v8    # "buffer":[B
    .end local v10    # "first":Z
    .end local v11    # "readSize":I
    :catch_0
    move-exception v9

    .line 92
    .end local v7    # "bufferSize":I
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    const-string v3, "VREngineRecorder"

    const-string v4, "WorkThread finished."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    sget-object v4, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 97
    if-eqz v2, :cond_1

    .line 99
    :try_start_5
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 100
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    const/4 v2, 0x0

    .line 108
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 109
    return-void

    .line 87
    .restart local v7    # "bufferSize":I
    .restart local v8    # "buffer":[B
    .restart local v10    # "first":Z
    .restart local v11    # "readSize":I
    :cond_2
    :try_start_7
    const-string v3, "VREngineRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "record.read return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 95
    .end local v7    # "bufferSize":I
    .end local v8    # "buffer":[B
    .end local v10    # "first":Z
    .end local v11    # "readSize":I
    :catchall_0
    move-exception v3

    :goto_3
    :try_start_8
    const-string v4, "VREngineRecorder"

    const-string v5, "WorkThread finished."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    sget-object v5, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 97
    if-eqz v2, :cond_3

    .line 99
    :try_start_9
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 100
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 101
    const/4 v2, 0x0

    .line 105
    :cond_3
    :goto_4
    :try_start_a
    throw v3

    .line 108
    .end local v2    # "record":Landroid/media/AudioRecord;
    .end local v14    # "start":J
    :catchall_1
    move-exception v3

    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v3

    .line 95
    .restart local v2    # "record":Landroid/media/AudioRecord;
    .restart local v7    # "bufferSize":I
    .restart local v8    # "buffer":[B
    .restart local v10    # "first":Z
    .restart local v14    # "start":J
    :cond_4
    :try_start_b
    const-string v3, "VREngineRecorder"

    const-string v4, "WorkThread finished."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;->this$0:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    sget-object v4, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 97
    if-eqz v2, :cond_1

    .line 99
    :try_start_c
    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 100
    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 101
    const/4 v2, 0x0

    goto :goto_2

    .line 103
    :catch_1
    move-exception v9

    .line 104
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v7    # "bufferSize":I
    .end local v8    # "buffer":[B
    .end local v10    # "first":Z
    :catch_2
    move-exception v9

    .line 104
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 103
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 104
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 95
    .end local v2    # "record":Landroid/media/AudioRecord;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "record":Landroid/media/AudioRecord;
    :catchall_2
    move-exception v3

    move-object v2, v12

    .end local v12    # "record":Landroid/media/AudioRecord;
    .restart local v2    # "record":Landroid/media/AudioRecord;
    goto :goto_3

    .line 91
    .end local v2    # "record":Landroid/media/AudioRecord;
    .restart local v12    # "record":Landroid/media/AudioRecord;
    :catch_4
    move-exception v9

    move-object v2, v12

    .end local v12    # "record":Landroid/media/AudioRecord;
    .restart local v2    # "record":Landroid/media/AudioRecord;
    goto/16 :goto_1
.end method
