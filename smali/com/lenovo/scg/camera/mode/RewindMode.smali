.class public Lcom/lenovo/scg/camera/mode/RewindMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "RewindMode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;,
        Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;,
        Lcom/lenovo/scg/camera/mode/RewindMode$Size;,
        Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;,
        Lcom/lenovo/scg/camera/mode/RewindMode$Status;
    }
.end annotation


# static fields
.field public static final DEFAULT_DUMP_SETTING:Z = true

.field private static final MSG_ON_ATTACH_END:I = 0x4

.field private static final MSG_ON_SAVE_END:I = 0x6

.field private static final MSG_ON_SWAP_END:I = 0x5

.field private static final MSG_SHOW_PREVIEW:I = 0x3

.field private static final REWIND_BURST_TOTAL_CAPTURES:I = 0x5

.field private static final REWIND_CAPTURE_INTERVAL:I = 0x12c

.field private static final REWIND_MAX_FACE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "REwindMode"

.field private static final TAG_FACE_PREFIX:Ljava/lang/String; = "head-"

.field private static final TAG_PREVIEW_PREFIX:Ljava/lang/String; = "preview-"


# instance fields
.field private mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private final mFaceRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/lenovo/scg/camera/rewind/FaceRect;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHardCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInterrupted:Z

.field private mIsTakePictureFinish:Z

.field private mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

.field private mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mPSType:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

.field private mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field private mPhoneOrientation:I

.field private mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

.field private mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

.field private mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

.field private mPredecodeThreadHandler:Landroid/os/Handler;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewIndex:I

.field private mPreviewScale:F

.field private mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

.field private mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

.field private mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

.field private mRewindViewR:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRootView:Landroid/view/View;

.field private mSaveInput:Z

.field private mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

.field private mSelectedTargetId:I

.field private mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

.field private mShotCount:I

.field private mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

.field private mSwapId:I

.field private mTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

.field private mUseList:[I

.field private mWheelSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

.field private mWorkThreadHandler:Landroid/os/Handler;

.field private mXOffset:I

.field private mYOffset:I

.field private mbAttachEnd:Z

.field private mbCapAnimEnd:Z

.field private mbInBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 1049
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 95
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .line 97
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .line 106
    iput v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I

    .line 112
    iput v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    .line 116
    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    .line 167
    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    .line 169
    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    .line 191
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    .line 193
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsTakePictureFinish:Z

    .line 195
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSaveInput:Z

    .line 535
    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/RewindMode$1;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHandler:Landroid/os/Handler;

    .line 935
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFaceRects:Ljava/util/Vector;

    .line 1050
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/PhotoModule;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/RewindMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbCapAnimEnd:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/scg/camera/mode/RewindMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbCapAnimEnd:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/RewindMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSaveInput:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/ContinuousShotTool;)Lcom/lenovo/scg/camera/ContinuousShotTool;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/ContinuousShotTool;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->updateFaceRect()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/mode/RewindMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/RewindProperty;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/mode/RewindMode;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/mode/RewindMode;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/mode/RewindMode;II)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/RewindMode;->generateFaceTag(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/camera/mode/RewindMode;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode;->generatePreviewTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/camera/mode/RewindMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/lenovo/scg/camera/mode/RewindMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/camera/mode/RewindMode;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/mode/controller/RewindModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/camera/mode/RewindMode;)Lcom/lenovo/scg/camera/rewind/PredecodeThread;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->attachEnd()V

    return-void
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->hideProgress()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/RewindMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/mode/RewindMode;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onOkClick()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/RewindMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbAttachEnd:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/camera/mode/RewindMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbAttachEnd:Z

    return p1
.end method

