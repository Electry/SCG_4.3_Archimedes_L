.class Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;
.super Ljava/lang/Object;
.source "ContinuousShootingMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreThread"
.end annotation


# instance fields
.field private mIndex:I

.field private mJpegData:[B

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;[BI)V
    .locals 0
    .param p2, "jpegData"    # [B
    .param p3, "index"    # I

    .prologue
    .line 666
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    .line 668
    iput p3, p0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    .line 669
    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 674
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    const/16 v15, 0x64

    if-lt v14, v15, :cond_0

    .line 675
    const-string v14, "index=%d,will return "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    :goto_0
    return-void

    .line 678
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    if-nez v14, :cond_2

    .line 679
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "continuous_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 680
    .local v12, "title":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 681
    .local v10, "path":Ljava/lang/String;
    invoke-static {v12}, Lcom/lenovo/scg/camera/Storage;->setContinuosPath(Ljava/lang/String;)V

    .line 682
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    if-nez v14, :cond_1

    .line 684
    const-string/jumbo v14, "mkdirs failed!Can\'t startContinuousShooting!"

    invoke-static {v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 686
    :cond_1
    const-string/jumbo v14, "startContinuousShooting, path=%s , title =%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    invoke-static {v14}, Lcom/lenovo/scg/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 690
    .local v7, "orientation":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;
    invoke-static {v14}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$600(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;

    move-result-object v14

    invoke-interface {v14}, Lcom/lenovo/scg/camera/mode/controller/ContinuousShootingModeController;->getJpegRotate()I

    move-result v5

    .line 692
    .local v5, "jpegRotation":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v14}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1100(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)Landroid/hardware/Camera$Parameters;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 693
    .local v6, "mSize":Landroid/hardware/Camera$Size;
    add-int v14, v5, v7

    rem-int/lit16 v14, v14, 0xb4

    if-nez v14, :cond_4

    .line 695
    iget v13, v6, Landroid/hardware/Camera$Size;->width:I

    .line 696
    .local v13, "width":I
    iget v4, v6, Landroid/hardware/Camera$Size;->height:I

    .line 702
    .local v4, "height":I
    :goto_1
    new-instance v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;-><init>(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$1;)V

    .line 703
    .local v11, "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->lTimeTaken:J

    .line 704
    iget-wide v14, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->lTimeTaken:J

    invoke-static {v14, v15}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    .line 705
    iput v13, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->width:I

    .line 706
    iput v4, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->height:I

    .line 707
    iput v7, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->orientation:I

    .line 709
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->addRequestList(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V
    invoke-static {v14, v11}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1300(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;)V

    .line 711
    new-instance v3, Ljava/io/File;

    iget-object v14, v11, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;->title:Ljava/lang/String;

    invoke-static {v14}, Lcom/lenovo/scg/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v3, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 717
    .local v8, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    invoke-virtual {v9, v14}, Ljava/io/OutputStream;->write([B)V

    .line 719
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 725
    if-eqz v9, :cond_3

    .line 727
    :try_start_2
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 732
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v14, v0, v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    move-object v8, v9

    .line 737
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StoreThread ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] Spend time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "showcount= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I
    invoke-static {v15}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    const-string v14, "cache data buffer count = %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v17, v0

    # getter for: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->mShotCountNow:I
    invoke-static/range {v17 .. v17}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$500(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mIndex:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 698
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "height":I
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .end local v11    # "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    .end local v13    # "width":I
    :cond_4
    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    .line 699
    .restart local v13    # "width":I
    iget v4, v6, Landroid/hardware/Camera$Size;->width:I

    .restart local v4    # "height":I
    goto/16 :goto_1

    .line 728
    .restart local v3    # "file":Ljava/io/File;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v11    # "r":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$SaveRequest;
    :catch_0
    move-exception v2

    .line 729
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 720
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 721
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    if-eqz v8, :cond_5

    .line 727
    :try_start_4
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 732
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v14, v0, v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    goto/16 :goto_3

    .line 728
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 729
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 722
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 723
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 725
    if-eqz v8, :cond_6

    .line 727
    :try_start_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 732
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    array-length v15, v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static {v14, v0, v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    goto/16 :goto_3

    .line 728
    :catch_4
    move-exception v2

    .line 729
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 725
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v8, :cond_7

    .line 727
    :try_start_7
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 732
    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->this$0:Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    # invokes: Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->recycleUnsavedSpace(J)V
    invoke-static/range {v15 .. v17}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->access$1400(Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;J)V

    .line 733
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode$StoreThread;->mJpegData:[B

    throw v14

    .line 728
    :catch_5
    move-exception v2

    .line 729
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 725
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_8

    .line 722
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .line 720
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v9    # "outputStream":Ljava/io/OutputStream;
    :catch_7
    move-exception v2

    move-object v8, v9

    .end local v9    # "outputStream":Ljava/io/OutputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4
.end method
