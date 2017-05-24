.class public Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;
.super Ljava/lang/Object;
.source "FaceBeautyPreviewBufferedDataCallback.java"

# interfaces
.implements Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceBeautyPreviewBufferedDataCallback"

.field private static mSkinBrightArray:[I

.field private static mSkinSoftenArray:[I


# instance fields
.field mContext:Landroid/content/Context;

.field private mFaceBeautyJNI:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;

.field private t:J

.field private tcount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 25
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinSoftenArray:[I

    .line 27
    new-array v0, v1, [I

    sput-object v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinBrightArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .prologue
    const-wide/16 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->t:J

    .line 41
    iput-wide v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->tcount:J

    .line 30
    const-string v0, "FaceBeautyPreviewBufferedDataCallback"

    const-string v1, "FaceBeautyPreviewBufferedDataCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object p1, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mFaceBeautyJNI:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;

    .line 33
    return-void
.end method


# virtual methods
.method public getBytesPerPixel()F
    .locals 1

    .prologue
    .line 112
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x11

    return v0
.end method

.method public getTextureDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public isSupportArcSoftFD()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportArcSoftOT()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 22
    .param p1, "dataBufIn"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p2, "dataBufOut"    # Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .param p3, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p4, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p5, "previewWidth"    # I
    .param p6, "previewHeight"    # I

    .prologue
    .line 46
    const-string v3, "FaceBeautyPreviewBufferedDataCallback"

    const-string/jumbo v4, "onPreviewBufferedFrame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v2, 0x0

    .line 54
    .local v2, "frontview":Lcom/lenovo/scg/camera/front/FrontView;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->getmFrontView()Lcom/lenovo/scg/camera/front/FrontView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    :goto_1
    if-eqz v2, :cond_5

    if-eqz p4, :cond_5

    .line 60
    move-object/from16 v0, p4

    iget v3, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    invoke-virtual/range {v2 .. v7}, Lcom/lenovo/scg/camera/front/FrontView;->setRect(I[Landroid/graphics/Rect;[I[I[I)V

    .line 61
    sget-boolean v3, Lcom/lenovo/scg/camera/front/FrontView;->isDebug:Z

    if-eqz v3, :cond_2

    .line 62
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_2
    move-object/from16 v0, p4

    iget v3, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 63
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinSoftenArray:[I

    sget v4, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    aput v4, v3, v16

    .line 64
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinBrightArray:[I

    sget v4, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    aput v4, v3, v16

    .line 62
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 55
    .end local v16    # "index":I
    :catch_0
    move-exception v15

    .line 56
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 67
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_2
    sget v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 68
    const/16 v16, 0x0

    .restart local v16    # "index":I
    :goto_3
    move-object/from16 v0, p4

    iget v3, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 69
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinSoftenArray:[I

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    aget v4, v4, v16

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    aget v5, v5, v16

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperSoften(II)I

    move-result v4

    aput v4, v3, v16

    .line 70
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinBrightArray:[I

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mGenderResultArray:[I

    aget v4, v4, v16

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mAgeResultArray:[I

    aget v5, v5, v16

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->findProperBright(II)I

    move-result v4

    aput v4, v3, v16

    .line 68
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 72
    .end local v16    # "index":I
    :cond_3
    sget v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mBeautyMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 73
    const/16 v16, 0x0

    .restart local v16    # "index":I
    :goto_4
    move-object/from16 v0, p4

    iget v3, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 74
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinSoftenArray:[I

    sget v4, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinSoften:I

    aput v4, v3, v16

    .line 75
    sget-object v3, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinBrightArray:[I

    sget v4, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyUtil;->mSkinBright:I

    aput v4, v3, v16

    .line 73
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 80
    .end local v16    # "index":I
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 81
    .local v18, "t1":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mFaceBeautyJNI:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->getHandler()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;->getHandler()J

    move-result-wide v6

    move-object/from16 v0, p4

    iget v10, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceNumber:I

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceRect:[Landroid/graphics/Rect;

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/lenovo/scg/camera/agender/AgenderParams;->mFaceOriention:[I

    sget-object v13, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinSoftenArray:[I

    sget-object v14, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mSkinBrightArray:[I

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v14}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->reset(JJIII[Landroid/graphics/Rect;[I[I[I)I

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 84
    .local v20, "t2":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->t:J

    sub-long v6, v20, v18

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->t:J

    .line 85
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->tcount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->tcount:J

    .line 86
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->tcount:J

    const-wide/16 v6, 0x1e

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 87
    const-string v3, "AStime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFaceBeautyJNI.reset time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->t:J

    const-wide/16 v8, 0x1e

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->t:J

    .line 89
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->tcount:J

    goto/16 :goto_0

    .line 92
    .end local v18    # "t1":J
    .end local v20    # "t2":J
    :cond_5
    const-string v3, "FaceBeautyPreviewBufferedDataCallback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frontview:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " agender:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 0
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p4, "previewWidth"    # I
    .param p5, "previewHeight"    # I

    .prologue
    .line 98
    return-void
.end method

.method public releaseFaceBeautyPreviewBufferedDataCallback()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyPreviewBufferedDataCallback;->mFaceBeautyJNI:Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/facebeauty/FaceBeautyJNI;->releaseFaceBeautyJNI()V

    .line 37
    return-void
.end method
