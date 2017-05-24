.class Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;
.super Ljava/lang/Thread;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;Lcom/lenovo/scg/camera/mode/VideoMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/VideoMode$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 265
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$300(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "bytesRead":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioBufferSize:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$500(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v4

    new-array v4, v4, [B

    # setter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mTempBuffer:[B
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$402(Lcom/lenovo/scg/camera/mode/VideoMode;[B)[B

    .line 268
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsAudioRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$600(Lcom/lenovo/scg/camera/mode/VideoMode;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$600(Lcom/lenovo/scg/camera/mode/VideoMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$300(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/AudioRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mTempBuffer:[B
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$400(Lcom/lenovo/scg/camera/mode/VideoMode;)[B

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioBufferSize:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$500(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    .line 273
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecordThread bytesRead = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-lez v0, :cond_0

    .line 280
    const-string v3, "VIDEO_MODE"

    const-string v4, "AudioRecordThread start fillAudioBuffer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-eqz v3, :cond_0

    .line 284
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "fillAudioBuffer"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 290
    .local v2, "methodFillAudioBuffer":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 291
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mTempBuffer:[B
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$400(Lcom/lenovo/scg/camera/mode/VideoMode;)[B

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v3, "VIDEO_MODE"

    const-string v4, "AudioRecordThread fillAudioBuffer done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 297
    .end local v2    # "methodFillAudioBuffer":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecordThread methodFillAudioBuffer Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 322
    .end local v0    # "bytesRead":I
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecordThread exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
