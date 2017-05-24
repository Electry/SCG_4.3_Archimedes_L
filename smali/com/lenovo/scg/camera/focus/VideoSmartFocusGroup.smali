.class public Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;
.super Lcom/lenovo/scg/camera/focus/FocusGroup;
.source "VideoSmartFocusGroup.java"

# interfaces
.implements Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    }
.end annotation


# static fields
.field private static final FACE_DESPERA_DELAY:I = 0xbb8

.field private static final MSG_FACE_DISPERA_CONFIRM:I = 0x0

.field private static final MSG_OBJECT_TRACKING_TIMEOUT:I = 0x2

.field private static final OBJECT_TRACKING_TIMEOUT:I = 0x2bc

.field private static final TAG:Ljava/lang/String; = "VideoSmartFocusGroup"


# instance fields
.field private mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

.field private mIsFaceTracking:Z

.field private mOnFaceDetecting:Z

.field private mTouchX:I

.field private mTouchY:I

.field private mVideoSmartFocusHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;-><init>()V

    .line 39
    iput v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mTouchX:I

    .line 40
    iput v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mTouchY:I

    .line 41
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mOnFaceDetecting:Z

    .line 44
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    .line 46
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    .line 52
    new-instance v0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$1;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    .line 88
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->stopFaceTracking()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;)Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    return-object p1
.end method

.method private doSuperSingleTapOnUIThread(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 302
    const-string v1, "VideoSmartFocusGroup"

    const-string v2, "doSuperSingleTapOnUIThread "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->updateFocused(Z)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 308
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 309
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$5;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    :cond_1
    return-void
.end method

.method private hideFaceView()V
    .locals 3

    .prologue
    .line 285
    const-string v1, "VideoSmartFocusGroup"

    const-string v2, "clearFace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 287
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$4;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    :cond_0
    return-void
.end method

.method private initFaceView()V
    .locals 3

    .prologue
    .line 246
    const-string v1, "VideoSmartFocusGroup"

    const-string v2, "initFaceView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 250
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$2;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    :cond_0
    return-void
.end method

.method private stopFaceTracking()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->registerFaceDetectionCallBack(Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;)V

    .line 77
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFocusArea:Ljava/util/List;

    .line 78
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mMeteringArea:Ljava/util/List;

    .line 80
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->hideFaceView()V

    .line 81
    iput-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    .line 82
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    .line 84
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    return-void
.end method

.method private updateFace(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 265
    const-string v1, "VideoSmartFocusGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 269
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$3;-><init>(Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public onAutoFocus(Z)Z
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    .line 340
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoFocus( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->updateFocused(Z)V

    .line 346
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onAutoFocus(Z)Z

    move-result v0

    return v0
.end method

.method public onFaceDetected(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 158
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFaceDetected(): rect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mOnFaceDetecting:Z

    if-eqz v0, :cond_2

    .line 167
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mOnFaceDetecting:Z

    .line 168
    if-eqz p1, :cond_1

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    .line 171
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->initFaceView()V

    .line 174
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mTouchX:I

    iget v1, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mTouchY:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->doSuperSingleTapOnUIThread(II)V

    .line 177
    :cond_2
    if-nez p1, :cond_4

    .line 179
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->registerFaceDetectionCallBack(Lcom/lenovo/scg/camera/focus/OTFaceDetectionCallback;)V

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->clear()V

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->startPosChangeDet()Z

    .line 194
    :goto_0
    return-void

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    :cond_5
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->updateFace(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onFaceDispear(Z)V
    .locals 5
    .param p1, "needWait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 221
    const-string v0, "VideoSmartFocusGroup"

    const-string/jumbo v1, "onFaceDispera()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    if-nez v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 228
    :cond_0
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->hideFaceView()V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mVideoSmartFocusHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->stopFaceTracking()V

    goto :goto_0
.end method

.method public onFaceMoveReFocus(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 204
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFaceMove( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->doSuperSingleTapOnUIThread(II)V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;->removeFaceView()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mFaceView:Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup$FaceView;

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    .line 358
    :cond_0
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 111
    const-string v0, "VideoSmartFocusGroup"

    const-string/jumbo v1, "onSingleTapUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method protected startPosChangeDet()Z
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->startPosChangeDet()Z

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    .line 93
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSuperSingleTapOnUIThread updateFocusUI. mOnFaceDetecting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mOnFaceDetecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mOnFaceDetecting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    if-nez v0, :cond_0

    .line 98
    const-string v0, "VideoSmartFocusGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSuperSingleTapOnUIThread need to show focus UI. mIsFaceTracking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mIsFaceTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0}, Lcom/lenovo/scg/camera/focus/FocusGroup;->updateFocusUI()V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "VideoSmartFocusGroup"

    const-string v1, "Don\'t need to show focus UI in face detecting status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/VideoSmartFocusGroup;->mPara:Lcom/lenovo/scg/camera/focus/FoucsGroupPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FoucsGroupPara;->getFocusUi()Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;->clearFocus()V

    goto :goto_0
.end method
