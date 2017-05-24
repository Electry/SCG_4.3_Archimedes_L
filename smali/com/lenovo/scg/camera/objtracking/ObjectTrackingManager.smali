.class public Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
.super Ljava/lang/Object;
.source "ObjectTrackingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;
    }
.end annotation


# static fields
.field private static final HEIGHT:I

.field private static final OT_PLUGIN_ID:I = 0x5

.field private static final OT_PLUGIN_NAME:Ljava/lang/String; = "scg_object_tracking_jni"

.field private static TAG:Ljava/lang/String; = null

.field private static final THRESHOLD_RECT_DIMESION:I = 0xa

.field private static final THRESHOLD_RECT_HORIZONTAL:I = 0x12c

.field private static final THRESHOLD_RECT_VERTICAL:I = 0x96

.field private static final WIDTH:I

.field private static mObjectTrackingManager:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;


# instance fields
.field private mAtiNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

.field private mClickX:I

.field private mClickY:I

.field private mClickedFaceRect:Landroid/graphics/Rect;

.field private mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

.field private mDataForFD:[B

.field private mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

.field private mDetectedFaceRects:[Landroid/graphics/Rect;

.field mFDProcessThread:Ljava/lang/Thread;

.field private mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

.field private mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

.field private mIsFaceClicked:Z

.field private mIsInited:Z

.field private mLastRect:Landroid/graphics/Rect;

.field private mOTCallbackAdded:Z

.field private mOnTouch:Z

.field private mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSync:[B

.field private mnCbID:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "ObjectTrackingManager"

    sput-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    .line 37
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sput v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->WIDTH:I

    .line 38
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sput v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mObjectTrackingManager:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .line 601
    const-string v0, "ati_framework_v2.0.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 602
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v1, "load ati_framework_v2.0.1"

    invoke-static {v0, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    sget-object v0, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->mNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppCbNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)V

    .line 605
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mnCbID:I

    .line 46
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsInited:Z

    .line 49
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mSync:[B

    .line 59
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOnTouch:Z

    .line 61
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z

    .line 63
    iput v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickX:I

    .line 64
    iput v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickY:I

    .line 120
    new-instance v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;-><init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mAtiNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # [B

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # [B

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processFaceDetection([B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->rectConvertToScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->needReFocus(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->isClickOnFace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickedFaceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->setObjectTrackingPara(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .param p1, "x1"    # [B

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processOT([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->removeOTPreviewCallback()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;)Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    return-object v0
.end method

.method private addOTPreviewCallback()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    if-nez v2, :cond_0

    .line 532
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "mController == null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOTCallbackAdded:Z

    if-eqz v2, :cond_1

    .line 537
    invoke-direct {p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->removeOTPreviewCallback()V

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v0

    .line 542
    .local v0, "previewCallbackMgr":Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    new-instance v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    .line 544
    if-eqz v0, :cond_2

    .line 545
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 546
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOTCallbackAdded:Z

    .line 547
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "addPreviewCallbackListener done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_2
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previewCallbackMgr != null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    .locals 2

    .prologue
    .line 287
    const-class v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mObjectTrackingManager:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mObjectTrackingManager:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    .line 291
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mObjectTrackingManager:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isClickOnFace()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectedFaceRects:[Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectedFaceRects:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickX:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickY:I

    if-gez v5, :cond_2

    .line 98
    :cond_0
    sget-object v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v6, "isClickOnFace not accord to conditions"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    :goto_0
    return v4

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectedFaceRects:[Landroid/graphics/Rect;

    .local v0, "arr$":[Landroid/graphics/Rect;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 103
    .local v3, "rect":Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 102
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_4
    sget-object v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face found with rect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickX:I

    if-gt v5, v6, :cond_3

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickX:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_3

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickY:I

    if-gt v5, v6, :cond_3

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickY:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_3

    .line 110
    sget-object v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v5, "Clicking is on one face!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickedFaceRect:Landroid/graphics/Rect;

    .line 112
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private needReFocus(Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 248
    iget-object v8, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    if-nez v8, :cond_1

    .line 249
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    .line 250
    iget-object v7, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 283
    :cond_0
    :goto_0
    return v6

    .line 254
    :cond_1
    sget-object v8, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "needReFocus mLastRect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " current rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    mul-int v1, v8, v9

    .line 259
    .local v1, "currentDimension":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    mul-int v2, v8, v9

    .line 261
    .local v2, "lastDimension":I
    sub-int v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_2

    .line 262
    sget-object v6, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dimension changes last: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 267
    .local v3, "leftMove":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 268
    .local v4, "rightMove":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v9, 0x12c

    if-le v8, v9, :cond_3

    .line 269
    sget-object v6, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Horizontal changes last: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 271
    goto/16 :goto_0

    .line 274
    :cond_3
    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 275
    .local v5, "topMove":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 276
    .local v0, "bottomMove":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v9, 0x96

    if-le v8, v9, :cond_0

    .line 277
    sget-object v6, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vertical changes last: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 279
    goto/16 :goto_0
.end method

.method private processFaceDetection([B)V
    .locals 8
    .param p1, "dataIn"    # [B

    .prologue
    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 461
    .local v0, "start":J
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v3, "faceResult processFaceDetection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mSync:[B

    monitor-enter v3

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    iget-object v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    iget v6, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    invoke-virtual {v2, v4, p1, v5, v6}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->detectFaceToFaceInfo(Lcom/lenovo/scg/common/utils/FaceInfo;[BII)V

    .line 466
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faceResult costs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    sget-object v3, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faceResult contains faces "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/utils/FaceInfo;->getFaceRects()[Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectedFaceRects:[Landroid/graphics/Rect;

    .line 483
    return-void

    .line 468
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 479
    :cond_0
    const-string v2, " NULL! "

    goto :goto_0
.end method

.method private processOT([B)V
    .locals 12
    .param p1, "dataIn"    # [B

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 445
    .local v10, "start":J
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OT ATI_Plugin.processRawData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v7, 0x0

    .line 448
    .local v7, "ret":I
    const/4 v0, 0x5

    const/4 v1, 0x0

    iget v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    const/16 v5, 0x802

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->processRawData(II[BIIILjava/lang/Object;)I

    move-result v7

    .line 450
    if-eqz v7, :cond_0

    .line 451
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

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

    .line 454
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 455
    .local v8, "processOT":J
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process OT raw data done costs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v8, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method private rectConvertToScreen(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 168
    sget-object v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "face rect after adjusted by OT is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->WIDTH:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    div-int v1, v4, v5

    .line 171
    .local v1, "tempLeft":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    div-int v3, v4, v5

    .line 172
    .local v3, "tempTop":I
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->WIDTH:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    div-int v2, v4, v5

    .line 173
    .local v2, "tempRight":I
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    div-int v0, v4, v5

    .line 176
    .local v0, "tempBottom":I
    sget v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 177
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 178
    sget v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 179
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 181
    sget-object v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OT face tracking on SCG coordinate system is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private removeOTPreviewCallback()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 560
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeOTPreviewCallback done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOTCallbackAdded:Z

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    .line 569
    return-void

    .line 562
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didn\'t removeOTPreviewCallback mPreviewDataCallback != null "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewDataCallback:Lcom/lenovo/scg/camera/objtracking/ObjectTrackingDataCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private resetFaceTrackingParas()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOnTouch:Z

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z

    .line 593
    iput-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectedFaceRects:[Landroid/graphics/Rect;

    .line 594
    iput-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickedFaceRect:Landroid/graphics/Rect;

    .line 595
    iput-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mLastRect:Landroid/graphics/Rect;

    .line 597
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetFaceTrackingParas done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return-void
.end method

.method private setObjectTrackingPara(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 572
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setObjectTrackingPara "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 575
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 576
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 577
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 579
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setParams"

    invoke-static {v1, v2}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "face rect sending for OT adjust is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setParams(IILjava/lang/Object;)I

    move-result v0

    .line 582
    .local v0, "nRet":I
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParams end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OT set faceRect done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method


# virtual methods
.method public initPlugin(IILcom/lenovo/scg/camera/mode/controller/VideoModeController;)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "controller"    # Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 299
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OTPreviewCallback Running initPlugin in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    .line 302
    iput p2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    .line 303
    iput-object p3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    .line 305
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preivew size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default size on arcsoft coordinate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->WIDTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v1, "com.lenovo.scg"

    .line 310
    .local v1, "sPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->setAppPackageName(Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mAtiNotifyCb:Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;

    invoke-static {v2}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->registerNotify(Lcom/arcsoft/imageframeworkv20/plugin/ATI_NotifyCallback;)I

    move-result v2

    iput v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mnCbID:I

    .line 314
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mnCbID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mnCbID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "ret":I
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin FtPlugin load start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string/jumbo v2, "scg_object_tracking_jni"

    invoke-static {v6, v2}, Lcom/lenovo/scg/camera/way/CaptureWayTools;->loadPlugin(ILjava/lang/String;)I

    move-result v0

    .line 319
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin FtPlugin load end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v0, :cond_0

    .line 321
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

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

    .line 323
    :cond_0
    invoke-static {v6, v7}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->enablePlugin(II)V

    .line 325
    iget v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    iget v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    const/16 v4, 0x802

    const/4 v5, 0x0

    invoke-static {v6, v2, v3, v4, v5}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->initPlugin(IIIILjava/lang/Object;)I

    move-result v0

    .line 327
    if-eqz v0, :cond_2

    .line 328
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

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

    .line 332
    :goto_0
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsInited:Z

    .line 334
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wangsm3 initPlugin done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-nez v2, :cond_1

    .line 337
    new-instance v2, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-direct {v2}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 338
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->initFaceDetect(I)I

    .line 339
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "new mDetectJNI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    if-nez v2, :cond_3

    .line 342
    new-instance v2, Lcom/lenovo/scg/common/utils/FaceInfo;

    invoke-direct {v2, v6}, Lcom/lenovo/scg/common/utils/FaceInfo;-><init>(I)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 343
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "new mFaceInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_1
    return-void

    .line 330
    :cond_2
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "plugin init succeed "

    invoke-static {v2, v3}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_3
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v3, "mFaceInfo != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsInited:Z

    return v0
.end method

.method public onVideoSmartClick(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 486
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_UP"

    invoke-static {v1, v2}, Lcom/arcsoft/imageframeworkv20/common/ATI_Log;->UtilsLogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoSmartClick clicks on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-direct {p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->resetFaceTrackingParas()V

    .line 489
    invoke-direct {p0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->addOTPreviewCallback()V

    .line 492
    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewWidth:I

    mul-int/2addr v1, p1

    sget v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->WIDTH:I

    div-int v0, v1, v2

    .line 493
    .local v0, "temp":I
    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    mul-int/2addr v1, p2

    sget v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->HEIGHT:I

    div-int p1, v1, v2

    .line 494
    iget v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mPreviewHeight:I

    sub-int p2, v1, v0

    .line 496
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoSmartClick click point for face matching is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iput p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickX:I

    .line 499
    iput p2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mClickY:I

    .line 528
    return-void
.end method

.method public processVideoSmartTracking([B)V
    .locals 6
    .param p1, "dataIn"    # [B

    .prologue
    const/4 v4, 0x0

    .line 380
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "processVideoSmartTracking"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    if-nez v2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFDProcessThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFDProcessThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v3, "Face detection is in processing! Ignore current frame"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOnTouch:Z

    if-eqz v2, :cond_3

    .line 389
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v3, "Need to start thread for FD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 391
    .local v0, "start":J
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDataForFD:[B

    .line 393
    iput-object v4, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFDProcessThread:Ljava/lang/Thread;

    .line 394
    new-instance v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;

    invoke-direct {v2, p0, v4}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$ProcessFDThread;-><init>(Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager$1;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFDProcessThread:Ljava/lang/Thread;

    .line 396
    iget-object v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFDProcessThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 397
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mOnTouch:Z

    .line 398
    sget-object v2, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copy data and start thread costs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v0    # "start":J
    :cond_3
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsFaceClicked:Z

    if-eqz v2, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->processOT([B)V

    goto :goto_0
.end method

.method public registerFaceDetectionCallBack(Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    .prologue
    .line 192
    sget-object v1, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerFaceDetectionCallBack callback == null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-object p1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 350
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsInited:Z

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceDetectionListener:Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;

    invoke-interface {v0, v3}, Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;->onFaceDispear(Z)V

    .line 355
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mnCbID:I

    invoke-static {v0}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Notify;->unRegisterNotify(I)V

    .line 356
    invoke-static {v1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unInitPlugin(I)V

    .line 357
    invoke-static {v1}, Lcom/arcsoft/imageframeworkv20/plugin/ATI_Plugin;->unLoadPlugin(I)V

    .line 359
    iget-object v1, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mSync:[B

    monitor-enter v1

    .line 360
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v2, "Face detect JNI exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;->uninitFaceDetect()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mDetectJNI:Lcom/lenovo/scg/common/utils/ArcsoftFaceDetectJNI;

    .line 364
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release mDetectJNI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    if-eqz v0, :cond_2

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mFaceInfo:Lcom/lenovo/scg/common/utils/FaceInfo;

    .line 369
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "release mFaceInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->mIsInited:Z

    .line 377
    :goto_0
    return-void

    .line 371
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 375
    :cond_3
    sget-object v0, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->TAG:Ljava/lang/String;

    const-string v1, "Release ObjectTrackingManager while not inited"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
