.class public Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
.super Ljava/lang/Object;
.source "PreviewCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$1;,
        Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final AS_FACE_DOWN:I = 0x4

.field private static final AS_FACE_LEFT:I = 0x2

.field private static final AS_FACE_RIGHT:I = 0x3

.field private static final AS_FACE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PreviewCallbackManager"


# instance fields
.field private final MAX_FACE_DETECT_SUPPORT:I

.field private mBufferedCamPreviewCb:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

.field private mBytesPerPixel:F

.field private mCallbackCount:J

.field private mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

.field private mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private mGlRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

.field private mImageFormat:I

.field private mIspFaceOrientation:[I

.field private mIspFaceRects:[Landroid/graphics/Rect;

.field private mJumpFrames:I

.field private mLastCallbackTime:J

.field private mLastUsedCbDataTime:J

.field private mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

.field private mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

.field private mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

.field private mPreviewCbMaxFPS:I

.field private mPreviewCbMinInterval:I

.field private mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

.field private mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

.field private mStoped:Z

.field private mapBufferObject:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<[B",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    .line 59
    iput v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/facetracking/MFaceResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 69
    iput v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->MAX_FACE_DETECT_SUPPORT:I

    .line 70
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceOrientation:[I

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J

    return-wide p1
.end method

.method static synthetic access$108(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J
    .locals 4
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCallbackCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastUsedCbDataTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mLastUsedCbDataTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbMinInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->prepairPreviewBuffer()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    .param p1, "x1"    # [B

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->jumpPreviewFrame([B)V

    return-void
.end method

.method private getFaceOrientation(IIII)I
    .locals 3
    .param p1, "lx"    # I
    .param p2, "ly"    # I
    .param p3, "rx"    # I
    .param p4, "ry"    # I

    .prologue
    .line 503
    sub-int v2, p1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 504
    .local v0, "dx":I
    sub-int v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 505
    .local v1, "dy":I
    if-le v0, v1, :cond_1

    .line 506
    if-le p1, p3, :cond_0

    .line 507
    const/4 v2, 0x4

    .line 515
    :goto_0
    return v2

    .line 509
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 512
    :cond_1
    if-le p2, p4, :cond_2

    .line 513
    const/4 v2, 0x2

    goto :goto_0

    .line 515
    :cond_2
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private initVariable(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)Z
    .locals 5
    .param p1, "previewTexDrawMode"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    .prologue
    .line 119
    const-string v1, "PreviewCallbackManager"

    const-string v2, "initVariable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 121
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 122
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getGlRootView()Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mGlRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 124
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mGlRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    const/4 v1, 0x0

    .line 158
    :goto_0
    return v1

    .line 128
    :cond_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getPreviewTexDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->RGBA8888_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getPreviewTexDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v1, v2, :cond_3

    .line 158
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 132
    :cond_3
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    check-cast v1, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 135
    .local v0, "size":Landroid/hardware/Camera$Size;
    const-string v1, "PreviewCallbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVariable size.height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size.width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v1

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-eq v1, v2, :cond_5

    .line 137
    :cond_4
    const-string v1, "PreviewCallbackManager"

    const-string v2, "initVariable, remove all listener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v1, :cond_5

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->removeAllListener()V

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewListernerSize()I

    move-result v1

    if-gtz v1, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    .line 147
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->setBufferSize(III)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBytesPerPixel:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->setBufferSize(III)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v1, v2, :cond_7

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->initPreviewTextureYUV420sp()V

    .line 156
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    goto/16 :goto_1

    .line 152
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->RGBA8888_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v1, v2, :cond_6

    .line 153
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->initPreviewTextureRGBA8888()V

    goto :goto_2
.end method

.method private jumpPreviewFrame([B)V
    .locals 3
    .param p1, "buf"    # [B

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 438
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    .line 439
    const-string v0, "PreviewCallbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpPreviewFrame: input fps larger than fps set in restrictPreviewCallbackFPS() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method private prepairPreviewBuffer()V
    .locals 5

    .prologue
    .line 419
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->fetchBufferForFill()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-result-object v0

    .line 420
    .local v0, "buf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    if-eqz v0, :cond_0

    .line 421
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getLastBufferForDeal()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-result-object v1

    .line 425
    .local v1, "buf2":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    if-nez v1, :cond_1

    .line 426
    const-string v2, "PreviewCallbackManager"

    const-string v3, "BufferedCameraPreviewCallback logic error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->addCallbackBuffer([B)V

    .line 430
    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    .line 431
    const-string v2, "PreviewCallbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepairPreviewBuffer: use deal buf to fill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mJumpFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restrictPreviewCallbackFPS(I)V
    .locals 2
    .param p1, "nMaxFPS"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbMaxFPS:I

    .line 361
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbMaxFPS:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbMinInterval:I

    .line 362
    return-void
.end method

.method private setPreviewCallbackParameter(IF)V
    .locals 0
    .param p1, "imageFormat"    # I
    .param p2, "bytesPerPixel"    # F

    .prologue
    .line 172
    iput p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    .line 173
    iput p2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBytesPerPixel:F

    .line 174
    return-void
.end method


# virtual methods
.method public addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 186
    const-string v0, "PreviewCallbackManager"

    const-string v1, "kbg374, addPreviewCallbackListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez p1, :cond_0

    .line 188
    const-string v0, "PreviewCallbackManager"

    const-string v1, "kbg374, addPreviewCallbackListener, cb == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getImageFormat()I

    move-result v0

    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getBytesPerPixel()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->setPreviewCallbackParameter(IF)V

    .line 192
    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->initVariable(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "start failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    if-eqz v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-nez v0, :cond_3

    .line 198
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mGlRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;-><init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    .line 200
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->start()V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->restore()V

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBufferedCamPreviewCb:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 210
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->prepairPreviewBuffer()V

    .line 214
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->addReadOnlyListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    goto :goto_0

    .line 212
    :cond_6
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "start mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->addListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    goto :goto_0
.end method

.method public changeBufferSize(Landroid/hardware/Camera$Size;)V
    .locals 4
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewListernerSize()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v0

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v0

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    if-nez v0, :cond_3

    .line 532
    :cond_2
    const-string v0, "PreviewCallbackManager"

    const-string v1, "kbg374, changePreviewSize, size ==  0 or buffer is not need to change or mImageFormat == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void

    .line 535
    :cond_3
    const-string v0, "PreviewCallbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, buffer width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", buffer height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", image format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "PreviewCallbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, preview width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", preivew height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    iget v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mImageFormat:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->setBufferSize(III)V

    .line 541
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBytesPerPixel:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->setBufferSize(III)V

    .line 542
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->restore()V

    goto/16 :goto_0
.end method

.method public getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    return-object v0
.end method

.method public getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    return-object v0
.end method

.method public init(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 2
    .param p1, "pm"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 98
    const-string v0, "PreviewCallbackManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBufferedCamPreviewCb:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;-><init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBufferedCamPreviewCb:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

    .line 109
    :cond_2
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->restrictPreviewCallbackFPS(I)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    .line 113
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->restore()V

    .line 116
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "release in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 341
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->exit()V

    .line 343
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->freeAllCallbackDataBuf()V

    .line 348
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->freeAllTexDataBuffer()V

    .line 353
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    .line 356
    :cond_2
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "release out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 237
    const-string v0, "PreviewCallbackManager"

    const-string v1, "kbg374, removePreviewCallbackListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-nez p1, :cond_0

    .line 239
    const-string v0, "PreviewCallbackManager"

    const-string v1, "kbg374, removePreviewCallbackListener, cb == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->removeReadOnlyListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewListernerSize()I

    move-result v0

    if-gtz v0, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 252
    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->RGBA8888_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v0, v1, :cond_2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    .line 262
    :cond_2
    :goto_1
    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->removeListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    goto :goto_0

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewYUVListernerSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    goto :goto_1

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewReadOnlyListernerSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    goto :goto_1
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "restore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->getPreviewListernerSize()I

    move-result v0

    if-gtz v0, :cond_0

    .line 268
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "restore, size ==  0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v0, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->initPreviewTextureYUV420sp()V

    .line 277
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->restore()V

    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mBufferedCamPreviewCb:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager$BufferedCameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 281
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->prepairPreviewBuffer()V

    .line 285
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    goto :goto_0

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->RGBA8888_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCamerScreenNail:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->initPreviewTextureRGBA8888()V

    goto :goto_1

    .line 283
    :cond_3
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "start mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 287
    :cond_4
    const-string v0, "PreviewCallbackManager"

    const-string v1, "mPreviewCbDataDealThread == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setISPFaceData([Landroid/hardware/Camera$Face;)V
    .locals 7
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    const/4 v0, 0x5

    .line 443
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->isSupportArcSoftFT()Z

    move-result v2

    if-nez v2, :cond_4

    .line 446
    array-length v2, p1

    if-gt v2, v0, :cond_0

    array-length v0, p1

    .line 448
    .local v0, "faceNumber":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 449
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    .line 452
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x7d0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 453
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x7d0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 454
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x7d0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 455
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x7d0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 456
    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceOrientation:[I

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, p1, v1

    iget-object v4, v4, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    aget-object v5, p1, v1

    iget-object v5, v5, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    aget-object v6, p1, v1

    iget-object v6, v6, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getFaceOrientation(IIII)I

    move-result v3

    aput v3, v2, v1

    .line 448
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    iput v0, v2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    .line 462
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceOrientation:[I

    iput-object v3, v2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceOriention:[I

    .line 463
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mIspFaceRects:[Landroid/graphics/Rect;

    iput-object v3, v2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceRect:[Landroid/graphics/Rect;

    .line 465
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    iget-object v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->setISPFaceData(Lcom/lenovo/scg/camera/facetracking/MFaceResult;)V

    .line 467
    .end local v0    # "faceNumber":I
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "stop in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    if-nez v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataDealThread:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->pause()V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->resetBuffer()V

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mPreviewTexDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->resetBuffer()V

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mapBufferObject:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 322
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->mStoped:Z

    .line 323
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "valid stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_0
    const-string v0, "PreviewCallbackManager"

    const-string/jumbo v1, "stop out"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 325
    :cond_5
    const-string v0, "PreviewCallbackManager"

    const-string v1, "invalid stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
