.class Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;
.super Ljava/lang/Thread;
.source "VideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecordThread"
.end annotation


# instance fields
.field private mData:[B

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;[B)V
    .locals 0
    .param p2, "data"    # [B

    .prologue
    .line 335
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 336
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->mData:[B

    .line 337
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 341
    :try_start_0
    const-string v10, "VIDEO_MODE"

    const-string v11, "fillVideoBuffer enter VideoRecordThread.run"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 344
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->mData:[B

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$600(Lcom/lenovo/scg/camera/mode/VideoMode;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 346
    move-wide v2, v6

    .line 347
    .local v2, "addBestLive":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$800(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 348
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$800(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->mData:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewWidth:I
    invoke-static {v12}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$900(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewHeight:I
    invoke-static {v13}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1000(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->addBestLiveScene([BII)Z

    move-result v10

    if-nez v10, :cond_0

    .line 351
    const-string v10, "VIDEO_MODE"

    const-string v11, "Didn\'t addBestLiveScene!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    const-string v10, "VIDEO_MODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addBestLiveScene done totoally costs "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v2, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->mData:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewWidth:I
    invoke-static {v12}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$900(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewHeight:I
    invoke-static {v13}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$1000(Lcom/lenovo/scg/camera/mode/VideoMode;)I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/scg/camera/mode/VideoMode;->YUV420SP_YVU420SP([BII)V

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 365
    .local v8, "yuvConvert":J
    const-string v10, "VIDEO_MODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "yuvConvert done costs "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v2

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "fillVideoBuffer"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, [B

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 373
    .local v5, "methodFillVideoBuffer":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;->mData:[B

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v10, "VIDEO_MODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillVideoBuffer done costs "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    .end local v2    # "addBestLive":J
    .end local v5    # "methodFillVideoBuffer":Ljava/lang/reflect/Method;
    .end local v6    # "now":J
    .end local v8    # "yuvConvert":J
    :cond_2
    :goto_0
    return-void

    .line 384
    .restart local v2    # "addBestLive":J
    .restart local v6    # "now":J
    :catch_0
    move-exception v4

    .line 385
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v10, "VIDEO_MODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillVideoBuffer Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 389
    .end local v2    # "addBestLive":J
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "now":J
    :catch_1
    move-exception v4

    .line 390
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v10, "VIDEO_MODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VideoRecordThread exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
