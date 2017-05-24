.class public Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;
.super Ljava/lang/Object;
.source "NightPreviewCallback.java"

# interfaces
.implements Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;


# instance fields
.field private mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;)V
    .locals 1
    .param p1, "t"    # Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 16
    iput-object p1, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 17
    return-void
.end method


# virtual methods
.method public getBytesPerPixel()F
    .locals 1

    .prologue
    .line 50
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x11

    return v0
.end method

.method public getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public isSupportArcSoftFD()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportArcSoftOT()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 6
    .param p1, "dataBufIn"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p2, "dataBufOut"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p3, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p4, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I

    .prologue
    .line 30
    iget-object v1, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;->getNightPreviewEng()Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;

    move-result-object v0

    .line 32
    .local v0, "eng":Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->getHandler()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->getHandler()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;->NightPreview_ProcessByAddr(JJ)J

    .line 36
    .end local v0    # "eng":Lcom/lenovo/scg/camera/nightpreview/NightPreviewJNI;
    :cond_0
    return-void
.end method

.method public onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 0
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I

    .prologue
    .line 25
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/nightpreview/NightPreviewCallback;->mNightPreviewThread:Lcom/lenovo/scg/camera/nightpreview/NightPreviewParmaThread;

    .line 21
    return-void
.end method
