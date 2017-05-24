.class final Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;Landroid/location/Location;)V
    .locals 0
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 223
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "jpegData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 228
    const-string v3, "VIDEO_MODE"

    const-string/jumbo v4, "onPictureTaken"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 231
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # setter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z
    invoke-static {v3, v6}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$002(Lcom/lenovo/scg/camera/mode/VideoMode;Z)Z

    .line 232
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 237
    invoke-static {p1}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v0

    .line 238
    .local v0, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v0}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v1

    .line 239
    .local v1, "orientation":I
    new-instance v2, Lcom/lenovo/scg/camera/MediaSavePara;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/MediaSavePara;-><init>()V

    .line 240
    .local v2, "para":Lcom/lenovo/scg/camera/MediaSavePara;
    iput-object p1, v2, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    .line 241
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->mLocation:Landroid/location/Location;

    iput-object v3, v2, Lcom/lenovo/scg/camera/MediaSavePara;->location:Landroid/location/Location;

    .line 242
    iput-object v0, v2, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 243
    iput v1, v2, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/lenovo/scg/camera/MediaSavePara;->time:J

    .line 245
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$100(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->modeMediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V

    .line 248
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$200(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$200(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    # getter for: Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->access$200(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 256
    :cond_0
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setCaptureing(Z)V

    .line 258
    return-void
.end method
