.class public Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;
.super Ljava/lang/Object;
.source "FaceTrackingManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static mFaceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager; = null

.field private static final mLibName:Ljava/lang/String; = "scg_face_tracking"


# instance fields
.field private mFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

.field private mIsInited:Z

.field private miPluginId:I

.field private miPreviewHeight:I

.field private miPreviewWidth:I

.field private t:J

.field private tcount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "FaceTrackingManager"

    sput-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 116
    const-string v0, "ati_framework_v2.0.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    const-string v1, "load ati_framework_v2.0.1"

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V

    .line 120
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    .line 21
    const/16 v0, 0x780

    iput v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewWidth:I

    .line 23
    const/16 v0, 0x438

    iput v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewHeight:I

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/facetracking/MFaceResult;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    .line 86
    iput-wide v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->t:J

    .line 87
    iput-wide v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->tcount:J

    .line 31
    const-string v0, "EnsureTid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceTrackingManager Create tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x1

    .line 49
    iput p1, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewWidth:I

    .line 50
    iput p2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewHeight:I

    .line 52
    const-string v1, "com.lenovo.scg"

    .line 53
    .local v1, "sPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppPackageName(Ljava/lang/String;)V

    .line 54
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "ret":I
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin FtPlugin load start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    const-string/jumbo v3, "scg_face_tracking"

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayTools;->loadPlugin(ILjava/lang/String;)I

    move-result v0

    .line 59
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin FtPlugin load end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v0, :cond_0

    .line 61
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugin FtPlugin load failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    invoke-static {v2, v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->enablePlugin(II)V

    .line 65
    iget v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    iget v3, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewHeight:I

    const/16 v5, 0x802

    iget-object v6, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->initPlugin(IIIILjava/lang/Object;)I

    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugin init failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    .line 73
    return-void

    .line 70
    :cond_1
    sget-object v2, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin init succeed "

    invoke-static {v2, v3}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    return v0
.end method

.method public isPreviewSizeChanged(II)Z
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 123
    iget v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewHeight:I

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processFT([B)Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    .locals 12
    .param p1, "dataIn"    # [B

    .prologue
    .line 91
    const-string v0, "EnsureTid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processFT tid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v7, 0x0

    .line 94
    .local v7, "ret":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 95
    .local v8, "t1":J
    iget v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    const/4 v1, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPreviewHeight:I

    const/16 v5, 0x802

    iget-object v6, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->processRawData(II[BIIILjava/lang/Object;)I

    move-result v7

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 98
    .local v10, "t2":J
    iget-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->t:J

    sub-long v2, v10, v8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->t:J

    .line 99
    iget-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->tcount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->tcount:J

    .line 100
    iget-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->tcount:J

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    const-string v0, "AStime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processFT time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->t:J

    const-wide/16 v4, 0x1e

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->t:J

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->tcount:J

    .line 107
    :cond_0
    if-eqz v7, :cond_1

    .line 108
    sget-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRawData() failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mFaceResult:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    goto :goto_0
.end method

.method public uninit()V
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uninit() : mIsInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unInitPlugin(I)V

    .line 81
    iget v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->miPluginId:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unLoadPlugin(I)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->mIsInited:Z

    .line 84
    :cond_0
    return-void
.end method