.method private attachEnd()V
    .locals 7

    .prologue
    .line 518
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 520
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 523
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getCacheData(I)[B

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method private clearCache()V
    .locals 6

    .prologue
    .line 606
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 617
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 608
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-gtz v4, :cond_1

    monitor-exit v5

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 610
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 611
    .local v3, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 612
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 613
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 615
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 616
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private findFaceId(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 816
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 818
    .local v2, "y":F
    const-string v4, "REwindMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " findFaceId x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v4, 0x5

    new-array v0, v4, [F

    .line 820
    .local v0, "rect":[F
    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    invoke-virtual {p0, v4, v1, v2, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->getFaceRect(IFF[F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 821
    const-string v4, "REwindMode"

    const-string v5, " Not Face Area!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return v3

    .line 824
    :cond_0
    aget v3, v0, v3

    float-to-int v3, v3

    iput v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    .line 825
    const-string v3, "REwindMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " findFaceId id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private generateFaceTag(II)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "index"    # I

    .prologue
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x5

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generatePreviewTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "previewIndex"    # I

    .prologue
    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preview-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPictureSize()Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    .locals 3

    .prologue
    .line 1025
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 1028
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v1, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$Size;-><init>(II)V

    goto :goto_0
.end method

.method private getPreviewSize()Lcom/lenovo/scg/camera/mode/RewindMode$Size;
    .locals 3

    .prologue
    .line 1034
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 1037
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v1, v1, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$Size;-><init>(II)V

    goto :goto_0
.end method

.method private hideProgress()V
    .locals 0

    .prologue
    .line 579
    return-void
.end method

.method private hideSelection()V
    .locals 2

    .prologue
    .line 854
    const-string v0, "REwindMode"

    const-string v1, "hideSelection()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->clear()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .line 859
    :cond_0
    return-void
.end method

.method private initOffset()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1001
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    .line 1002
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 1004
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPSType:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    if-ne v1, v2, :cond_0

    .line 1005
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 1008
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 1009
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    .line 1010
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 1011
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    xor-int/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    .line 1020
    :cond_1
    :goto_0
    const-string v1, "REwindMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOffset mXOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mYOffset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return-void

    .line 1012
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_3

    .line 1013
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 1014
    .local v0, "t":I
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    .line 1015
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    goto :goto_0

    .line 1016
    .end local v0    # "t":I
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 1017
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v2, v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    goto :goto_0
.end method

.method private initPPSize()V
    .locals 5

    .prologue
    .line 962
    const-string v2, "REwindMode"

    const-string v3, "initPPSize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 965
    .local v0, "picsize":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 966
    .local v1, "presize":Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPSType:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    .line 989
    new-instance v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/RewindMode$Size;-><init>(II)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 990
    new-instance v2, Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/RewindMode$Size;-><init>(II)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    .line 992
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    .line 994
    const-string v2, "REwindMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPPSize pic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v4, v4, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPictureSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v4, v4, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v2, "REwindMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPPSize preview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v4, v4, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewSize:Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    iget v4, v4, Lcom/lenovo/scg/camera/mode/RewindMode$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v2, "REwindMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPPSize mPreviewScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return-void
.end method

.method private initializeControl()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 628
    const-string v1, "REwindMode"

    const-string v2, "initializeControl"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040163

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    .line 636
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 637
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    const v2, 0x7f10083c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/rewind/RewindView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    .line 640
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/rewind/RewindView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 641
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewScale:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/rewind/RewindView;->setOffsetScale(IIF)V

    .line 643
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    const v2, 0x7f10083b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindViewR:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 644
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindViewR:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 647
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    const v2, 0x7f10083d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 648
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    const v2, 0x7f10009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 649
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 652
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 662
    return-void
.end method

.method private initializeData()V
    .locals 1

    .prologue
    .line 620
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    .line 622
    invoke-static {}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getInstance()Lcom/lenovo/scg/camera/rewind/RewindProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    .line 623
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->clearFaceRect()V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->clearTargetRect()V

    .line 625
    return-void
.end method

.method private onCancelButtonClick()V
    .locals 2

    .prologue
    .line 1202
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onCancelButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 1204
    return-void
.end method

.method private onOkClick()V
    .locals 4

    .prologue
    .line 1207
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onOkClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I

    if-ltz v0, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    monitor-enter v1

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSwapId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->showProgress()V

    .line 1214
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1216
    :cond_0
    return-void

    .line 1211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onSaveClick()V
    .locals 2

    .prologue
    .line 1219
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onSaveClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 1223
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1224
    return-void
.end method

.method private onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V
    .locals 8
    .param p1, "status"    # Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 205
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    if-nez v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbInBackground:Z

    if-eqz v2, :cond_2

    .line 210
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    goto :goto_0

    .line 214
    :cond_2
    const-string v2, "REwindMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStatusChanged() Old status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " New status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v2, p1, :cond_0

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_8

    .line 219
    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 220
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2, v5}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->showModeStatusBar(Z)V

    .line 221
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 223
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 244
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .line 247
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_d

    .line 248
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    if-nez v2, :cond_c

    .line 249
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->startCameraPreview()V

    .line 250
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->showEnterTips()V

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_4

    .line 253
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    monitor-enter v3

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 255
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getFlashStatusByModeBar()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "sFlashStatus":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 265
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 269
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 272
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    monitor-enter v3

    .line 273
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 274
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 275
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    :cond_6
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->clearCache()V

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->freeAllBuffer()V

    .line 280
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 281
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->clearUIScreen([I)V

    .line 282
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2, v7}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->showModeStatusBar(Z)V

    .line 284
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 285
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 286
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    .line 287
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    .line 288
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindViewR:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 289
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 290
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 293
    :cond_7
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    goto/16 :goto_0

    .line 225
    .end local v0    # "exclude":[I
    .end local v1    # "sFlashStatus":Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_9

    .line 226
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_a

    .line 228
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 229
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 231
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/rewind/RewindView;->setRectVisibility(Z)V

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 234
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    goto/16 :goto_1

    .line 236
    :cond_a
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_b

    .line 239
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->hideSelection()V

    goto/16 :goto_1

    .line 240
    :cond_b
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_3

    .line 241
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V

    goto/16 :goto_1

    .line 255
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 258
    :cond_c
    new-instance v2, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getOrientation()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 259
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    const v4, 0x7f0f01ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 275
    .restart local v1    # "sFlashStatus":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 294
    .end local v1    # "sFlashStatus":Ljava/lang/String;
    :cond_d
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_f

    .line 295
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    if-eqz v2, :cond_e

    .line 296
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    .line 297
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->reset()V

    .line 299
    :cond_e
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsTakePictureFinish:Z

    .line 300
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2, v6}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->clearUIScreen([I)V

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->startAni(I)V

    .line 303
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoModule;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    goto/16 :goto_0

    .line 304
    :cond_f
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_11

    .line 305
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v2, :cond_10

    .line 306
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    monitor-enter v3

    .line 307
    :try_start_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->startMulitiFrameAnim()V

    .line 308
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 311
    :cond_10
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 313
    iput-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    goto/16 :goto_0

    .line 308
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 315
    :cond_11
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_12

    .line 317
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 318
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 322
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/rewind/RewindView;->setRectVisibility(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->updatePreview()V

    .line 325
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetNum()I

    move-result v2

    if-gtz v2, :cond_0

    .line 326
    new-instance v2, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 327
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v3, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0114

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_12
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_13

    .line 334
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->showSelection()V

    goto/16 :goto_0

    .line 335
    :cond_13
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v3, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v2, v3, :cond_0

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim(Z)V

    goto/16 :goto_0

    .line 280
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method private showEnterTips()V
    .locals 5

    .prologue
    .line 582
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v1, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0113

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private showProgress()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method private showSelection()V
    .locals 9

    .prologue
    .line 831
    const-string v4, "REwindMode"

    const-string/jumbo v5, "showSelection()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 836
    new-instance v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;-><init>()V

    .line 838
    .local v1, "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-virtual {p0, v4, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->getFaceBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->image:Landroid/graphics/Bitmap;

    .line 839
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    monitor-enter v5

    .line 840
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v1, Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;->bDefault:Z

    .line 841
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 840
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 841
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 846
    .end local v1    # "item":Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;
    :cond_1
    new-instance v4, Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-direct {v4, v5, v6, v7}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    .line 847
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    new-instance v5, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/lenovo/scg/camera/mode/RewindMode$MySelectCallback;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$1;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->setOnViewClickListener(Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;)V

    .line 848
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initViews(Ljava/util/ArrayList;)V

    .line 849
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetRectFromId(I)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    move-result-object v3

    .line 850
    .local v3, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    iget v5, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v7, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    iget v8, v3, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->startAnim(FFFF)V

    .line 851
    return-void
.end method

.method private updateFaceRect()V
    .locals 6

    .prologue
    .line 938
    const-string v4, "REwindMode"

    const-string/jumbo v5, "updateFaceRect"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getFaceRects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    .line 959
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 943
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getFaceRects()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    .line 944
    .local v2, "pointRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 945
    .local v3, "rect":Landroid/graphics/Rect;
    iget v4, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 946
    iget v4, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 947
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 948
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 950
    new-instance v0, Lcom/lenovo/scg/camera/rewind/FaceRect;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    invoke-direct {v0, v4, v3, v5}, Lcom/lenovo/scg/camera/rewind/FaceRect;-><init>(Landroid/content/res/Resources;Landroid/graphics/Rect;I)V

    .line 951
    .local v0, "faceRect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/rewind/FaceRect;->setFaceAnimationListner(Lcom/lenovo/scg/camera/rewind/FaceRect$FaceAnimationListner;)V

    .line 952
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 955
    .end local v0    # "faceRect":Lcom/lenovo/scg/camera/rewind/FaceRect;
    .end local v2    # "pointRect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFaceRects:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindView;->setFaceRects(Ljava/util/Vector;)V

    .line 956
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindView;->startDrawingThread()V

    .line 957
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindView;->flashRect()V

    .line 958
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/rewind/RewindView;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public OnAnimationEnd()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "REwindMode"

    const-string v1, "OnAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public clearScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 1254
    return-void
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x5

    .line 342
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 344
    const-string v2, "REwindMode"

    const-string v3, "enter()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    .line 347
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 348
    .local v0, "exclude":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->clearUIScreen([I)V

    .line 350
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->showEnterTips()V

    .line 352
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/PhotoModule;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    .line 353
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    .line 355
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "developer_setting_rewind_dump_key"

    invoke-virtual {v2, v3, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSaveInput:Z

    .line 357
    new-instance v2, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    const-string v3, ""

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->start()V

    .line 359
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->setMainThreadHandler(Landroid/os/Handler;)V

    .line 360
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    .line 362
    new-instance v2, Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    .line 363
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->start()V

    .line 364
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/rewind/PredecodeThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThread:Lcom/lenovo/scg/camera/rewind/PredecodeThread;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    .line 366
    new-instance v3, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-direct {v3, v4, v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .line 368
    new-instance v2, Lcom/lenovo/scg/common/animation/LoadingAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/lenovo/scg/common/animation/LoadingAnimation;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    .line 370
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->setAnimationEndListener(Lcom/lenovo/scg/common/animation/LoadingAnimation$OnAnimationEndListener;)V

    .line 372
    new-instance v2, Lcom/lenovo/scg/camera/ContinuousShotTool;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;-><init>(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    .line 374
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I

    .line 376
    new-instance v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/data/ContinuousShotPara;-><init>()V

    .line 377
    .local v1, "para":Lcom/lenovo/scg/camera/data/ContinuousShotPara;
    sget-object v2, Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;->FORMAT_JEPG:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->format:Lcom/lenovo/scg/camera/ContinuousShotTool$ContinuousShotImageFormat;

    .line 378
    iput v6, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCount:I

    .line 379
    const-wide/16 v2, 0x12c

    iput-wide v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mDelayTime:J

    .line 380
    iput-boolean v7, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->mCacheFlag:Z

    .line 381
    sget-object v2, Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;->NOT_AUTO_PLAY:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    iput-object v2, v1, Lcom/lenovo/scg/camera/data/ContinuousShotPara;->am:Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$ANIM_MODE;

    .line 382
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->init(Lcom/lenovo/scg/camera/data/ContinuousShotPara;)V

    .line 383
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    new-instance v3, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$1;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ContinuousShotTool;->setMulitiFrameCaptureAnimListener(Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;)V

    .line 385
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getSupportZSD()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsSupportZSD:Z

    .line 387
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->initPPSize()V

    .line 389
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFlashStatusSave:Ljava/lang/String;

    .line 390
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->isTorch()Z

    move-result v2

    if-nez v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void

    .line 347
    nop

    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method protected exit()V
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 422
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    if-nez v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->exit()V

    .line 427
    const-string v2, "REwindMode"

    const-string v3, "exit()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    if-gt v0, v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_2
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v4, :cond_3

    .line 434
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 436
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 438
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    .line 439
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->setMainThreadHandler(Landroid/os/Handler;)V

    .line 441
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    monitor-enter v3

    .line 442
    const/4 v0, 0x1

    :goto_3
    if-gt v0, v6, :cond_4

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 445
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 446
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPredecodeThreadHandler:Landroid/os/Handler;

    .line 447
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    if-eqz v2, :cond_5

    .line 450
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/rewind/RewindView;->stopDrawingThread()V

    .line 451
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    .line 454
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->release()V

    .line 455
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    .line 457
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->hideSelection()V

    .line 459
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V

    .line 460
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSavingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .line 462
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 463
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 464
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRootView:Landroid/view/View;

    .line 467
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v2, :cond_7

    .line 468
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 469
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 481
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_8

    .line 482
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    monitor-enter v3

    .line 483
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 484
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 485
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    .line 489
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    monitor-enter v3

    .line 490
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 491
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWheelSelected:Ljava/util/HashMap;

    .line 492
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 495
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    if-eqz v2, :cond_a

    .line 496
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    monitor-enter v3

    .line 497
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    .line 498
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 501
    :cond_a
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->clearCache()V

    .line 503
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    .line 504
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    .line 505
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mUseList:[I

    .line 507
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mFlashStatusSave:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlash(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    if-eqz v2, :cond_0

    .line 510
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoController;

    .line 511
    .local v1, "pc":Lcom/lenovo/scg/camera/PhotoController;
    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v2

    if-ne v2, v6, :cond_0

    goto/16 :goto_0

    .line 447
    .end local v1    # "pc":Lcom/lenovo/scg/camera/PhotoController;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 485
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 492
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 498
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public getFaceBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "targetid"    # I
    .param p2, "index"    # I

    .prologue
    .line 703
    const-string v0, "REwindMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaceBitmap targetid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/RewindMode;->generateFaceTag(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaceRect(IFF[F)Z
    .locals 7
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "outRect"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 739
    const-string v4, "REwindMode"

    const-string v5, "getFaceRect"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-array v0, v3, [I

    .line 741
    .local v0, "id":[I
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mXOffset:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    iget v6, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mYOffset:I

    int-to-float v6, v6

    sub-float v6, p3, v6

    invoke-virtual {v4, p1, v5, v6, v0}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->isFaceRectArea(IFF[I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    :goto_0
    return v2

    .line 745
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mProperty:Lcom/lenovo/scg/camera/rewind/RewindProperty;

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/rewind/RewindProperty;->getTargetRectFromId(I)Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;

    move-result-object v1

    .line 746
    .local v1, "rect":Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;
    iget v4, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->id:I

    int-to-float v4, v4

    aput v4, p4, v2

    .line 747
    iget v2, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sx:F

    aput v2, p4, v3

    .line 748
    const/4 v2, 0x2

    iget v4, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->sy:F

    aput v4, p4, v2

    .line 749
    const/4 v2, 0x3

    iget v4, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->width:F

    aput v4, p4, v2

    .line 750
    const/4 v2, 0x4

    iget v4, v1, Lcom/lenovo/scg/camera/rewind/RewindProperty$PointRect;->height:F

    aput v4, p4, v2

    move v2, v3

    .line 751
    goto :goto_0
.end method

.method public isBackToModePreview()Z
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v0, v1, :cond_1

    .line 1246
    :cond_0
    const/4 v0, 0x1

    .line 1248
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isBackToModePreview()Z

    move-result v0

    goto :goto_0
.end method

.method public isTakePictureFinish()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1263
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 1264
    :cond_0
    iput v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    .line 1265
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsTakePictureFinish:Z

    move v0, v1

    .line 1268
    :cond_1
    return v0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1228
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v1, v2, :cond_1

    .line 1229
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 1240
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v1, v2, :cond_2

    .line 1232
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_0

    .line 1234
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SAVE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v1, v2, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v2, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v1, v2, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->exit()V

    .line 1240
    sget-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10009f

    if-ne v0, v1, :cond_0

    .line 1190
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onCancelButtonClick()V

    .line 1199
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    if-eqz v0, :cond_1

    .line 1194
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onOkClick()V

    goto :goto_0

    .line 1196
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onSaveClick()V

    goto :goto_0
.end method

.method public onFaceAnimationEnd()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/rewind/RewindView;->stopDrawingThread()V

    .line 1185
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1060
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbInBackground:Z

    .line 1062
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->restoreFlash()V

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->ANIMATION:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v0, v1, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->cancelMultiFrameAnim()V

    .line 1071
    :cond_1
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 6
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1100
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    if-nez v1, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v5

    .line 1104
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    if-eqz v1, :cond_3

    .line 1105
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    if-eqz v1, :cond_2

    .line 1106
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ContinuousShotTool;->stopTakePicture()V

    .line 1108
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->aniStop()V

    .line 1109
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_0

    .line 1113
    :cond_3
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    if-nez v1, :cond_4

    .line 1124
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhotoModule:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    .line 1126
    const-string v1, "REwindMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPhoneOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->getPictureSize()Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->setPictureSize(Lcom/lenovo/scg/camera/mode/RewindMode$Size;)V

    .line 1129
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThread:Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;

    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->getPreviewSize()Lcom/lenovo/scg/camera/mode/RewindMode$Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/mode/RewindMode$RewindWorkThread;->setPreviewSize(Lcom/lenovo/scg/camera/mode/RewindMode$Size;)V

    .line 1131
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1133
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbAttachEnd:Z

    .line 1134
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbCapAnimEnd:Z

    .line 1137
    :cond_4
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    .line 1138
    const-string v1, "REwindMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShotCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mLoadingAnimation:Lcom/lenovo/scg/common/animation/LoadingAnimation;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/animation/LoadingAnimation;->nextAni()V

    .line 1141
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1142
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mWorkThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->initOffset()V

    .line 1146
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->initializeData()V

    .line 1147
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/RewindMode;->initializeControl()V

    .line 1148
    iput v4, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    .line 1150
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopCameraPreview()V

    goto/16 :goto_0
.end method

.method public onPictureTakenTimeOut()V
    .locals 4

    .prologue
    .line 1273
    invoke-super {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPictureTakenTimeOut()V

    .line 1275
    const-string v0, "REwindMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPictureTakenTimeOut() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1277
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    monitor-enter v1

    .line 1278
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mShotCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mTool:Lcom/lenovo/scg/camera/ContinuousShotTool;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ContinuousShotTool;->getLostFrame()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->onPictureTaken([BLandroid/location/Location;)Z

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    :goto_1
    return-void

    .line 1283
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mContext:Landroid/content/Context;

    const-string v1, "ContinuousShot Failed!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1286
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->PREVIEW:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1075
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mbInBackground:Z

    .line 1077
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->clearUIScreen([I)V

    .line 1079
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-eq v0, v1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 1081
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->INIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPendingStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    .line 1083
    :cond_0
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 1054
    sget-object v0, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 710
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 711
    const-string v1, "REwindMode"

    const-string/jumbo v2, "onTouch down!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iput v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    .line 715
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelection:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    if-eqz v1, :cond_0

    .line 716
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    .line 734
    :goto_0
    return v0

    .line 719
    :cond_0
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/mode/RewindMode;->findFaceId(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->faceOnTouch(II)V

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 725
    const-string v1, "REwindMode"

    const-string/jumbo v2, "onTouch up!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    if-eq v1, v3, :cond_2

    .line 727
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mSelectedTargetId:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->faceOnTouch(II)V

    .line 729
    :cond_2
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/mode/RewindMode;->findFaceId(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 730
    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->EDIT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->onStatusChanged(Lcom/lenovo/scg/camera/mode/RewindMode$Status;)V

    goto :goto_0

    .line 734
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1087
    const-string v0, "REwindMode"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 1092
    const-string v1, "REwindMode"

    const-string/jumbo v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 1094
    .local v0, "exclude":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/RewindModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/RewindModeController;->clearUIScreen([I)V

    .line 1095
    return-void

    .line 1093
    :array_0
    .array-data 4
        0x7f10015f
        0x7f100764
        0x7f10015c
    .end array-data
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/4 v3, 0x1

    .line 1292
    const-string v0, "REwindMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->CAPTURE:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPhoneOrientation:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsTakePictureFinish:Z

    if-nez v0, :cond_0

    .line 1294
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mIsInterrupted:Z

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mStatus:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    sget-object v1, Lcom/lenovo/scg/camera/mode/RewindMode$Status;->SELECT:Lcom/lenovo/scg/camera/mode/RewindMode$Status;

    if-ne v0, v1, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mOkSaveButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1298
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mCancelButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1300
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setOrientation(I)V

    .line 1301
    return-void
.end method

.method public showScreen([I)V
    .locals 0
    .param p1, "exclude"    # [I

    .prologue
    .line 1259
    return-void
.end method

.method public updatePreview()V
    .locals 4

    .prologue
    .line 588
    const-string v1, "REwindMode"

    const-string/jumbo v2, "updatePreview "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 591
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    monitor-enter v2

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/rewind/RewindView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    monitor-exit v2

    .line 603
    :goto_0
    return-void

    .line 593
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 595
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mHardCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/RewindMode;->generatePreviewTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 596
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 597
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mRewindView:Lcom/lenovo/scg/camera/rewind/RewindView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/rewind/RewindView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    :goto_1
    const-string v1, "REwindMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ix="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/RewindMode;->mPreviewIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 599
    :cond_1
    const-string v1, "REwindMode"

    const-string v2, "bitmap == null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
