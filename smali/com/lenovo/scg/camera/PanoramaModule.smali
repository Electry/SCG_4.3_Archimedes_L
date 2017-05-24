.class public Lcom/lenovo/scg/camera/PanoramaModule;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/CameraModule;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;,
        Lcom/lenovo/scg/camera/PanoramaModule$FlipBitmapDrawable;,
        Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;,
        Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    }
.end annotation


# static fields
.field private static final CAPTURE_STATE_MOSAIC:I = 0x1

.field private static final CAPTURE_STATE_VIEWFINDER:I = 0x0

.field public static final DEFAULT_BLEND_MODE:I = 0x3

.field public static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field public static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final MSG_CLEAR_SCREEN_DELAY:I = 0x4

.field private static final MSG_CONFIG_MOSAIC_PREVIEW:I = 0x5

.field private static final MSG_END_DIALOG_RESET_TO_PREVIEW:I = 0x3

.field private static final MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x2

.field private static final MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x1

.field private static final MSG_RESET_TO_PREVIEW:I = 0x6

.field private static final PANNING_SPEED_THRESHOLD:F = 2.5f

.field private static final PREVIEW_ACTIVE:I = 0x1

.field private static final PREVIEW_STOPPED:I = 0x0

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final TAG:Ljava/lang/String; = "CAM PanoModule"


# instance fields
.field private mActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private mCameraOrientation:I

.field private mCameraState:I

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mCancelComputation:Z

.field private mCaptureIndicator:Landroid/view/View;

.field private mCaptureLayout:Landroid/widget/LinearLayout;

.field private mCaptureState:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceOrientation:I

.field private mDeviceOrientationAtCapture:I

.field private mDialogOkString:Ljava/lang/String;

.field private mDialogPanoramaFailedString:Ljava/lang/String;

.field private mDialogTitle:Ljava/lang/String;

.field private mDialogWaitingPreviousString:Ljava/lang/String;

.field private mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

.field private mHorizontalViewAngle:F

.field private mIndicatorColor:I

.field private mIndicatorColorFast:I

.field private mIsCreatingRenderer:Z

.field private mLeftIndicator:Landroid/view/View;

.field private mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

.field private mMosaicFrameProcessorInitialized:Z

.field private mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private mOrientationCompensation:I

.field private mOrientationEventListener:Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;

.field private mPanoLayout:Landroid/view/ViewGroup;

.field private mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPaused:Z

.field private mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

.field private mPreparePreviewString:Ljava/lang/String;

.field private mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProgressAngle:[F

.field private mProgressDirectionMatrix:Landroid/graphics/Matrix;

.field private mRendererLock:Ljava/lang/Object;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewBackground:I

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

.field private mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

.field private mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

.field private mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

.field private mTargetFocusMode:Ljava/lang/String;

.field private mThreadRunning:Z

.field private mTimeTaken:J

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mUsingFrontCamera:Z

.field private mVerticalViewAngle:F

.field private mWaitObject:Ljava/lang/Object;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    .line 143
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    .line 211
    const-string v0, "infinity"

    iput-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    .line 1253
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/PanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule;->showFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->resetToPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/RotateDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/PanoramaModule;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/camera/PanoramaModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIsCreatingRenderer:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/camera/PanoramaModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/PanoramaModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/PanoramaModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCapture(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/camera/PanoramaModule;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/PanoramaModule;->updateProgress(FFFF)V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/camera/PanoramaModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PanoramaModule;->showDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->cancelHighResComputation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCancelComputation:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/PanoProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/camera/PanoramaModule;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/camera/PanoramaModule;[BIII)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/camera/PanoramaModule;->savePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/ui/LayoutNotifyView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/PanoramaModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/camera/PanoramaModule;Lcom/lenovo/scg/camera/MosaicPreviewRenderer;)Lcom/lenovo/scg/camera/MosaicPreviewRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    return v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/PanoramaModule;)Lcom/lenovo/scg/camera/MosaicFrameProcessor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PanoramaModule;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->onBackgroundThreadFinished()V

    return-void
.end method

