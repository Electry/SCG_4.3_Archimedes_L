.class public Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;
.super Ljava/lang/Object;
.source "ObjectTrackingDataCallback.java"

# interfaces
.implements Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ObjectTrackingDataCallback"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "ObjectTrackingDataCallback"

    const-string v1, "ObjectTrackingDataCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method


# virtual methods
.method public getBytesPerPixel()F
    .locals 1

    .prologue
    .line 49
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x11

    return v0
.end method

.method public getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public isSupportArcSoftFD()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportArcSoftOT()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

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
    .line 24
    const-string v0, "ObjectTrackingDataCallback"

    const-string/jumbo v1, "onPreviewBufferedFrame PreviewPassDataBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
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
    .line 30
    const-string v0, "ObjectTrackingDataCallback"

    const-string v1, "OT onPreviewBufferedFrame byte[]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processVideoSmartTracking([B)V

    .line 35
    :cond_0
    return-void
.end method
