.class Lcom/lenovo/scg/camera/PhotoModule$18;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
        "<",
        "Lcom/lenovo/scg/camera/MediaSavePara;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 2438
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFailed(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2491
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFailed, e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    return-void
.end method

.method public handleStart()V
    .locals 2

    .prologue
    .line 2442
    const-string v0, "CAM_PhotoModule"

    const-string v1, "handleStart."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return-void
.end method

.method public handleSuccess(Lcom/lenovo/scg/camera/MediaSavePara;)V
    .locals 17
    .param p1, "resultPara"    # Lcom/lenovo/scg/camera/MediaSavePara;

    .prologue
    .line 2447
    const-string/jumbo v4, "panhui10"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSuccess, result = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-string v3, "enter  handleSuccess"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$5100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 2453
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/lenovo/scg/camera/MediaSavePara;->time:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    .line 2454
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/lenovo/scg/camera/MediaSavePara;->time:J

    .line 2458
    .local v6, "date":J
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->needCreateName:Z

    if-eqz v3, :cond_0

    .line 2460
    invoke-static {v6, v7}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v5

    .line 2462
    :cond_0
    if-nez v5, :cond_3

    .line 2463
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Unbalanced name/data pair"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :goto_2
    return-void

    .line 2447
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "date":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2456
    .restart local v5    # "title":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v6, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    .restart local v6    # "date":J
    goto :goto_1

    .line 2465
    :cond_3
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-wide v6, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    .line 2466
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/PhotoModule;->access$5200(Lcom/lenovo/scg/camera/PhotoModule;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 2467
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    if-eqz v3, :cond_5

    .line 2469
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v4, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v8, "M"

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v2

    .line 2471
    .local v2, "directionRefTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v4, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v8, Lcom/lenovo/scg/gallery3d/exif/Rational;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I
    invoke-static {v9}, Lcom/lenovo/scg/camera/PhotoModule;->access$5200(Lcom/lenovo/scg/camera/PhotoModule;)I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x1

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/lenovo/scg/gallery3d/exif/Rational;-><init>(JJ)V

    invoke-virtual {v3, v4, v8}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v16

    .line 2472
    .local v16, "directionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2473
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2480
    .end local v2    # "directionRefTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v16    # "directionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    :cond_5
    const-string/jumbo v3, "will call addImage"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v3, v3, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mOnMediaSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;
    invoke-static {v13}, Lcom/lenovo/scg/camera/PhotoModule;->access$5300(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v14, v14, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/camera/PhotoModule$18;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;
    invoke-static {v15}, Lcom/lenovo/scg/camera/PhotoModule;->access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailViewWidth()I

    move-result v15

    invoke-virtual/range {v3 .. v15}, Lcom/lenovo/scg/camera/MediaSaveService;->addImage([BLjava/lang/String;JLandroid/location/Location;IIILcom/lenovo/scg/gallery3d/exif/ExifInterface;Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;Landroid/content/ContentResolver;I)V

    goto/16 :goto_2
.end method

.method public bridge synthetic handleSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2438
    check-cast p1, Lcom/lenovo/scg/camera/MediaSavePara;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$18;->handleSuccess(Lcom/lenovo/scg/camera/MediaSavePara;)V

    return-void
.end method
