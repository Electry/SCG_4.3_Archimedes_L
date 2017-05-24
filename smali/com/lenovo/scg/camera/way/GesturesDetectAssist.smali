.class public Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
.super Ljava/lang/Object;
.source "GesturesDetectAssist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x2

.field private static final MSG_PROCESS:I = 0x4

.field private static final MSG_SAVE_DONE:I = 0x1

.field private static final MSG_UNINIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GesturesDetectAssist"

.field private static mAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

.field private static mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;


# instance fields
.field private final CAPTURE_SPACE_TIME:I

.field private allowProcessing:Z

.field private final libName:Ljava/lang/String;

.field private mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

.field private mContext:Landroid/content/Context;

.field private mEngInited:Z

.field private mHandler:Landroid/os/Handler;

.field private mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

.field private mOpenedWay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Lcom/lenovo/scg/camera/way/CaptureWay;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginId:I

.field private mPreviewCBRegisted:Z

.field private mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

.field private mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

.field private mSync:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    :try_start_0
    const-string v1, "GesturesDetectAssist"

    const-string v2, "System.loadLibrary(ati_framework_v2.0.1);"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v1, "ati_framework_v2.0.1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lcom/lenovo/scg/camera/way/DetectParams;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/way/DetectParams;-><init>()V

    sput-object v1, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    .line 80
    new-instance v1, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;-><init>()V

    sput-object v1, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    return-void

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "GesturesDetectAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System.loadLibrary(ati_framework_v2.0.1); ERROR :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "scg_expression_gesture_jni"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->libName:Ljava/lang/String;

    .line 49
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->CAPTURE_SPACE_TIME:I

    .line 50
    const/16 v0, 0xc

    iput v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    .line 51
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 52
    iput v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    .line 53
    iput v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    .line 54
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    .line 59
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSync:[B

    .line 60
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mOpenedWay:Ljava/util/HashMap;

    .line 61
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    .line 62
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    .line 63
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mContext:Landroid/content/Context;

    .line 64
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 65
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 66
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    .line 82
    new-instance v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$1;-><init>(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    .line 363
    new-instance v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$2;-><init>(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;)Lcom/lenovo/scg/camera/agender/AgenderParams;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/way/GesturesDetectAssist;[BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "x3"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    return-object v0
.end method

.method private process([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;)V
    .locals 9
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;

    .prologue
    .line 246
    if-nez p2, :cond_0

    .line 247
    const-string v0, "GesturesDetectAssist"

    const-string v1, "faceData == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-nez v0, :cond_1

    .line 252
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "process(): !mPreviewCBRegisted && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-nez v0, :cond_2

    .line 257
    const-string v0, "GesturesDetectAssist"

    const-string v1, "!mEngInited && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture()Z

    move-result v7

    .line 263
    .local v7, "isAllowWayCapture":Z
    iget-object v8, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSync:[B

    monitor-enter v8

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;->onSmile(I[I)V

    .line 277
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    if-eqz v0, :cond_a

    iget v0, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    if-lez v0, :cond_a

    .line 280
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget v1, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceNumber:I

    iput v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceNum:I

    .line 281
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v1, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceOriention:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceOritention:I

    .line 282
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v1, p2, Lcom/lenovo/scg/camera/facetracking/MFaceResult;->faceRect:[Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceRect:[Landroid/graphics/Rect;

    .line 283
    const-string v0, "GesturesDetectAssist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGesturesDetectPara.mFaceOritention = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget v2, v2, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceOritention:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mSmileLevelArray:[I

    if-nez v0, :cond_4

    .line 285
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mSmileLevelArray:[I

    .line 287
    :cond_4
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mVSignPosition:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    .line 288
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mVSignPosition:Landroid/graphics/Rect;

    .line 290
    :cond_5
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mWavePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    .line 291
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mWavePosition:Landroid/graphics/Rect;

    .line 294
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    const/16 v5, 0x802

    sget-object v6, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->processRawData(II[BIIILjava/lang/Object;)I

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    if-eqz v0, :cond_7

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    sget-object v1, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget v1, v1, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceNum:I

    sget-object v2, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/DetectParams;->mSmileLevelArray:[I

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;->onSmile(I[I)V

    .line 304
    :cond_7
    if-eqz v7, :cond_b

    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbVSignDetected:Z

    if-eqz v0, :cond_b

    .line 306
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "\u68c0\u6d4b\u5230V\u5b57\u624b"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbVSignDetected:Z

    .line 308
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->takePictureByWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V

    .line 326
    :cond_8
    :goto_1
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessVSign:Z

    if-eqz v0, :cond_9

    .line 327
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->setPreviewSize(II)V

    .line 328
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/DetectParams;->mVSignPosition:Landroid/graphics/Rect;

    sget-object v3, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget v3, v3, Lcom/lenovo/scg/camera/way/DetectParams;->mFaceOritention:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->vSignAt(Landroid/content/Context;Landroid/graphics/Rect;I)V

    .line 330
    :cond_9
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessWaveShot:Z

    if-eqz v0, :cond_a

    .line 331
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->setPreviewSize(II)V

    .line 332
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/DetectParams;->mWavePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->waveAt(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 353
    :cond_a
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 309
    :cond_b
    if-eqz v7, :cond_c

    :try_start_1
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbWaveShotDetected:Z

    if-eqz v0, :cond_c

    .line 311
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u6325\u624b"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbWaveShotDetected:Z

    .line 313
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->takePictureByWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V

    goto :goto_1

    .line 314
    :cond_c
    if-eqz v7, :cond_d

    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbSmileDetected:Z

    if-eqz v0, :cond_d

    .line 316
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u7b11\u8138"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbSmileDetected:Z

    .line 318
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->takePictureByWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V

    goto :goto_1

    .line 319
    :cond_d
    if-eqz v7, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbBlinkDetected:Z

    if-eqz v0, :cond_8

    .line 321
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "\u68c0\u6d4b\u5230\u7728\u773c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbBlinkDetected:Z

    .line 323
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->takePictureByWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private takePictureByWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V
    .locals 7
    .param p1, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 460
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mOpenedWay:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 461
    const-string v3, "GesturesDetectAssist"

    const-string/jumbo v4, "tackePictureByWay: ERROR mOpenedWay == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 465
    const-string v3, "GesturesDetectAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tackePictureByWay: ERROR mOpenedWay not containsKey "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 469
    .local v0, "obj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-nez v0, :cond_3

    .line 470
    const-string v3, "GesturesDetectAssist"

    const-string/jumbo v4, "tackePictureByWay: obj == null && return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    const-string/jumbo v3, "takePictureByWay"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    .line 482
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture()Z

    move-result v3

    if-nez v3, :cond_4

    .line 483
    const-string v3, "GesturesDetectAssist"

    const-string/jumbo v4, "takePictureByWay: !isAllowWayCapture && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v3

    mul-int/lit16 v1, v3, 0x3e8

    .line 488
    .local v1, "shutterDelay":I
    if-eqz v1, :cond_5

    .line 489
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v5, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZI)V

    .line 491
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v3

    add-int/lit8 v4, v1, -0x64

    invoke-virtual {v3, v6, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZI)V

    .line 494
    :cond_5
    add-int/lit16 v2, v1, 0x3e8

    .line 495
    .local v2, "timeProcessDelay":I
    const-string v3, "GesturesDetectAssist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePictureByWay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", save done time @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    int-to-long v4, v2

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 499
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->clickShutterButton()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mGesturesDetectPara:Lcom/lenovo/scg/camera/way/DetectParams;

    return-object v0
.end method

.method public initEng()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 180
    const-string v2, "GesturesDetectAssist"

    const-string v3, "ATI_Plugin.loadPlugin(miPluginId, scg_expression_gesture_jni );"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "GesturesDetectAssist"

    const-string v3, "initEng() mEngInited && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-nez v2, :cond_1

    .line 186
    const-string v2, "GesturesDetectAssist"

    const-string v3, "initEng() !mPreviewCBRegisted && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    if-nez v2, :cond_3

    .line 190
    :cond_2
    const-string v2, "GesturesDetectAssist"

    const-string v3, "initEng() mPreviewSize == 0 && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_3
    const-string v1, "com.lenovo.scg"

    .line 196
    .local v1, "sPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppPackageName(Ljava/lang/String;)V

    .line 197
    const-string v2, "GesturesDetectAssist"

    invoke-static {v2, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "ret":I
    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    const-string/jumbo v3, "scg_expression_gesture_jni"

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayTools;->loadPlugin(ILjava/lang/String;)I

    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    const-string v2, "GesturesDetectAssist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugin vsignplugin load failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_4
    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    invoke-static {v2, v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->enablePlugin(II)V

    .line 207
    const-string v2, "GesturesDetectAssist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initEng : mPreviewWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mPreviewHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    iget v3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->initPlugin(IIIILjava/lang/Object;)I

    move-result v0

    .line 209
    if-eqz v0, :cond_5

    .line 210
    const-string v2, "GesturesDetectAssist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugin init failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    .line 216
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    .line 218
    const-string v2, "initEng end"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_5
    const-string v2, "GesturesDetectAssist"

    const-string/jumbo v3, "plugin init succeed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initEng_atHandlerThread()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public isPreviewSizeChanged(II)Z
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 439
    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    if-eq p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process_atHandlerThread([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    .locals 4
    .param p1, "dataIn"    # [B
    .param p2, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .param p3, "agender"    # Lcom/lenovo/scg/camera/agender/AgenderParams;
    .param p4, "previewSizeWidth"    # I
    .param p5, "previewSizeHeight"    # I

    .prologue
    .line 143
    const-string v1, "GesturesDetectAssist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process_atHandlerThread(): previewSizeWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previewSizeHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-nez v1, :cond_1

    .line 145
    const-string v1, "GesturesDetectAssist"

    const-string/jumbo v2, "process_atHandlerThread(): !mPreviewCBRegisted && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->isPreviewSizeChanged(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "GesturesDetectAssist"

    const-string/jumbo v2, "process_atHandlerThread(): isPreviewSizeChanged && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, p4, p5}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setPreviewSize(II)V

    .line 152
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->initEng_atHandlerThread()V

    goto :goto_0

    .line 157
    :cond_2
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-nez v1, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->initEng_atHandlerThread()V

    .line 161
    :cond_3
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    if-nez v1, :cond_4

    .line 162
    const-string v1, "GesturesDetectAssist"

    const-string/jumbo v2, "process_atHandlerThread(): !allowProcessing && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_4
    iput-object p2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mMFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 166
    iput-object p3, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mAgenderParams:Lcom/lenovo/scg/camera/agender/AgenderParams;

    .line 167
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public registPreviewCallback()V
    .locals 2

    .prologue
    .line 414
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "registPreviewCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-nez v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-nez v0, :cond_0

    .line 417
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "registPreviewCallback()---active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method

.method public setOpenedWayList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Lcom/lenovo/scg/camera/way/CaptureWay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "ways":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Lcom/lenovo/scg/camera/way/CaptureWay;>;"
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mOpenedWay:Ljava/util/HashMap;

    .line 457
    return-void
.end method

.method public setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 358
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 443
    const-string v0, "GesturesDetectAssist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize AS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    if-eq p2, v0, :cond_1

    .line 445
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewWidth:I

    .line 446
    iput p2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewHeight:I

    .line 447
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->uninitEng_atHandlerThread()V

    .line 450
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->initEng_atHandlerThread()V

    .line 453
    :cond_1
    return-void
.end method

.method public setSmileLevelChangedListener(Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mSmileLevelChangedListener:Lcom/lenovo/scg/camera/way/GesturesDetectAssist$SmileLevelChangedListener;

    .line 122
    return-void
.end method

.method public uninitEng()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "uninitEng"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    if-nez v0, :cond_0

    .line 230
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "uninitEng() !mEngInited && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->unregistPreviewCallback()V

    .line 236
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    .line 237
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mEngInited:Z

    .line 239
    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unInitPlugin(I)V

    .line 240
    iget v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unLoadPlugin(I)V

    .line 242
    const-string/jumbo v0, "uninitEng end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uninitEng_atHandlerThread()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "mUNINIT"

    invoke-static {v0}, Lcom/lenovo/scg/camera/focus/FocusDebugTool;->logStack(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->allowProcessing:Z

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    return-void
.end method

.method public unregistPreviewCallback()V
    .locals 2

    .prologue
    .line 429
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "unregistPreviewCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCBRegisted:Z

    .line 433
    const-string v0, "GesturesDetectAssist"

    const-string/jumbo v1, "unregistPreviewCallback()---active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->mPreviewCallback:Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    goto :goto_0
.end method
