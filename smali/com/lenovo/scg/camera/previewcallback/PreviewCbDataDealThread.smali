.class public Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;
.super Ljava/lang/Thread;
.source "PreviewCbDataDealThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewCbDataDealThread"


# instance fields
.field agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

.field faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

.field private mExit:Z

.field private mFrameCostTime:J

.field private mFrameCount:J

.field private mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

.field private mLastConvertBuffer:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

.field private mLastFpsLogTime:J

.field private mLastRenderTime:J

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMutexPause:[I

.field private mPause:Z

.field private mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

.field private mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

.field private mReadOnlyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportArcSoftFT:Z

.field private mSupportArcSoftOT:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;Lcom/lenovo/scg/gallery3d/ui/GLRootView;)V
    .locals 3
    .param p1, "cbBufMngr"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;
    .param p2, "texBufMngr"    # Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    .param p3, "glRootView"    # Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    .line 44
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    .line 47
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftOT:Z

    .line 321
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 322
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 60
    const-string v0, "PreviewCbDataDealThread"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->setName(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    .line 63
    iput-object p2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    .line 64
    iput-object p3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 65
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPause:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    .line 69
    return-void
.end method

.method private RenderIfNeed()V
    .locals 6

    .prologue
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastRenderTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 210
    const-string v2, "PreviewCbDataDealThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RenderIfNeed ---> interval:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastRenderTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 212
    iput-wide v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastRenderTime:J

    .line 214
    :cond_0
    return-void
.end method

.method private checkSupportArcSoftFT()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 116
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    .line 117
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftOT:Z

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 121
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->isSupportArcSoftFD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->isSupportArcSoftOT()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftOT:Z

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 131
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->isSupportArcSoftFD()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    .line 140
    :cond_3
    :goto_2
    return-void

    .line 130
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_5
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    if-nez v2, :cond_3

    .line 138
    const-string v2, "PreviewCbDataDealThread"

    const-string v3, "checkSupportArcSoftFT() uninit Engeen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private notifyListeners(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V
    .locals 38
    .param p1, "dataIn"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    .param p2, "ptdBuf"    # Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .prologue
    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 328
    .local v28, "timer0":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v6

    .line 329
    .local v6, "previewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v7

    .line 330
    .local v7, "previewHeight":I
    const/4 v4, 0x0

    .line 331
    .local v4, "faceResult":Lcom/lenovo/scg/camera/facetracking/MFaceResult;
    const/4 v5, 0x0

    .line 332
    .local v5, "agenderParams":Lcom/lenovo/scg/camera/agender/AgenderParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    if-eqz v2, :cond_5

    .line 333
    const-string v2, "EnsureTid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyListeners tid = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->getInstance()Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->isPreviewSizeChanged(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "PreviewCbDataDealThread"

    const-string/jumbo v3, "notifyListeners() uninit ENgeen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->uninit()V

    .line 341
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    const-string v2, "PreviewCbDataDealThread"

    const-string/jumbo v3, "notifyListeners() init ENgeen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->init(II)V

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->isInited()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->processFT([B)Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    move-result-object v4

    .line 350
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/agender/AgenderManager;->getInstanse()Lcom/lenovo/scg/camera/agender/AgenderManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 351
    const-string v2, "PreviewCbDataDealThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "agendermanager.isInited() = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/agender/AgenderManager;->isInited()Z

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/camera/agender/AgenderManager;->isPreviewSizeChanged(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/agender/AgenderManager;->unInit()V

    .line 355
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/agender/AgenderManager;->isInited()Z

    move-result v2

    if-nez v2, :cond_4

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v2, v6, v7}, Lcom/lenovo/scg/camera/agender/AgenderManager;->init(II)V

    .line 358
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 359
    .local v26, "time01":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/agender/AgenderManager;->processAgender([BLcom/lenovo/scg/camera/facetracking/MFaceResult;)Lcom/lenovo/scg/camera/agender/AgenderParams;

    move-result-object v5

    .line 361
    const-string v2, "PreviewCbDataDealThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "agendermanager.processAgender cost time = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v26

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v26    # "time01":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 395
    .local v30, "timer1":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 396
    const/16 v23, 0x0

    .local v23, "i":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .local v24, "n":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;->GetBuffer()[B

    move-result-object v3

    invoke-interface/range {v2 .. v7}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame([BLcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 382
    .end local v23    # "i":I
    .end local v24    # "n":I
    .end local v30    # "timer1":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    goto :goto_0

    .line 399
    .restart local v23    # "i":I
    .restart local v24    # "n":I
    .restart local v30    # "timer1":J
    :cond_6
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 403
    .local v32, "timer2":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getFirstBufferToPass()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v21

    .line 404
    .local v21, "bufferPass1":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getSecondBufferToPass()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v22

    .line 406
    .local v22, "bufferPass2":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    new-instance v9, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;-><init>(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V

    .line 407
    .local v9, "passBuffer1":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    new-instance v13, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 408
    .local v13, "passBuffer2":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    new-instance v25, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 409
    .local v25, "passBuffer3":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    new-instance v10, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 411
    .local v10, "passBuffer4":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 413
    .local v34, "timer3":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    monitor-enter v3

    .line 414
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move v14, v7

    invoke-interface/range {v8 .. v14}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    .line 437
    .end local v13    # "passBuffer2":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    :cond_7
    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 440
    .local v36, "timer4":J
    const-string v2, "PreviewCbDataDealThread"

    const-string/jumbo v3, "timer_interval, FT and Agender:%d, ReadOnly Listeners(%d):%d, pass buffer:%d, Listeners(%d):%d"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    sub-long v14, v30, v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    sub-long v14, v32, v30

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x3

    sub-long v14, v34, v32

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x5

    sub-long v14, v36, v34

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v11

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 399
    .end local v9    # "passBuffer1":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .end local v10    # "passBuffer4":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .end local v21    # "bufferPass1":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .end local v22    # "bufferPass2":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .end local v24    # "n":I
    .end local v25    # "passBuffer3":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .end local v32    # "timer2":J
    .end local v34    # "timer3":J
    .end local v36    # "timer4":J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 416
    .restart local v9    # "passBuffer1":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .restart local v10    # "passBuffer4":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .restart local v13    # "passBuffer2":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .restart local v21    # "bufferPass1":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .restart local v22    # "bufferPass2":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    .restart local v24    # "n":I
    .restart local v25    # "passBuffer3":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    .restart local v32    # "timer2":J
    .restart local v34    # "timer3":J
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object v12, v9

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-interface/range {v11 .. v17}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object v14, v10

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v12 .. v18}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    goto/16 :goto_2

    .line 437
    .end local v13    # "passBuffer2":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 419
    .restart local v13    # "passBuffer2":Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v8, 0x2

    if-le v2, v8, :cond_7

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object v12, v9

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-interface/range {v11 .. v17}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    .line 422
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 423
    rem-int/lit8 v2, v23, 0x2

    if-nez v2, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object/from16 v12, v25

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-interface/range {v11 .. v17}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    .line 422
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 426
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object/from16 v14, v25

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v12 .. v18}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    goto :goto_4

    .line 429
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object/from16 v15, v25

    move-object/from16 v16, v10

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-interface/range {v14 .. v20}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V

    goto/16 :goto_2

    .line 433
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    move-object v14, v10

    move-object v15, v4

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v12 .. v18}, Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;->onPreviewBufferedFrame(Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/previewcallback/PreviewPassDataBuffer;Lcom/lenovo/scg/camera/facetracking/MFaceResult;Lcom/lenovo/scg/camera/agender/AgenderParams;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2
.end method

.method private onExit()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "PreviewCbDataDealThread"

    const-string/jumbo v1, "onExit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method private onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const-string v0, "PreviewCbDataDealThread"

    const-string/jumbo v1, "onPause( )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->uninit()V

    .line 299
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->faceTrackingManager:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/agender/AgenderManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/agender/AgenderManager;->unInit()V

    .line 308
    iput-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->agendermanager:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 312
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->checkSupportArcSoftFT()V

    .line 90
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addReadOnlyListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->checkSupportArcSoftFT()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public exit()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->restore()V

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mExit:Z

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public forceRender()V
    .locals 4

    .prologue
    .line 147
    const-string v1, "PreviewCbDataDealThread"

    const-string v2, "forceRender"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 150
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPreviewListernerSize()I
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreviewReadOnlyListernerSize()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPreviewYUVListernerSize()I
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public isSupportArcSoftFT()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mSupportArcSoftFT:Z

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    monitor-enter v2

    .line 171
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 178
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAllListener()V
    .locals 3

    .prologue
    .line 100
    const-string v0, "PreviewCbDataDealThread"

    const-string/jumbo v1, "removeAllListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 106
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    const-string v0, "PreviewCbDataDealThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAllListener, read only size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->checkSupportArcSoftFT()V

    .line 109
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 106
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public removeListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->checkSupportArcSoftFT()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeReadOnlyListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mReadOnlyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->checkSupportArcSoftFT()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    monitor-enter v1

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPause:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPause:Z

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 186
    :cond_0
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 218
    const-string v5, "PreviewCbDataDealThread"

    const-string/jumbo v10, "run()"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mExit:Z

    if-eqz v5, :cond_0

    .line 222
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    .line 223
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    .line 224
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 225
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastConvertBuffer:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    .line 286
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->onExit()V

    .line 287
    const-string v5, "PreviewCbDataDealThread"

    const-string v10, "PreviewCbDataDealThread end"

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 229
    :cond_0
    iget-object v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    monitor-enter v10

    .line 230
    :try_start_0
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPause:Z

    if-eqz v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 232
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mMutexPause:[I

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->RenderIfNeed()V

    .line 244
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->hasBufferToDeal()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->hasBufferToDealOut()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 245
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getBufferForDeal()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;

    move-result-object v1

    .line 246
    .local v1, "pcbBuf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->fetchBufferForDealOut()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v4

    .line 247
    .local v4, "ptdBuf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v1, :cond_4

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 250
    .local v6, "t1":J
    invoke-direct {p0, v1, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->notifyListeners(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 252
    .local v8, "t2":J
    iget-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    sub-long v12, v8, v6

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    .line 253
    iget-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCount:J

    .line 254
    iget-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastFpsLogTime:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x3e8

    cmp-long v5, v10, v12

    if-lez v5, :cond_3

    .line 255
    iget-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    .line 256
    const-wide/16 v10, 0x1

    iput-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    .line 258
    :cond_2
    const-wide/16 v10, 0x3e8

    iget-wide v12, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCount:J

    mul-long/2addr v10, v12

    iget-wide v12, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    div-long v2, v10, v12

    .line 259
    .local v2, "fps":J
    const-string v5, "FpsInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ProcessThread : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCostTime:J

    .line 261
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mFrameCount:J

    .line 262
    iput-wide v8, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mLastFpsLogTime:J

    .line 265
    .end local v2    # "fps":J
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v5, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->returnBufferForFill(Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;)V

    .line 266
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->addBufferForConvertToTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 269
    .end local v6    # "t1":J
    .end local v8    # "t2":J
    :cond_4
    const/4 v1, 0x0

    .line 276
    .end local v1    # "pcbBuf":Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBuffer;
    .end local v4    # "ptdBuf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->RenderIfNeed()V

    .line 280
    const-wide/16 v10, 0x1

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 239
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 271
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewCbDataBufMngr:Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->hasBufferToDeal()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mPreviewTexDataBufmngr:Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->hasBufferToDealOut()Z

    move-result v5

    if-nez v5, :cond_6

    .line 272
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->forceRender()V

    goto :goto_2

    .line 274
    :cond_6
    const-string v5, "PreviewCbDataDealThread"

    const-string v10, "No buffer to deal!!"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setISPFaceData(Lcom/lenovo/scg/camera/facetracking/MFaceResult;)V
    .locals 0
    .param p1, "faceData"    # Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataDealThread;->mISPFaceData:Lcom/lenovo/scg/camera/facetracking/MFaceResult;

    .line 113
    return-void
.end method
