.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;
.super Ljava/lang/Thread;
.source "ContinuousShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousSaveThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;
    }
.end annotation


# instance fields
.field private mStopCalled:Z

.field private m_arrJepgData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V
    .locals 1

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->mStopCalled:Z

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->m_arrJepgData:Ljava/util/ArrayList;

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)V

    return-void
.end method

.method private saveJepgData(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;)V
    .locals 25
    .param p1, "dataHolder"    # Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;

    .prologue
    .line 570
    if-nez p1, :cond_0

    .line 571
    const-string v20, "dataHolder data = null, will return"

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 575
    .local v8, "l1":J
    const-string/jumbo v20, "start save jpeg data, index=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 578
    const-string v20, "index=%d,will return "

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 581
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 582
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "continuous_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 583
    .local v18, "title":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 584
    .local v16, "path":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lenovo/scg/camera/Storage;->setContinuosPath(Ljava/lang/String;)V

    .line 585
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    move-result v20

    if-nez v20, :cond_2

    .line 587
    const-string/jumbo v20, "mkdirs failed!Can\'t startContinuousShooting!"

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 589
    :cond_2
    const-string/jumbo v20, "startContinuousShooting, path=%s , title =%s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    const/16 v22, 0x1

    aput-object v18, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    .end local v16    # "path":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/Exif;->getOrientation([B)I

    move-result v13

    .line 593
    .local v13, "orientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$600(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getJpegRotate()I

    move-result v7

    .line 595
    .local v7, "jpegRotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/hardware/Camera$Parameters;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 596
    .local v12, "mSize":Landroid/hardware/Camera$Size;
    add-int v20, v7, v13

    move/from16 v0, v20

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 597
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    .line 598
    .local v19, "width":I
    iget v6, v12, Landroid/hardware/Camera$Size;->height:I

    .line 604
    .local v6, "height":I
    :goto_1
    new-instance v17, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V

    .line 605
    .local v17, "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->lTimeTaken:J

    .line 606
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->lTimeTaken:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    .line 607
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->width:I

    .line 608
    move-object/from16 v0, v17

    iput v6, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->height:I

    .line 609
    move-object/from16 v0, v17

    iput v13, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->orientation:I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->addRequestList(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V

    .line 613
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v5, "file":Ljava/io/File;
    const/4 v14, 0x0

    .line 619
    .local v14, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    .end local v14    # "outputStream":Ljava/io/OutputStream;
    .local v15, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/OutputStream;->write([B)V

    .line 621
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    if-eqz v15, :cond_4

    .line 629
    :try_start_2
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 634
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 635
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object v14, v15

    .line 640
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 642
    .local v10, "l2":J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StoreThread ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] Spend time:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v22, v10, v8

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " showcount= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v21, v0

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I
    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    const-string v20, "cache data buffer count = %d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v23, v0

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I
    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I

    move-result v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mIndex:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 600
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "height":I
    .end local v10    # "l2":J
    .end local v14    # "outputStream":Ljava/io/OutputStream;
    .end local v17    # "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    .end local v19    # "width":I
    :cond_5
    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    .line 601
    .restart local v19    # "width":I
    iget v6, v12, Landroid/hardware/Camera$Size;->width:I

    .restart local v6    # "height":I
    goto/16 :goto_1

    .line 630
    .restart local v5    # "file":Ljava/io/File;
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v17    # "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    :catch_0
    move-exception v4

    .line 631
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 622
    .end local v4    # "e":Ljava/io/IOException;
    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 623
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    if-eqz v14, :cond_6

    .line 629
    :try_start_4
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 634
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 635
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    goto/16 :goto_3

    .line 630
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 631
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 624
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 625
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 627
    if-eqz v14, :cond_7

    .line 629
    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 634
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 635
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    goto/16 :goto_3

    .line 630
    :catch_4
    move-exception v4

    .line 631
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 627
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v20

    :goto_8
    if-eqz v14, :cond_8

    .line 629
    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 634
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static/range {v21 .. v23}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 635
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    throw v20

    .line 630
    :catch_5
    move-exception v4

    .line 631
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 627
    .end local v4    # "e":Ljava/io/IOException;
    .end local v14    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v20

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "outputStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 624
    .end local v14    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v4

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 622
    .end local v14    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v4

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/OutputStream;
    .restart local v14    # "outputStream":Ljava/io/OutputStream;
    goto/16 :goto_4
.end method


# virtual methods
.method public addData([BI)V
    .locals 3
    .param p1, "jpegData"    # [B
    .param p2, "index"    # I

    .prologue
    .line 558
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveLock:[B
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$800(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)[B

    move-result-object v2

    monitor-enter v2

    .line 559
    :try_start_0
    new-instance v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;[BI)V

    .line 560
    .local v0, "dataHolder":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->m_arrJepgData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    monitor-exit v2

    .line 562
    return-void

    .line 561
    .end local v0    # "dataHolder":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 526
    :goto_0
    const/4 v2, 0x0

    .line 527
    .local v2, "dataHolder":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveLock:[B
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$800(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)[B

    move-result-object v4

    monitor-enter v4

    .line 528
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->m_arrJepgData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 529
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->m_arrJepgData:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;

    move-object v2, v0

    .line 539
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    if-eqz v2, :cond_1

    .line 541
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->saveJepgData(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;)V

    .line 542
    iput-object v6, v2, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread$DataHolder;->mJpegData:[B

    .line 543
    const/4 v2, 0x0

    .line 547
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 551
    :goto_1
    const-string v3, "ContinuousSaveThread running!!!"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_2
    :try_start_2
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->mStopCalled:Z

    if-eqz v3, :cond_3

    .line 532
    const-string v3, "ContinuousSaveThread will break, mStopCalled=true"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 533
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # setter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mSaveThread:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;
    invoke-static {v3, v6}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1002(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;)Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;

    .line 554
    const-string v3, "ContinuousSaveThread exited"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 555
    return-void

    .line 534
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mIsBreak:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$900(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    const-string v3, "ContinuousSaveThread will break, mIsBreak=true"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 536
    monitor-exit v4

    goto :goto_2

    .line 539
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 548
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public stopSave()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 565
    const-string v0, "current jpeg to be save count is : %d"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->m_arrJepgData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$ContinuousSaveThread;->mStopCalled:Z

    .line 567
    return-void
.end method
