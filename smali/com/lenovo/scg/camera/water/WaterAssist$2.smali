.class Lcom/lenovo/scg/camera/water/WaterAssist$2;
.super Ljava/lang/Object;
.source "WaterAssist.java"

# interfaces
.implements Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/WaterAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/water/WaterAssist;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/water/WaterAssist;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterAssist$2;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesPerPixel()F
    .locals 1

    .prologue
    .line 128
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x11

    return v0
.end method

.method public getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public isSupportArcSoftFD()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportArcSoftOT()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 0
    .param p1, "dataBufIn"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p2, "dataBufOut"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p3, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p4, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p5, "previewSizeWidth"    # I
    .param p6, "previewSizeHeight"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 3
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p4, "previewSizeWidth"    # I
    .param p5, "previewSizeHeight"    # I

    .prologue
    .line 110
    const-string v0, "WaterAssist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewBufferedFrame, agender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterAssist$2;->this$0:Lcom/lenovo/scg/camera/water/WaterAssist;

    # invokes: Lcom/lenovo/scg/camera/water/WaterAssist;->processWater([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    invoke-static {v0, p1, p2, p3}, Lcom/lenovo/scg/camera/water/WaterAssist;->access$300(Lcom/lenovo/scg/camera/water/WaterAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    .line 114
    return-void
.end method
