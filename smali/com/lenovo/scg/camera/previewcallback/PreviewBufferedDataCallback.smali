.class public interface abstract Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;
.super Ljava/lang/Object;
.source "PreviewBufferedDataCallback.java"


# virtual methods
.method public abstract getBytesPerPixel()F
.end method

.method public abstract getImageFormat()I
.end method

.method public abstract getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
.end method

.method public abstract isSupportArcSoftFD()Z
.end method

.method public abstract isSupportArcSoftOT()Z
.end method

.method public abstract onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
.end method

.method public abstract onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
.end method