.method private cancelHighResComputation()V
    .locals 2

    .prologue
    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCancelComputation:Z

    .line 897
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    monitor-enter v1

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 899
    monitor-exit v1

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->clear()V

    .line 1001
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private configMosaicPreview(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v0, 0x1

    .line 505
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 506
    :try_start_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIsCreatingRenderer:Z

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 509
    monitor-exit v3

    .line 552
    :goto_0
    return-void

    .line 511
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIsCreatingRenderer:Z

    .line 512
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCameraPreview()V

    .line 514
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v1, v2, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 515
    .local v1, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-virtual {v1, p1, p2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSize(II)V

    .line 516
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v3

    .line 517
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->release()V

    .line 520
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .line 521
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 522
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 523
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 524
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 525
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 526
    .local v0, "isLandscape":Z
    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/lenovo/scg/camera/PanoramaModule$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/lenovo/scg/camera/PanoramaModule$3;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;IIZ)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 512
    .end local v0    # "isLandscape":Z
    .end local v1    # "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 523
    .restart local v1    # "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 525
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private configureCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 500
    const-string v0, "CAM PanoModule"

    const-string/jumbo v1, "setParameters configureCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 502
    return-void
.end method

.method private createContentView()V
    .locals 5

    .prologue
    .line 771
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040113

    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 772
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 773
    .local v0, "appRes":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1006f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    .line 774
    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIndicatorColor:I

    .line 775
    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewBackground:I

    .line 776
    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIndicatorColorFast:I

    .line 777
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v2, 0x7f1001b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    .line 778
    new-instance v1, Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f04016a

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    .line 779
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 780
    return-void
.end method

.method private findBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .param p2, "need4To3"    # Z
    .param p3, "needSmaller"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v4, 0xa8c00

    .line 436
    .local v4, "pixelsDiff":I
    const/4 v2, 0x0

    .line 437
    .local v2, "hasFound":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 438
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v1, v5, Landroid/hardware/Camera$Size;->height:I

    .line 439
    .local v1, "h":I
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    .line 441
    .local v6, "w":I
    const v7, 0xa8c00

    mul-int v8, v1, v6

    sub-int v0, v7, v8

    .line 442
    .local v0, "d":I
    if-eqz p3, :cond_1

    if-ltz v0, :cond_0

    .line 445
    :cond_1
    if-eqz p2, :cond_2

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v6, 0x3

    if-ne v7, v8, :cond_0

    .line 448
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 449
    if-ge v0, v4, :cond_0

    .line 450
    iput v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewWidth:I

    .line 451
    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewHeight:I

    .line 452
    move v4, v0

    .line 453
    const/4 v2, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "d":I
    .end local v1    # "h":I
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    .end local v6    # "w":I
    :cond_3
    return v2
.end method

.method private getCaptureOrientation()I
    .locals 3

    .prologue
    .line 844
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mUsingFrontCamera:Z

    if-eqz v1, :cond_0

    .line 847
    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraOrientation:I

    sub-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 851
    .local v0, "orientation":I
    :goto_0
    return v0

    .line 849
    .end local v0    # "orientation":I
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    iget v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraOrientation:I

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .restart local v0    # "orientation":I
    goto :goto_0
.end method

.method private hideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 573
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    return-void
.end method

.method private hideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    return-void
.end method

.method private initMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->getPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->initialize(III)V

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessorInitialized:Z

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1250
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1251
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1243
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1244
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1245
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1246
    return-void
.end method

.method private onBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    .line 892
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    .line 893
    return-void
.end method

.method private openCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/camera/CameraHardwareException;,
            Lcom/lenovo/scg/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 428
    .local v0, "cameraId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 430
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->getCameraOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraOrientation:I

    .line 431
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraHolder;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mUsingFrontCamera:Z

    .line 432
    :cond_1
    return-void
.end method

.method private releaseCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 416
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->release()V

    .line 417
    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 418
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraState:I

    .line 420
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 904
    iput v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getOrientationManager()Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 913
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->showUI()V

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->reset()V

    .line 923
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1239
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1240
    return-void
.end method

.method private resetToPreview()V
    .locals 1

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->reset()V

    .line 927
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->startCameraPreview()V

    .line 928
    :cond_0
    return-void
.end method

.method private runBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    .line 887
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 888
    return-void
.end method

.method private savePanorama([BIII)Landroid/net/Uri;
    .locals 12
    .param p1, "jpegData"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 964
    if-eqz p1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f054a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/PanoUtil;->createName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/scg/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 968
    .local v7, "filepath":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 969
    .local v4, "loc":Landroid/location/Location;
    new-instance v11, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v11}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    .line 971
    .local v11, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :try_start_0
    invoke-virtual {v11, p1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 972
    iget-wide v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTimeTaken:J

    invoke-virtual {v11, v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    .line 973
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_DATE_TIME:I

    iget-wide v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTimeTaken:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v11, v0, v2, v3, v5}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 974
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {p4 .. p4}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 975
    invoke-static {v4, v11}, Lcom/lenovo/scg/camera/PanoramaModule;->writeLocation(Landroid/location/Location;Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)V

    .line 976
    invoke-virtual {v11, p1, v7}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v6, v2

    .line 982
    .local v6, "jpegLength":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTimeTaken:J

    move/from16 v5, p4

    move v8, p2

    move v9, p3

    invoke-static/range {v0 .. v9}, Lcom/lenovo/scg/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;IILjava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 984
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v6    # "jpegLength":I
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v11    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :goto_1
    return-object v0

    .line 977
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v4    # "loc":Landroid/location/Location;
    .restart local v7    # "filepath":Ljava/lang/String;
    .restart local v11    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :catch_0
    move-exception v10

    .line 978
    .local v10, "e":Ljava/io/IOException;
    const-string v0, "CAM PanoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set exif for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    invoke-static {v7, p1}, Lcom/lenovo/scg/camera/Storage;->writeFile(Ljava/lang/String;[B)V

    goto :goto_0

    .line 984
    .end local v1    # "filename":Ljava/lang/String;
    .end local v4    # "loc":Landroid/location/Location;
    .end local v7    # "filepath":Ljava/lang/String;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setViews(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "appRes"    # Landroid/content/res/Resources;

    .prologue
    const v5, 0x7f0d002e

    const/4 v4, 0x0

    .line 715
    iput v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    .line 716
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    .line 717
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 718
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const v3, 0x7f0d002f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setDoneColor(I)V

    .line 719
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    iget v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIndicatorColor:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 720
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    new-instance v3, Lcom/lenovo/scg/camera/PanoramaModule$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/PanoramaModule$6;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setOnDirectionChangeListener(Lcom/lenovo/scg/camera/PanoProgressBar$OnDirectionChangeListener;)V

    .line 730
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    .line 731
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    .line 732
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 733
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 734
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    .line 736
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    .line 737
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/lenovo/scg/camera/ui/LayoutChangeNotifier$Listener;)V

    .line 739
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1006fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/PanoProgressBar;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    .line 740
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 741
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 742
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setBackgroundColor(I)V

    .line 743
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const v3, 0x7f0d0030

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/PanoProgressBar;->setDoneColor(I)V

    .line 745
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1007a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    .line 747
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1006f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    .line 748
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1006fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    .line 749
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    iget v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewBackground:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 750
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1006ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 751
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/lenovo/scg/camera/PanoramaModule$7;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PanoramaModule$7;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    .line 762
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/ShutterButton;->setOnShutterButtonListener(Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;)V

    .line 764
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 765
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    const v3, 0x7f1006fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/Rotatable;

    .line 766
    .local v1, "view":Lcom/lenovo/scg/camera/ui/Rotatable;
    const/16 v2, 0x10e

    invoke-interface {v1, v2, v4}, Lcom/lenovo/scg/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 768
    .end local v1    # "view":Lcom/lenovo/scg/camera/ui/Rotatable;
    :cond_0
    return-void
.end method

.method private setupCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/scg/camera/CameraHardwareException;,
            Lcom/lenovo/scg/camera/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->openCamera()V

    .line 408
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 409
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->setupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    .line 410
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->configureCamera(Landroid/hardware/Camera$Parameters;)V

    .line 411
    return-void
.end method

.method private setupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 460
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 461
    .local v5, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5, v10, v10}, Lcom/lenovo/scg/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 462
    const-string v6, "CAM PanoModule"

    const-string v7, "No 4:3 ratio preview size supported."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0, v5, v9, v10}, Lcom/lenovo/scg/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    const-string v6, "CAM PanoModule"

    const-string v7, "Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0, v5, v9, v9}, Lcom/lenovo/scg/camera/PanoramaModule;->findBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 468
    :cond_0
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preview h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewWidth:I

    iget v7, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewHeight:I

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 471
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 473
    .local v1, "last":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v3, v6, v9

    .line 474
    .local v3, "minFps":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    aget v2, v6, v10

    .line 475
    .local v2, "maxFps":I
    invoke-virtual {p1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 476
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preview fps: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 479
    .local v4, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 480
    iget-object v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 486
    :goto_0
    const-string/jumbo v6, "recording-hint"

    const-string v7, "false"

    invoke-virtual {p1, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mHorizontalViewAngle:F

    .line 489
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v6

    iput v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mVerticalViewAngle:F

    .line 490
    return-void

    .line 483
    :cond_1
    const-string v6, "CAM PanoModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set the focus mode to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTargetFocusMode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " becuase the mode is not supported."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDirectionIndicators(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 578
    packed-switch p1, :pswitch_data_0

    .line 592
    :goto_0
    return-void

    .line 580
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 584
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 588
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 949
    if-eqz p1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->getCaptureOrientation()I

    move-result v0

    .line 951
    .local v0, "orientation":I
    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    .line 953
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    new-instance v2, Lcom/lenovo/scg/camera/PanoramaModule$FlipBitmapDrawable;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/lenovo/scg/camera/PanoramaModule$FlipBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 959
    .end local v0    # "orientation":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    return-void

    .line 955
    .restart local v0    # "orientation":I
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mIndicatorColorFast:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->setIndicatorColor(I)V

    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 683
    return-void
.end method

.method private startCameraPreview()V
    .locals 3

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1214
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1202
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCameraPreview()V

    .line 1207
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1209
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1210
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1212
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1213
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraState:I

    goto :goto_0
.end method

.method private stopCameraPreview()V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1218
    const-string v0, "CAM PanoModule"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1221
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraState:I

    .line 1222
    return-void
.end method

.method private stopCapture(Z)V
    .locals 3
    .param p1, "aborted"    # Z

    .prologue
    const/4 v2, 0x0

    .line 642
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    .line 643
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->hideTooFastIndication()V

    .line 645
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->hideDirectionIndicators()V

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->setProgressListener(Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 648
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCameraPreview()V

    .line 650
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 652
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->hideUI()V

    .line 657
    new-instance v0, Lcom/lenovo/scg/camera/PanoramaModule$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PanoramaModule$5;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 673
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 674
    return-void
.end method

.method private updateProgress(FFFF)V
    .locals 5
    .param p1, "panningRateXInDegree"    # F
    .param p2, "panningRateYInDegree"    # F
    .param p3, "progressHorizontalAngle"    # F
    .param p4, "progressVerticalAngle"    # F

    .prologue
    const/high16 v2, 0x40200000    # 2.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 696
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->requestRender()V

    .line 698
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 699
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->showTooFastIndication()V

    .line 706
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aput p3, v1, v3

    .line 707
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aput p4, v1, v4

    .line 708
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 710
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v3

    float-to-int v0, v1

    .line 711
    .local v0, "angleInMajorDirection":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->setProgress(I)V

    .line 712
    return-void

    .line 701
    .end local v0    # "angleInMajorDirection":I
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->hideTooFastIndication()V

    goto :goto_0

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressAngle:[F

    aget v1, v1, v4

    float-to-int v0, v1

    goto :goto_1
.end method

.method private static writeLocation(Landroid/location/Location;Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)V
    .locals 4
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "exif"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .prologue
    .line 988
    if-nez p0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    .line 992
    sget v0, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public generateFinalMosaic(Z)Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;
    .locals 13
    .param p1, "highRes"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1150
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1151
    .local v8, "mosaicReturnCode":I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1183
    :goto_0
    return-object v5

    .line 1153
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1154
    new-instance v5, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->getFinalMosaicNV21()[B

    move-result-object v1

    .line 1158
    .local v1, "imageData":[B
    if-nez v1, :cond_2

    .line 1159
    const-string v2, "CAM PanoModule"

    const-string v5, "getFinalMosaicNV21() returned null."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    new-instance v5, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto :goto_0

    .line 1163
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1164
    .local v7, "len":I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v3, v2, v10

    .line 1165
    .local v3, "width":I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    add-int v4, v2, v10

    .line 1166
    .local v4, "height":I
    const-string v2, "CAM PanoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ImLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1170
    :cond_3
    const-string v2, "CAM PanoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "width|height <= 0!!, len = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v5, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto/16 :goto_0

    .line 1174
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1175
    .local v0, "yuvimage":Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1176
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1178
    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    new-instance v5, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;[BII)V

    goto/16 :goto_0

    .line 1179
    :catch_0
    move-exception v6

    .line 1180
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "CAM PanoModule"

    const-string v5, "Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    new-instance v5, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/PanoramaModule$MosaicJpeg;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    goto/16 :goto_0
.end method

.method public getPreviewBufSize()I
    .locals 3

    .prologue
    .line 493
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 494
    .local v0, "pixelInfo":Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 496
    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewWidth:I

    iget v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method public init(Lcom/lenovo/scg/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "reuseScreenNail"    # Z

    .prologue
    const/4 v4, 0x1

    .line 295
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 296
    iput-object p2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    .line 298
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->createContentView()V

    .line 300
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 301
    if-eqz p3, :cond_0

    .line 302
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 308
    :goto_0
    new-instance v2, Lcom/lenovo/scg/camera/PanoramaModule$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PanoramaModule$1;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 337
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 338
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 340
    new-instance v2, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationEventListener:Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;

    .line 342
    invoke-static {}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->getInstance()Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    .local v0, "appRes":Landroid/content/res/Resources;
    const v2, 0x7f0f054d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreparePreviewString:Ljava/lang/String;

    .line 346
    const v2, 0x7f0f054f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogTitle:Ljava/lang/String;

    .line 347
    const v2, 0x7f0f0546

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogOkString:Ljava/lang/String;

    .line 348
    const v2, 0x7f0f054e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogPanoramaFailedString:Ljava/lang/String;

    .line 349
    const v2, 0x7f0f0551

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    .line 353
    new-instance v2, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 355
    new-instance v2, Lcom/lenovo/scg/camera/LocationManager;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/LocationManager$Listener;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    .line 357
    new-instance v2, Lcom/lenovo/scg/camera/PanoramaModule$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PanoramaModule$2;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMainHandler:Landroid/os/Handler;

    .line 399
    return-void

    .line 304
    .end local v0    # "appRes":Landroid/content/res/Resources;
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    goto/16 :goto_0
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 1294
    return-void
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x0

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1298
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 1320
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 1059
    const/4 v1, 0x0

    .line 1060
    .local v1, "lowResReview":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1063
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1064
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1065
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1066
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04012b

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1068
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1069
    const v2, 0x7f040112

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1071
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PanoramaModule;->setViews(Landroid/content/res/Resources;)V

    .line 1072
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-eqz v2, :cond_1

    .line 1073
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :cond_1
    return-void

    .line 1063
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1361
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .param p1, "full"    # Z

    .prologue
    .line 1286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1302
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1307
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 559
    const-string v0, "CAM PanoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p5, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/CameraActivity;->onLayoutChange(Landroid/view/View;IIII)V

    .line 561
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V

    .line 562
    return-void
.end method

.method public onLescfError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 1378
    return-void
.end method

.method public onMediaSaveServiceConnected(Lcom/lenovo/scg/camera/MediaSaveService;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 1348
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1081
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1019
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationEventListener:Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->disable()V

    .line 1020
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_0

    .line 1055
    :goto_0
    return-void

    .line 1025
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    if-ne v1, v4, :cond_1

    .line 1026
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCapture(Z)V

    .line 1027
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->reset()V

    .line 1030
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->releaseCamera()V

    .line 1031
    iget-object v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRendererLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1032
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 1036
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    if-eqz v1, :cond_2

    .line 1037
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/MosaicPreviewRenderer;->release()V

    .line 1038
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicPreviewRenderer:Lcom/lenovo/scg/camera/MosaicPreviewRenderer;

    .line 1040
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->clearMosaicFrameProcessorIfNeeded()V

    .line 1043
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_3

    .line 1044
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1045
    iput-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1047
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->resetScreenOn()V

    .line 1048
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    if-eqz v1, :cond_4

    .line 1049
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/SoundClips$Player;->release()V

    .line 1050
    iput-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    .line 1052
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v1, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 1053
    .local v0, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 1054
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 1040
    .end local v0    # "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPauseBeforeSuper()V
    .locals 2

    .prologue
    .line 1013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    .line 1014
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 1015
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 1316
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1090
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mOrientationEventListener:Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PanoramaModule$PanoOrientationEventListener;->enable()V

    .line 1092
    iput v6, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    .line 1095
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->setupCamera()V
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1105
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v4}, Lcom/lenovo/scg/camera/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/lenovo/scg/camera/SoundClips$Player;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    .line 1108
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    .line 1109
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1110
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1111
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRotateDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDialogWaitingPreviousString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/RotateDialogController;->showWaitingDialog(Ljava/lang/String;)V

    .line 1114
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->hideUI()V

    .line 1115
    new-instance v4, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;

    invoke-direct {v4, p0, v8}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;Lcom/lenovo/scg/camera/PanoramaModule$1;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/PanoramaModule$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 1127
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1130
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 1131
    .local v2, "recordLocation":Z
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 1134
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/ui/PopupManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1135
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 1136
    const-string v4, "Camera"

    const-string v5, "PanoramaModule"

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .end local v2    # "recordLocation":Z
    :goto_1
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f04cb

    invoke-static {v4, v5, v7}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto :goto_1

    .line 1099
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1100
    .local v0, "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f04cc

    invoke-static {v4, v5, v7}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto :goto_1

    .line 1117
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mGLRootView:Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/ui/GLRootView;->setVisibility(I)V

    .line 1120
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->initMosaicFrameProcessorIfNeeded()V

    .line 1121
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->getWidth()I

    move-result v3

    .line 1122
    .local v3, "w":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPreviewArea:Lcom/lenovo/scg/camera/ui/LayoutNotifyView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/ui/LayoutNotifyView;->getHeight()I

    move-result v1

    .line 1123
    .local v1, "h":I
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 1124
    invoke-direct {p0, v3, v1}, Lcom/lenovo/scg/camera/PanoramaModule;->configMosaicPreview(II)V

    goto :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    .line 1086
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 0

    .prologue
    .line 1343
    return-void
.end method

.method public onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V
    .locals 4
    .param p1, "button"    # Lcom/lenovo/scg/camera/ShutterButton;

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mThreadRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 791
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x12c00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/SoundClips$Player;->play(I)V

    .line 793
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->startCapture()V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSoundPlayer:Lcom/lenovo/scg/camera/SoundClips$Player;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/SoundClips$Player;->play(I)V

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->stopCapture(Z)V

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 803
    return-void
.end method

.method public onShutterButtonLongPressed(Z)Z
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 1352
    const-string v0, "anql"

    const-string/jumbo v1, "onShutterButtonLongPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1312
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1290
    return-void
.end method

.method public onStorageSpaceUpdated()V
    .locals 0

    .prologue
    .line 1369
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 1226
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->keepScreenOnAwhile()V

    .line 1227
    :cond_0
    return-void
.end method

.method public reportProgress()V
    .locals 3

    .prologue
    .line 806
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->reset()V

    .line 807
    iget-object v1, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mSavingProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 808
    new-instance v0, Lcom/lenovo/scg/camera/PanoramaModule$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PanoramaModule$8;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    .line 833
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 834
    return-void
.end method

.method public resetFatalError()V
    .locals 0

    .prologue
    .line 1374
    return-void
.end method

.method public saveHighResMosaic()V
    .locals 1

    .prologue
    .line 855
    new-instance v0, Lcom/lenovo/scg/camera/PanoramaModule$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PanoramaModule$9;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PanoramaModule;->runBackgroundThread(Ljava/lang/Thread;)V

    .line 882
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->reportProgress()V

    .line 883
    return-void
.end method

.method setupProgressDirectionMatrix()V
    .locals 5

    .prologue
    .line 634
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    .line 635
    .local v1, "degrees":I
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 636
    .local v0, "cameraId":I
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayOrientation(II)I

    move-result v2

    .line 637
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 638
    iget-object v3, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mProgressDirectionMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 639
    return-void
.end method

.method public startCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCancelComputation:Z

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mTimeTaken:J

    .line 598
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 601
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureState:I

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mCaptureIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PanoramaModule;->showDirectionIndicators(I)V

    .line 605
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mMosaicFrameProcessor:Lcom/lenovo/scg/camera/MosaicFrameProcessor;

    new-instance v1, Lcom/lenovo/scg/camera/PanoramaModule$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PanoramaModule$4;-><init>(Lcom/lenovo/scg/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/MosaicFrameProcessor;->setProgressListener(Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;)V

    .line 621
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PanoProgressBar;->reset()V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->setIndicatorWidth(F)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PanoProgressBar;->setMaxProgress(I)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mPanoProgressBar:Lcom/lenovo/scg/camera/PanoProgressBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/PanoProgressBar;->setVisibility(I)V

    .line 627
    iget v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientation:I

    iput v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mDeviceOrientationAtCapture:I

    .line 628
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->keepScreenOn()V

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/camera/PanoramaModule;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getOrientationManager()Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 630
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PanoramaModule;->setupProgressDirectionMatrix()V

    .line 631
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 1329
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method
