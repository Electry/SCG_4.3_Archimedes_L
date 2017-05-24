.class public Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;
.super Ljava/lang/Object;
.source "VideoBgCameraPreviewCallback.java"

# interfaces
.implements Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BestLiveBgCameraPreviewCallback"


# instance fields
.field private mListener:Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;

.field time01:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;->time01:J

    .line 22
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;->mListener:Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;

    .line 23
    const-string v0, "BestLiveBgCameraPreviewCallback"

    const-string v1, "VideoBgCameraPreviewCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method


# virtual methods
.method public getBytesPerPixel()F
    .locals 1

    .prologue
    .line 59
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x11

    return v0
.end method

.method public getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public isSupportArcSoftFD()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportArcSoftOT()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 2
    .param p1, "dataBufIn"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p2, "dataBufOut"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p3, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p4, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I

    .prologue
    .line 32
    const-string v0, "BestLiveBgCameraPreviewCallback"

    const-string v1, "VideoBgCameraPreviewCallback PreviewPassDataBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 2
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I

    .prologue
    .line 38
    const-string v0, "BestLiveBgCameraPreviewCallback"

    const-string v1, "VideoBgCameraPreviewCallback byte[]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;->mListener:Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;->mListener:Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;

    invoke-interface {v0, p1, p4, p5}, Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;->onBackgroundCameraCb([BII)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, "BestLiveBgCameraPreviewCallback"

    const-string v1, "mListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
