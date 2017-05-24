.class public Lcom/lenovo/scg/camera/PhotoModule;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/CameraModule;
.implements Lcom/lenovo/scg/camera/PhotoController;
.implements Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;
.implements Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;
.implements Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/lenovo/scg/camera/MediaSaveService$Listener;
.implements Lcom/lenovo/scg/camera/ui/CountDownView$OnCountDownFinishedListener;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;
.implements Lcom/lenovo/scg/common/utils/camera/PicturePreviewSizeInfo$OnPreviewRestartedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PhotoModule$27;,
        Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;,
        Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;,
        Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;,
        Lcom/lenovo/scg/camera/PhotoModule$SaveThumbnailTask;,
        Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;,
        Lcom/lenovo/scg/camera/PhotoModule$NamedImages;,
        Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;,
        Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;,
        Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;,
        Lcom/lenovo/scg/camera/PhotoModule$MainHandler;,
        Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;,
        Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.lenovo.scg.action.DELETE_PICTURE"

.field private static final APP_OUTOFDATE:I = 0xe

.field public static final AUTO_PRO_FUNCTION:Ljava/lang/String; = "AUTO_PRO_FUNCTION"

.field private static final CAMERA_DISABLED:I = 0xc

.field private static final CAMERA_OPEN_DONE:I = 0x9

.field private static final CAMERA_SETTING_OPEN_GPS:I = 0x7d0

.field private static final CAPTURE_ANIMATION_DONE:I = 0xd

.field private static final CHECK_DISPLAY_ROTATION:I = 0x5

.field private static final CLEAR_SCREEN_DELAY:I = 0x3

.field private static final CONTINUOUS_SHOOTING:I = 0x10

.field private static final CONTINUOUS_SHOOTING_STOP:I = 0x12

.field private static final DO_PHOTOUI_ONCAMERAOPENED:I = 0x16

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final FIRST_TIME_INIT:I = 0x2

.field public static GLOBAL_ORIENTATION:I = 0x0

.field private static final GO_2_WATCH_BACK_PAGE:I = 0x1100

.field private static final INIT_VIDEO_MODE_DONE:I = 0x15

.field private static final KEEP_CAMERA_TIMEOUT:I = 0x3e8

.field private static final LOW_BATTRY_THRESHOLD:I = 0xf

.field public static final LOW_STORAGE_SPACE:J = 0x12c00000L

.field private static final OPEN_CAMERA_FAIL:I = 0xb

.field private static final REMOVE_GAUSS_BLUR:I = 0x17

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final RESTORE_PREVIEW_CALLBACK_MANAGER:I = 0x303a

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SERIOUS_LOW_BATTRY_THRESHOLD:I = 0x5

.field public static final SERIOUS_LOW_STORAGE_SPACE:J = 0x6400000L

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x4

.field private static final SHOWLOWLIGHTFLASH:I = 0x14

.field private static final SHUTDOWN:I = 0x13

.field private static final START_PREVIEW_DONE:I = 0xa

.field private static final SWITCHINGDONE:I = 0x11

.field private static final SWITCH_CAMERA:I = 0x7

.field private static final SWITCH_CAMERA_START_ANIMATION:I = 0x8

.field private static final SYSTEM_OUTOFDATE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "CAM_PhotoModule"

.field protected static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field public static final VALID_REQUEST_RENDER:I = 0x3039

.field public static mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener; = null

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private flashState:Ljava/lang/String;

.field private isBackKeyLocked:Z

.field public isHaveResatrted:Z

.field private isInCONTINUOUS:Z

.field isLastShowed:Z

.field private isShowCameraLowPowerTip:Z

.field private isUpdateflash:Z

.field private mAeLockSupported:Z

.field private final mAutoFocusCallback:Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field protected mBreakContinuousShooting:Z

.field protected mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field protected mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

.field private mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

.field private mCameraDisabled:Z

.field protected mCameraDisplayOrientation:I

.field protected mCameraId:I

.field private mCameraLeSCFDevice:Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

.field public mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

.field mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

.field private mCameraState:I

.field private mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

.field public mCaptureStartTime:J

.field private mCaptureStarted:Z

.field private mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

.field private mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mContinousFocusSupported:Z

.field private mContinuousPicReturn:Z

.field private mContinuousShotStarted:Z

.field private mCropValue:Ljava/lang/String;

.field mCurrentSmart:Ljava/lang/String;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

.field protected mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

.field private mDisplayOrientation:I

.field protected mDisplayRotation:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEnableScreenShow:Z

.field private mEnterStopContinuousShotProcess:Z

.field private final mErrorCallback:Lcom/lenovo/scg/camera/CameraErrorCallback;

.field protected mExCameraIdSupported:Z

.field private mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

.field private mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFaceDetectionStarted:Z

.field private mFacePositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

.field private mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

.field private mFirstTimeInitialized:Z

.field private mFirstTimeInitializedSuccess:Z

.field private mFlashRunnable:Ljava/lang/Runnable;

.field private mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

.field private mFullScreen:Z

.field protected mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

.field private mGData:[F

.field private mGouTuLineStatus:Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

.field private mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<",
            "Lcom/lenovo/scg/camera/MediaSavePara;",
            ">;"
        }
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field private mHeading:I

.field private mIsCanChangeFunction:Z

.field private mIsEnteredVideoUI:Z

.field private mIsFirstStartUp:Z

.field private mIsFocus:Z

.field private mIsImageCaptureIntent:Z

.field private mIsVideoAnimDone:Z

.field private mIsVideoIntent:Z

.field private mIsVideoModeInited:Z

.field private mIsVideoModeStarted:Z

.field private mIsVideoPaused:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field protected mJpegRotation:I

.field private mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

.field private mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field mLineLastIsShowed:Z

.field protected mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/lenovo/scg/camera/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

.field protected mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

.field private mLongPressed:Z

.field private mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

.field private mMData:[F

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mModeHandler:Landroid/os/Handler;

.field protected mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

.field private mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

.field private mOnKeyDown:Z

.field private mOnMediaSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field private mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

.field protected mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

.field protected mProSettingListPreferenceHelper:Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

.field protected mQuickCapture:Z

.field private mR:[F

.field private final mRawPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRequestStopContinuous:Z

.field private mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

.field private mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

.field public mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

.field private mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

.field private mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

.field private mUpdateSet:I

.field private mValidRequestRenderCount:I

.field protected mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

.field private mZoomIndexForOnKeyDown:I

.field protected mZoomValue:I

.field private parentView:Landroid/view/View;

.field saveQuarePic:Z

.field saveQuarePicFront:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3420
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    .line 8781
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isShowCameraLowPowerTip:Z

    .line 275
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z

    .line 277
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    .line 306
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 310
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    .line 318
    iput v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I

    .line 321
    sget-object v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    .line 323
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRequestStopContinuous:Z

    .line 325
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousPicReturn:Z

    .line 327
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    .line 329
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnableScreenShow:Z

    .line 333
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    .line 335
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    .line 351
    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    .line 399
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isBackKeyLocked:Z

    .line 401
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnKeyDown:Z

    .line 441
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    .line 450
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$1;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    .line 487
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 489
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .line 494
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    .line 501
    iput v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 526
    iput v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    .line 546
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 557
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$2;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 565
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$3;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;

    .line 597
    iput v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    .line 599
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 613
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;

    .line 615
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;

    .line 617
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAutoFocusCallback:Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;

    .line 619
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 621
    new-instance v0, Lcom/lenovo/scg/camera/CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/CameraErrorCallback;-><init>(Lcom/lenovo/scg/camera/CameraModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mErrorCallback:Lcom/lenovo/scg/camera/CameraErrorCallback;

    .line 655
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$MainHandler;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 663
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 667
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mGData:[F

    .line 669
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMData:[F

    .line 671
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mR:[F

    .line 673
    iput v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    .line 676
    iput v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.lenovo.scg.action.DELETE_PICTURE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 685
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$4;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 702
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$5;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnMediaSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    .line 1036
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    .line 2438
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$18;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$18;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    .line 2606
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFocus:Z

    .line 3089
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z

    .line 3251
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFullScreen:Z

    .line 3687
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 4488
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .line 5075
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFirstStartUp:Z

    .line 6533
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$23;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$23;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 6561
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$24;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$24;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFacePositionListener:Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    .line 7864
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$ModeHandler;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    .line 8481
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    .line 8483
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLineLastIsShowed:Z

    .line 8490
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    .line 8668
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePicFront:Z

    .line 8729
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isLastShowed:Z

    .line 8805
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$25;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$25;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 8820
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$26;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$26;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 9069
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->isHaveResatrted:Z

    .line 9176
    const-string/jumbo v0, "on"

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, v1

    .line 619
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->readHardwareAbility(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->initializeCapabilities(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->initializeFocusManager(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initZSDStatus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/lenovo/scg/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnResumeTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->changeSizeIfNeed()V

    return-void
.end method

.method static synthetic access$1802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitializedSuccess:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->doStopContinuous()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/PhotoModule;ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParametersWhenIdle(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->go2WatchBackPage()V

    return-void
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraOpened()V

    return-void
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->animateFlash()V

    return-void
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I

    return v0
.end method

.method static synthetic access$3002(Lcom/lenovo/scg/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I

    return p1
.end method

.method static synthetic access$3008(Lcom/lenovo/scg/camera/PhotoModule;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mValidRequestRenderCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->showLowpowerDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->showTipsToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoAnimDone:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeStarted:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setLocationPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LightRotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/common/ui/DetectDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->onOpenNewCamera(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/camera/PhotoModule;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->syncFlashStatus(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/mode/CaptureListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraSwitched(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lcom/lenovo/scg/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFlashRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$4902(Lcom/lenovo/scg/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/lenovo/scg/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/lenovo/scg/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    return v0
.end method

.method static synthetic access$5300(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnMediaSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousPicReturn:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRequestStopContinuous:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFocus:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/lenovo/scg/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$6000(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z

    return v0
.end method

.method static synthetic access$6002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/lenovo/scg/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/lenovo/scg/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initVideoMode()V

    return-void
.end method

.method static synthetic access$6900(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetCameraSettingSharedPreference()V

    return-void
.end method

.method static synthetic access$7002(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/lenovo/scg/camera/PhotoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->enableScreenShow(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    return-void
.end method

.method static synthetic access$7302(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/lenovo/scg/camera/PhotoModule;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->handleModeMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/lenovo/scg/camera/PhotoModule;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isShowCameraLowPowerTip:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isShowCameraLowPowerTip:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/lenovo/scg/camera/PhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->flashState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/lenovo/scg/camera/PhotoModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->flashState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7800(Lcom/lenovo/scg/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z

    return v0
.end method

.method static synthetic access$7802(Lcom/lenovo/scg/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isUpdateflash:Z

    return p1
.end method

.method static synthetic access$7900(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->updateFlashLowBattery()V

    return-void
.end method

.method static synthetic access$8000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LowpowerRotateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoModule;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 2238
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 2239
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/lenovo/scg/camera/PhotoModule$16;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoModule$16;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2247
    return-void
.end method

.method private animateFlash()V
    .locals 4

    .prologue
    .line 3048
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 3050
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->animateFlash(I)V

    .line 3051
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->enablePreviewThumb(Z)V

    .line 3052
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-static {}, Lcom/lenovo/scg/camera/CaptureAnimManager;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3054
    :cond_0
    return-void
.end method

.method private canContinuousShot()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6188
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 6189
    const-string v3, "canNotContinuousShot mIsImageCaptureIntent"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6269
    :cond_0
    :goto_0
    return v3

    .line 6192
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ShutterButton;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 6193
    const-string v3, "canNotContinuousShot !isEnabled"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6194
    goto :goto_0

    .line 6197
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 6198
    .local v1, "tpm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-eqz v5, :cond_3

    .line 6199
    const-string v3, "canNotContinuousShot !=CALL_STATE_IDLE"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6200
    goto :goto_0

    .line 6202
    :cond_3
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnKeyDown:Z

    if-eqz v5, :cond_4

    .line 6203
    const-string v3, "canNotContinuousShot mOnKeyDown"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6204
    goto :goto_0

    .line 6207
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getCameraState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 6208
    const-string v3, "canNotContinuousShot SNAPSHOT_IN_PROGRESS"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6209
    goto :goto_0

    .line 6212
    :cond_5
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v5, :cond_6

    .line 6213
    const-string v3, "canNotContinuousShot PREVIEW_STOPPED"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6214
    goto :goto_0

    .line 6217
    :cond_6
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 6218
    const-string v3, "canNotContinuousShot SWITCHING_CAMERA"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6219
    goto :goto_0

    .line 6222
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x12c00000

    cmp-long v5, v6, v8

    if-gtz v5, :cond_8

    .line 6223
    const-string v3, "canNotContinuousShot LOW_STORAGE_THRESHOLD"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6224
    goto :goto_0

    .line 6227
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraConfig;->isContinuousShootingSupported()Z

    move-result v5

    if-nez v5, :cond_9

    .line 6228
    const-string v3, "canNotContinuousShot isContinuousShootingSupported"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6229
    goto :goto_0

    .line 6232
    :cond_9
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-eqz v5, :cond_a

    .line 6233
    const-string v3, "canNotContinuousShot BACK_CAMERA"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6234
    goto/16 :goto_0

    .line 6237
    :cond_a
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 6238
    const-string v3, "canNotContinuousShot isVideoRecording"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6239
    goto/16 :goto_0

    .line 6242
    :cond_b
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->ismIsZoomStarted()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6243
    const-string v3, "canNotContinuousShot zoom is started"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6244
    goto/16 :goto_0

    .line 6248
    :cond_c
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isBigWheelShow()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 6249
    const-string v3, "canNotContinuousShot isBigWheelShowed"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6250
    goto/16 :goto_0

    .line 6254
    :cond_d
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 6256
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    .line 6257
    .local v2, "type":I
    if-nez v2, :cond_e

    .line 6258
    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v5, :cond_0

    .line 6259
    const-string v3, "canNotContinuousShot,auto, mode != MODE.SMART"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6260
    goto/16 :goto_0

    .line 6262
    :cond_e
    if-ne v2, v3, :cond_0

    .line 6263
    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v5, :cond_0

    .line 6264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canNotContinuousShot,pro, mode != MODE.SMART && mode != MODE.NORMAL mode=%s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_f

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v3, v4

    .line 6265
    goto/16 :goto_0

    .line 6264
    :cond_f
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 4403
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x12c00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changePicturePreviewSizeIfNeed(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 10
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mSuitePictureSize"    # Landroid/hardware/Camera$Size;
    .param p3, "mSuitePreviewSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 5502
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5503
    .local v2, "mCurrentPictureSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 5505
    .local v3, "mCurrentPreviewSize":Landroid/hardware/Camera$Size;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 5545
    :cond_0
    :goto_0
    return-void

    .line 5509
    :cond_1
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_2

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_3

    .line 5510
    :cond_2
    iget v5, p2, Landroid/hardware/Camera$Size;->width:I

    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 5515
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v5, v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget v6, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v6, v6

    iget v7, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_3

    .line 5516
    invoke-direct {p0, p1, p3}, Lcom/lenovo/scg/camera/PhotoModule;->reStartPreviewWhenPicSizeChanged(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 5521
    :cond_3
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, p3, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    iget v6, p3, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_5

    .line 5522
    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/lenovo/scg/camera/PhotoModule;->reStartPreviewWhenPicSizeChanged(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;)V

    .line 5526
    :cond_5
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v5, :cond_0

    .line 5527
    const/4 v1, 0x0

    .line 5528
    .local v1, "isCanchangeIVC":Z
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v4

    .line 5529
    .local v4, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    .line 5530
    .local v0, "functionType":I
    if-nez v0, :cond_8

    .line 5531
    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v5, v4, :cond_6

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v5, v4, :cond_7

    .line 5532
    :cond_6
    const/4 v1, 0x1

    .line 5539
    :cond_7
    :goto_1
    if-eqz v1, :cond_0

    .line 5540
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->onBackCameraPreviewSizeChanged(Landroid/hardware/Camera$Size;)V

    goto :goto_0

    .line 5534
    :cond_8
    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    .line 5535
    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v5, v4, :cond_9

    sget-object v5, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v5, v4, :cond_7

    .line 5536
    :cond_9
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private changeSizeIfNeed()V
    .locals 6

    .prologue
    .line 893
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 894
    .local v1, "nowMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    if-nez v1, :cond_0

    .line 907
    :goto_0
    return-void

    .line 896
    :cond_0
    sget-object v2, Lcom/lenovo/scg/camera/PhotoModule$27;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 900
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 901
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4908
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 4909
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4910
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 4911
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4921
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->release()V

    .line 4925
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 4926
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 4927
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 4928
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 4929
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onCameraStopped()V

    .line 4931
    :cond_1
    const-string v0, "closeCamera end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4933
    :cond_2
    return-void
.end method

.method private closeCameraForce()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4937
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    .line 4938
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 4939
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 4940
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 4951
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->releaseForce()V

    .line 4954
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 4955
    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 4956
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 4957
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 4958
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onCameraStopped()V

    .line 4960
    :cond_1
    const-string v0, "closeCamera end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4962
    :cond_2
    return-void
.end method

.method private displayDirect([I)V
    .locals 2
    .param p1, "exclude"    # [I

    .prologue
    .line 8349
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->isInGaussBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8362
    :cond_0
    :goto_0
    return-void

    .line 8353
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 8354
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 8356
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-eqz v0, :cond_3

    .line 8357
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->showScreen([I)V

    .line 8359
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    if-eqz v0, :cond_0

    .line 8360
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->displayScreen()V

    goto :goto_0
.end method

.method private displayDirectWhenOnPause([I)V
    .locals 2
    .param p1, "exclude"    # [I

    .prologue
    .line 8365
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 8366
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 8368
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-eqz v0, :cond_1

    .line 8369
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 8370
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->showScreen([I)V

    .line 8375
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    if-eqz v0, :cond_2

    .line 8376
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->displayScreen()V

    .line 8378
    :cond_2
    return-void

    .line 8372
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->showScreenOnPause([I)V

    goto :goto_0
.end method

.method private doStopContinuous()V
    .locals 3

    .prologue
    .line 6479
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    if-nez v2, :cond_1

    .line 6489
    :cond_0
    :goto_0
    return-void

    .line 6480
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    .line 6482
    const-string v2, "PhotoModule.doStopContinuous"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6483
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 6484
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    .line 6485
    .local v0, "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    instance-of v2, v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    if-eqz v2, :cond_0

    .line 6486
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .line 6487
    .local v1, "mode":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->stopShot()V

    goto :goto_0
.end method

.method private enableScreenShow(Z)V
    .locals 0
    .param p1, "bEnable"    # Z

    .prologue
    .line 6325
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnableScreenShow:Z

    .line 6326
    return-void
.end method

.method private excuteSettingonCameraOpened()V
    .locals 1

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateWatchBackSettingStatus()V

    .line 1861
    return-void
.end method

.method private finishContinuousPage()V
    .locals 10

    .prologue
    .line 4074
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v3

    .line 4075
    .local v3, "manager":Lcom/lenovo/scg/gallery3d/app/StateManager;
    const/4 v0, 0x0

    .line 4077
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    const-class v5, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->findActivityInst(Ljava/lang/Class;)Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4078
    if-eqz v0, :cond_0

    .line 4079
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 4081
    :cond_0
    const-class v5, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->findActivityInst(Ljava/lang/Class;)Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4082
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 4083
    check-cast v4, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 4084
    .local v4, "ppage":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getFilmMode()Z

    move-result v1

    .line 4085
    .local v1, "bFilmMode":Z
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v2

    .line 4086
    .local v2, "bFirstIsCamera":Z
    const-string v5, "bFilmMode=%s bFirstIsCamera=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4088
    if-nez v2, :cond_1

    .line 4089
    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->returnToCamera()V

    .line 4094
    .end local v1    # "bFilmMode":Z
    .end local v2    # "bFirstIsCamera":Z
    .end local v4    # "ppage":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_1
    return-void
.end method

.method private getVolumeKeyAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4779
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f0f0012

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4780
    .local v1, "defAction":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_setting_voice_key_key"

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4782
    .local v0, "action":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 4786
    .end local v1    # "defAction":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "defAction":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private go2WatchBackPage()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->gotoGallery(Z)V

    .line 765
    :cond_0
    return-void
.end method

.method private handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask",
            "<*>;",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2353
    .local p1, "task":Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;, "Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask<*>;"
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    if-eqz p2, :cond_0

    .line 2354
    invoke-interface {p2}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleStart()V

    .line 2357
    :cond_0
    if-eqz p1, :cond_1

    .line 2358
    invoke-virtual {p1, p2}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->setHandleCallback(Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 2359
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2363
    :goto_0
    return-void

    .line 2361
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PictureTakenAbstractHandleTask is null!!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;->handleFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleModeMsg(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 8000
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 8001
    .local v18, "subType":I
    packed-switch v18, :pswitch_data_0

    .line 8315
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8004
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->prepareChangeSetting()V

    .line 8005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateAntibanding()V

    .line 8009
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 8010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateImageCaptureIntentFlash()V

    .line 8023
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateMetering()V

    .line 8024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->changeSettingFinish()V

    .line 8027
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onResume()V

    goto :goto_0

    .line 8011
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v23

    if-nez v23, :cond_1

    .line 8014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v6

    .line 8015
    .local v6, "currentMODE":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    if-ne v6, v0, :cond_3

    .line 8016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateFlashByMode()V

    goto :goto_1

    .line 8018
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateFlash()V

    goto :goto_1

    .line 8033
    .end local v6    # "currentMODE":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 8037
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreviewForContinuousShoot()V

    goto :goto_0

    .line 8040
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->stopPreview()V

    goto :goto_0

    .line 8043
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->restartPreview()V

    goto/16 :goto_0

    .line 8046
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v20

    .line 8047
    .local v20, "v":Landroid/view/View;
    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 8048
    const-string/jumbo v23, "show shutter button end"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8053
    .end local v20    # "v":Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v23

    if-nez v23, :cond_6

    move-object/from16 v23, p0

    .line 8055
    check-cast v23, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v23

    const-string v24, "camera_setting_smart_auto_key"

    const-string/jumbo v25, "off"

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 8057
    .local v16, "sVal":Ljava/lang/String;
    const-string/jumbo v23, "on"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 8058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 8071
    .end local v16    # "sVal":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x9

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v23 .. v27}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 8072
    .local v14, "newMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const-wide/16 v24, 0xa

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 8060
    .end local v14    # "newMsg":Landroid/os/Message;
    .restart local v16    # "sVal":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_2

    .line 8063
    .end local v16    # "sVal":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 8064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v8

    check-cast v8, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 8065
    .local v8, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v8}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 8066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_2

    .line 8068
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 8077
    .end local v8    # "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 8078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 8079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v23

    const v24, 0x7f0200ec

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 8080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8088
    :cond_8
    :goto_3
    sget v23, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 8089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v23

    const-string v24, "camera_front_delay"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v25, v0

    const v26, 0x7f0f0024

    invoke-virtual/range {v25 .. v26}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 8091
    .local v11, "m3sDelay":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    const-string/jumbo v24, "on"

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    goto/16 :goto_0

    .line 8081
    .end local v11    # "m3sDelay":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v23

    if-nez v23, :cond_8

    .line 8082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v23

    const v24, 0x7f0200da

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 8083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v23

    const v24, 0x7f0200db

    invoke-virtual/range {v23 .. v24}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 8098
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->isSmartSettingEnable()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 8099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 8103
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 8104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->onResume()V

    goto/16 :goto_0

    .line 8101
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_4

    .line 8115
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 8116
    .local v13, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b

    .line 8117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/PhotoUI;->showModeOrReturnButton()V

    .line 8119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/camera/PhotoUI;->loadModeStatusBar(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 8123
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v22

    .line 8124
    .local v22, "view":Landroid/view/View;
    if-eqz v22, :cond_c

    .line 8125
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 8127
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lenovo/scg/camera/PhotoModule;->loadTakePictureImage(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto/16 :goto_0

    .line 8133
    .end local v13    # "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v22    # "view":Landroid/view/View;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 8134
    .local v5, "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 8135
    .local v7, "exclude":[I
    if-eqz v5, :cond_d

    .line 8136
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 8137
    .local v17, "size":I
    move/from16 v0, v17

    new-array v7, v0, [I

    .line 8138
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v10, v0, :cond_d

    .line 8139
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v7, v10

    .line 8138
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 8143
    .end local v10    # "i":I
    .end local v17    # "size":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/PhotoUI;->clearScreen([I)V

    .line 8144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->clearScreen([I)V

    .line 8145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearScreen([I)V

    .line 8146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 8147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->clearScreen()V

    .line 8149
    :cond_e
    const-string v23, "clear screen end"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8153
    .end local v5    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "exclude":[I
    :pswitch_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mEnableScreenShow:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 8156
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 8157
    .restart local v5    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 8158
    .restart local v7    # "exclude":[I
    if-eqz v5, :cond_f

    .line 8159
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 8160
    .restart local v17    # "size":I
    move/from16 v0, v17

    new-array v7, v0, [I

    .line 8161
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move/from16 v0, v17

    if-ge v10, v0, :cond_f

    .line 8162
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v7, v10

    .line 8161
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 8166
    .end local v10    # "i":I
    .end local v17    # "size":I
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/lenovo/scg/camera/PhotoModule;->displayDirect([I)V

    .line 8168
    const-string v23, "display screen end"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8172
    .end local v5    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "exclude":[I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v23

    if-nez v23, :cond_0

    .line 8175
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 8176
    .local v13, "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-eqz v13, :cond_0

    .line 8177
    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    .line 8178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitMode()V

    .line 8179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    .line 8180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8183
    :cond_10
    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onResume()V

    goto/16 :goto_0

    .end local v13    # "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :pswitch_e
    move-object/from16 v23, p0

    .line 8190
    check-cast v23, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v23

    sput-object v23, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    .line 8191
    const-string v23, "fullscreen stop"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    .line 8193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-interface/range {v23 .. v24}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;->onFilmModeChange(Z)V

    .line 8195
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v19

    .line 8196
    .local v19, "type":I
    if-nez v19, :cond_14

    .line 8197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 8198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->pause()V

    .line 8213
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 8214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    .line 8215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPreviewHide()V

    .line 8219
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v4

    .line 8220
    .local v4, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v0, v4, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object v15, v4

    .line 8221
    check-cast v15, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 8222
    .local v15, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->allowActionBar(Z)V

    goto/16 :goto_0

    .line 8200
    .end local v4    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .end local v15    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_14
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 8203
    const/16 v23, 0x4

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 8204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .line 8205
    .local v9, "functionUI":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v23

    const-string v24, "camera_front_beauty"

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v25

    const v26, 0x7f0f0029

    invoke-virtual/range {v25 .. v26}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 8208
    .local v21, "value":Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    goto :goto_7

    .line 8229
    .end local v9    # "functionUI":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    .end local v19    # "type":I
    .end local v21    # "value":Ljava/lang/String;
    :pswitch_f
    const/16 v23, 0x1

    const-string v24, "MSG_SUBTYPE_FULLSCREEN_START"

    invoke-static/range {v23 .. v24}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 8230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v23

    if-nez v23, :cond_15

    .line 8231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v4

    .line 8232
    .restart local v4    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v0, v4, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    move-object v15, v4

    .line 8233
    check-cast v15, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 8234
    .restart local v15    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v15}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 8235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->readGouTuLineStatus()Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

    move-result-object v12

    .line 8236
    .local v12, "mStatus":Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    invoke-virtual {v12}, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 8237
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLine()V

    .line 8244
    .end local v4    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    .end local v12    # "mStatus":Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    .end local v15    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_15
    const-string v23, "fullscreen start"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 8246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;->onFilmModeChange(Z)V

    .line 8248
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v19

    .line 8249
    .restart local v19    # "type":I
    if-nez v19, :cond_19

    .line 8251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    sget-object v24, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 8252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->resume()V

    .line 8271
    :cond_17
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->showThumbnailIfNeed()V

    .line 8274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 8275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    .line 8276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPreviewShow()V

    .line 8281
    .end local v19    # "type":I
    :cond_18
    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->doStopContinuous()V

    goto/16 :goto_0

    .line 8254
    .restart local v19    # "type":I
    :cond_19
    const/16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1a

    .line 8256
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->showProSmartIfNeed()V

    goto :goto_8

    .line 8258
    :cond_1a
    const/16 v23, 0x4

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_17

    .line 8259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v9

    check-cast v9, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .line 8261
    .restart local v9    # "functionUI":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v23

    const-string v24, "camera_front_beauty"

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v25

    const v26, 0x7f0f0029

    invoke-virtual/range {v25 .. v26}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 8264
    .restart local v21    # "value":Ljava/lang/String;
    const-string/jumbo v23, "off"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 8265
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    goto :goto_8

    .line 8267
    :cond_1b
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enableBeauty(Z)V

    goto/16 :goto_8

    .line 8286
    .end local v9    # "functionUI":Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
    .end local v19    # "type":I
    .end local v21    # "value":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .line 8287
    .restart local v5    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 8288
    .restart local v7    # "exclude":[I
    if-eqz v5, :cond_1c

    .line 8289
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 8290
    .restart local v17    # "size":I
    move/from16 v0, v17

    new-array v7, v0, [I

    .line 8291
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move/from16 v0, v17

    if-ge v10, v0, :cond_1c

    .line 8292
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aput v23, v7, v10

    .line 8291
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 8296
    .end local v10    # "i":I
    .end local v17    # "size":I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/PhotoUI;->clearScreenWithoutAnim([I)V

    .line 8297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->clearScreen([I)V

    .line 8298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearScreen([I)V

    .line 8299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 8300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->clearScreen()V

    .line 8302
    :cond_1d
    const-string v23, "clear screen end  WHITHOUT_ANIM"

    invoke-static/range {v23 .. v23}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8308
    .end local v5    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "exclude":[I
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->updateCaptureAndPreviewSize(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    goto/16 :goto_0

    .line 8001
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_5
        :pswitch_11
        :pswitch_3
        :pswitch_4
        :pswitch_12
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleSomething(Lcom/lenovo/scg/camera/MediaSavePara;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V
    .locals 1
    .param p1, "para"    # Lcom/lenovo/scg/camera/MediaSavePara;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/camera/MediaSavePara;",
            "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2366
    .local p2, "callback":Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;, "Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback<*>;"
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$17;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/camera/PhotoModule$17;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/MediaSavePara;)V

    invoke-direct {p0, v0, p2}, Lcom/lenovo/scg/camera/PhotoModule;->handle(Lcom/lenovo/scg/common/utils/task/PictureTakenAbstractHandleTask;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    .line 2436
    return-void
.end method

.method private initVideoMode()V
    .locals 2

    .prologue
    .line 7727
    const-string v0, "CAM_PhotoModule"

    const-string v1, "enter initVideoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7728
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_INIT:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    .line 7730
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 7731
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 7733
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeInited:Z

    .line 7734
    const-string v0, "CAM_PhotoModule"

    const-string v1, "initVideoMode done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7735
    return-void
.end method

.method private initZSDStatus()V
    .locals 18

    .prologue
    .line 913
    move-object/from16 v3, p0

    check-cast v3, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 914
    .local v3, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v13, :cond_3

    .line 917
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 918
    sget-object v13, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    if-eqz v13, :cond_0

    .line 919
    sget-object v14, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    sget-object v13, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v13, p0

    check-cast v13, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v15, v13}, Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;->onModeChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v10

    .line 922
    .local v10, "status":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v10, v13, :cond_2

    .line 923
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 1033
    .end local v10    # "status":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .end local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_1
    :goto_0
    return-void

    .line 925
    .restart local v10    # "status":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .restart local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_2
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_0

    .line 928
    .end local v10    # "status":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v13

    if-nez v13, :cond_1

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 932
    .local v8, "start":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v12

    .line 933
    .local v12, "type":I
    if-nez v12, :cond_b

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    .line 936
    .local v2, "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-nez v2, :cond_6

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->isSmartSettingEnable()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 938
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 1031
    .end local v2    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_4
    :goto_1
    const-string v13, "CAM_PhotoModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initZSDStatus timeused "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 940
    .restart local v2    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .restart local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_1

    .line 943
    :cond_6
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 945
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v7

    .line 946
    .local v7, "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v7, v13, :cond_8

    .line 947
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 951
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeHandler()Landroid/os/Handler;

    move-result-object v5

    .line 953
    .local v5, "handler":Landroid/os/Handler;
    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 954
    .local v6, "msg":Landroid/os/Message;
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 972
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_7
    :goto_3
    sget-object v13, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    if-eqz v13, :cond_4

    .line 973
    sget-object v13, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v14

    check-cast p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .end local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;->onModeChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 949
    .restart local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_8
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_2

    .line 957
    .end local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_9
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v7

    .line 958
    .restart local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v7, v13, :cond_a

    .line 959
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 964
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeHandler()Landroid/os/Handler;

    move-result-object v5

    .line 966
    .restart local v5    # "handler":Landroid/os/Handler;
    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 967
    .restart local v6    # "msg":Landroid/os/Message;
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 969
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 961
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_4

    .line 976
    .end local v2    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_b
    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 978
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    .line 979
    .restart local v2    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-nez v2, :cond_d

    .line 980
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v13}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 981
    .local v4, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    if-eqz v4, :cond_4

    .line 982
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v11

    .line 983
    .local v11, "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 984
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 988
    :goto_5
    if-nez v11, :cond_4

    .line 989
    const-string v13, "getShortcutView() = null,error ------------------!!!"

    invoke-static {v13}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 986
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->firstEnterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_5

    .line 993
    .end local v4    # "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    .end local v11    # "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :cond_d
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSmart()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 994
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v13

    sget-object v14, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v13, v14, :cond_10

    .line 995
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v7

    .line 996
    .restart local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v7, v13, :cond_f

    .line 997
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 1001
    :goto_6
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onResume()V

    .line 1023
    .end local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_e
    :goto_7
    sget-object v13, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    if-eqz v13, :cond_4

    .line 1024
    sget-object v13, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v14

    check-cast p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .end local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;->onModeChange(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 999
    .restart local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    .restart local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_f
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_6

    .line 1003
    .end local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_7

    .line 1006
    :cond_11
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v7

    .line 1007
    .restart local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v7, v13, :cond_12

    .line 1008
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 1014
    :goto_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1017
    .restart local v5    # "handler":Landroid/os/Handler;
    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1018
    .restart local v6    # "msg":Landroid/os/Message;
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1019
    const/4 v13, 0x1

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1020
    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 1010
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_12
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v3, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_8

    .line 1028
    .end local v2    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local v7    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_13
    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    goto/16 :goto_1
.end method

.method private initializeCapabilities(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "mInitialParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 6071
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 6072
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 6073
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isAutoExposureLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAeLockSupported:Z

    .line 6074
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraUtil;->isAutoWhiteBalanceLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAwbLockSupported:Z

    .line 6075
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinousFocusSupported:Z

    .line 6076
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->initializeControlByIntent()V

    .line 1445
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initializeControlByIntent()V

    .line 1448
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupCaptureParams()V

    .line 1451
    :cond_0
    return-void
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 2181
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2203
    :goto_0
    return-void

    .line 2184
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2185
    .local v0, "recordLocation":Z
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 2187
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 2189
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->initializeFirstTime()V

    .line 2190
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v1

    .line 2193
    .local v1, "s":Lcom/lenovo/scg/camera/MediaSaveService;
    if-eqz v1, :cond_1

    .line 2194
    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/MediaSaveService;->setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V

    .line 2197
    :cond_1
    new-instance v2, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    .line 2199
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 2200
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->addIdleHandler()V

    .line 2202
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->updateStorageSpaceAndHint()V

    goto :goto_0
.end method

.method private initializeFocusManager(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .param p1, "mInitialParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x1

    .line 4351
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 4352
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->removeMessages()V

    .line 4360
    :goto_0
    return-void

    .line 4354
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    aget-object v9, v0, v1

    .line 4355
    .local v9, "info":Landroid/hardware/Camera$CameraInfo;
    iget v0, v9, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v5, :cond_1

    .line 4356
    .local v5, "mirror":Z
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 4357
    .local v2, "defaultFocusModes":[Ljava/lang/String;
    new-instance v0, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;-><init>(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;[Ljava/lang/String;Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/focus/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    goto :goto_0

    .line 4355
    .end local v2    # "defaultFocusModes":[Ljava/lang/String;
    .end local v5    # "mirror":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeSecondTime()V
    .locals 5

    .prologue
    .line 2209
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2210
    .local v1, "recordLocation":Z
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 2211
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v2

    .line 2212
    .local v2, "s":Lcom/lenovo/scg/camera/MediaSaveService;
    if-eqz v2, :cond_0

    .line 2213
    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/MediaSaveService;->setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V

    .line 2215
    :cond_0
    new-instance v3, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    invoke-direct {v3}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    .line 2216
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2217
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/PhotoUI;->initializeSecondTime(Landroid/hardware/Camera$Parameters;)V

    .line 2218
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->keepMediaProviderInstance()V

    .line 2219
    return-void
.end method

.method private isAutoFunction()Z
    .locals 2

    .prologue
    .line 9030
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    .line 9031
    .local v0, "type":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedPlayShutterSound()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3058
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isShutterSoundOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return v3

    .line 3062
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    .line 3063
    .local v1, "m":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v4, :cond_0

    .line 3068
    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v4, :cond_2

    .line 3069
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 3070
    .local v2, "smartMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/SmartMode;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 3071
    .local v0, "innerMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PORTRAIT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LANDSCAPE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REALNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->DYNAMICNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v4, :cond_0

    .line 3077
    .end local v0    # "innerMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v2    # "smartMode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ModeManager;->isNormalContinuous()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3081
    if-nez v1, :cond_3

    .line 3082
    const-string v4, "current mode is null ------------------------no need play shutter sound"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3086
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z
    .locals 1
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 8771
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowCaptureAnim()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8789
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_1

    .line 8802
    :cond_0
    :goto_0
    return v1

    .line 8792
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 8793
    .local v0, "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    if-eqz v0, :cond_0

    .line 8796
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PIP:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->QRCODE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->IMAGECAPTURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIV:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v2, :cond_0

    .line 8802
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 2175
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 5987
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5988
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "should not CLEAR_SCREEN_DELAY on video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5994
    :goto_0
    return-void

    .line 5991
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5992
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5993
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private loadCameraSettingIconListPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3286
    new-instance v4, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;[Landroid/hardware/Camera$CameraInfo;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mProSettingListPreferenceHelper:Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    .line 3287
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mProSettingListPreferenceHelper:Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    const v5, 0x7f070001

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->getPreferenceGroup(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 3289
    const/4 v3, 0x1

    .line 3290
    .local v3, "remove":Z
    if-eqz v3, :cond_0

    .line 3292
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string v5, "camera_setting_time_print_key"

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 3293
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string v5, "camera_setting_square_pic_key"

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 3294
    sget-boolean v4, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-nez v4, :cond_0

    .line 3295
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string v5, "camera_setting_camera_effect_key"

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3305
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/PhotoModule;->updateAutoFocusModeDisplay(Landroid/content/SharedPreferences;)V

    .line 3307
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_capture_way_info_show"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3308
    .local v2, "enable":Z
    invoke-static {}, Lcom/lenovo/scg/camera/way/Prompter;->getInstance()Lcom/lenovo/scg/camera/way/Prompter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/way/Prompter;->setPrompterEnable(Z)V

    .line 3311
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_close_agender_detect_key"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3312
    .local v0, "close":Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/agender/AgenderManager;->setCloseAgenderDetect(Z)V

    .line 3313
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3314
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/lenovo/scg/camera/agender/AgenderManager;->setCloseAgenderDetect(Z)V

    .line 3318
    :cond_1
    invoke-static {v7}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_display_ae_area_key"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3319
    .local v1, "display":Z
    if-eqz v1, :cond_2

    .line 3320
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->creat(Landroid/content/Context;)V

    .line 3326
    :goto_1
    return-void

    .line 3322
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->destroy()V

    goto :goto_1

    .line 3298
    .end local v0    # "close":Z
    .end local v1    # "display":Z
    .end local v2    # "enable":Z
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private loadFrontSupplyImage()V
    .locals 6

    .prologue
    .line 7580
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7582
    const-string/jumbo v2, "panhui"

    const-string v3, "loadFrontSupplyImage, CameraUtil.CameraId = CameraUtil.FRONT_CAMERA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7584
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_front_supply"

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7586
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "panhui"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFrontSupplyImage, value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7588
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7589
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7590
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020102

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7595
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "camera_front_delay"

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f0024

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7597
    .local v0, "m3sDelay":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    .line 7626
    .end local v0    # "m3sDelay":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 7607
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7612
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7613
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020183

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7615
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    const v3, 0x7f020180

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private loadTakePictureImage(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 8
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 7633
    const-string/jumbo v3, "panhui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTakePictureImage, mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7635
    const/4 v1, -0x1

    .line 7636
    .local v1, "resId":I
    const/4 v2, -0x1

    .line 7638
    .local v2, "resIdbg":I
    sget-object v3, Lcom/lenovo/scg/camera/PhotoModule$27;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 7696
    :goto_0
    :pswitch_0
    const-string/jumbo v3, "panhui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7698
    if-eq v1, v6, :cond_1

    if-eq v2, v6, :cond_1

    .line 7699
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7700
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    .line 7716
    :goto_1
    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v3, v7, :cond_0

    .line 7717
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_front_delay"

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v6, 0x7f0f0024

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7719
    .local v0, "m3sDelay":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    .line 7723
    .end local v0    # "m3sDelay":Ljava/lang/String;
    :cond_0
    return-void

    .line 7644
    :pswitch_1
    const v1, 0x7f0200e2

    .line 7645
    const v2, 0x7f0200df

    .line 7646
    goto :goto_0

    .line 7648
    :pswitch_2
    const v1, 0x7f0200f1

    .line 7649
    const v2, 0x7f0200df

    .line 7650
    goto :goto_0

    .line 7652
    :pswitch_3
    const v1, 0x7f0200f4

    .line 7653
    const v2, 0x7f0200df

    .line 7654
    goto :goto_0

    .line 7656
    :pswitch_4
    const v1, 0x7f0200e3

    .line 7657
    const v2, 0x7f0200df

    .line 7658
    goto :goto_0

    .line 7660
    :pswitch_5
    const v1, 0x7f0200fd

    .line 7661
    const v2, 0x7f0200df

    .line 7662
    goto :goto_0

    .line 7664
    :pswitch_6
    const v1, 0x7f0200ee

    .line 7665
    const v2, 0x7f0200df

    .line 7666
    goto :goto_0

    .line 7668
    :pswitch_7
    const v1, 0x7f0200e9

    .line 7669
    const v2, 0x7f0200df

    .line 7670
    goto/16 :goto_0

    .line 7672
    :pswitch_8
    const v1, 0x7f0200dc

    .line 7673
    const v2, 0x7f0200df

    .line 7674
    goto/16 :goto_0

    .line 7676
    :pswitch_9
    const v1, 0x7f0200fa

    .line 7677
    const v2, 0x7f0200df

    .line 7678
    goto/16 :goto_0

    .line 7680
    :pswitch_a
    const v1, 0x7f020106

    .line 7681
    const v2, 0x7f0200df

    .line 7682
    goto/16 :goto_0

    .line 7684
    :pswitch_b
    const v1, 0x7f0200f7

    .line 7685
    const v2, 0x7f0200df

    .line 7686
    goto/16 :goto_0

    .line 7688
    :pswitch_c
    const v1, 0x7f0200d7

    .line 7689
    const v2, 0x7f0200df

    .line 7690
    goto/16 :goto_0

    .line 7703
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 7704
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const v4, 0x7f0200ec

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7706
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 7709
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const v4, 0x7f0200da

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7710
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const v4, 0x7f0200db

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private locationFirstRun()V
    .locals 4

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->isSet(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1481
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 1482
    .local v0, "backCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1487
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f05b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05b4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05b6

    new-instance v3, Lcom/lenovo/scg/camera/PhotoModule$8;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/PhotoModule$8;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05b5

    new-instance v3, Lcom/lenovo/scg/camera/PhotoModule$7;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/camera/PhotoModule$7;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/camera/PhotoModule$6;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PhotoModule$6;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onBackCameraPreviewSizeChanged(Landroid/hardware/Camera$Size;)V
    .locals 4
    .param p1, "newPreviewSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 9089
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 9090
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v1

    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->setPreviewSize(II)Z

    .line 9094
    :cond_0
    invoke-static {p1}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getPreviewRect(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 9095
    .local v0, "offset":I
    invoke-static {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setScreenQrcOffset(I)V

    .line 9098
    return-void
.end method

.method private onCameraOpened()V
    .locals 15

    .prologue
    .line 1517
    const-string v10, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCameraOpened on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/PhotoUI;->getRootView()Landroid/view/View;

    move-result-object v6

    .line 1521
    .local v6, "root":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1522
    .local v9, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1523
    .local v0, "height":I
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v10, v9, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setPreviewSize(II)V

    .line 1524
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 1525
    .local v4, "mParameters":Landroid/hardware/Camera$Parameters;
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v10, v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1527
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v10}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v10

    rem-int/lit16 v10, v10, 0xb4

    if-nez v10, :cond_c

    .line 1528
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v10, v10, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v10, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v10, v9, v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 1533
    :goto_0
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v10, v6}, Lcom/lenovo/scg/camera/CameraActivity;->setSingleTapUpListener(Landroid/view/View;)V

    .line 1534
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/PhotoModule;->onOpenNewCamera(Landroid/hardware/Camera$Parameters;)V

    .line 1535
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v10

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/camera/PhotoModule;->onFullScreenChanged(Z)V

    .line 1538
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$9;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$9;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1554
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-nez v10, :cond_0

    .line 1555
    new-instance v10, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-direct {v10}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 1558
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 1559
    .local v8, "size":Landroid/hardware/Camera$Size;
    const-string v11, "initVariable----PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v8, :cond_d

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v10, p0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->init(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 1562
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/CameraScreenNail;->setCameraMainHandler(Landroid/os/Handler;)V

    .line 1565
    iget-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v10, :cond_1

    .line 1566
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v12, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    iget-object v13, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPara(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V

    .line 1567
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    .line 1568
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    iget v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->switch2Camera(I)V

    .line 1569
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    const/4 v11, 0x1

    const/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZI)V

    .line 1574
    :cond_1
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 1575
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->excuteSettingonCameraOpened()V

    .line 1578
    :cond_2
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->excuteUpdateScreenBrightness()V

    .line 1583
    const-string v10, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCameraOpened && mParameters = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-eqz v4, :cond_3

    .line 1585
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 1586
    .local v7, "s":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPreviewSize(II)V

    .line 1591
    .end local v7    # "s":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_camera_devices_operate_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->isOn:Z

    .line 1596
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_art_hdr_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    .line 1598
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_super_night_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    .line 1601
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_real_night_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    .line 1604
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    const-string v11, "developer_setting_look_back_key"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1605
    .local v3, "lookbackValue":I
    if-nez v3, :cond_e

    .line 1607
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 1613
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1614
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v12, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterVideoMode(Landroid/content/Context;Lcom/lenovo/scg/camera/setting/CameraSettingController;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 1616
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v11, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_INIT:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    .line 1617
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v10, :cond_5

    .line 1618
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 1621
    :cond_5
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/ModeManager;->getTempVideoNameOnIntent()Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    move-result-object v10

    if-nez v10, :cond_6

    .line 1622
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/PhotoUI;->startVideoIntentUI()V

    .line 1627
    :cond_6
    iget-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1628
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->showDetectDialog()V

    .line 1637
    :cond_7
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "camera_setting_picture_preview_size_key_for_mode_set"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1660
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    const/16 v12, 0x14

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1661
    .local v5, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1664
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "camera_setting_user_open_gps"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    .line 1666
    .local v2, "isUserHasSetted":Z
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v10}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v1

    .line 1667
    .local v1, "isRow":Z
    const-string v10, "CAM_PhotoModule"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onCameraOpened(): isRow = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    if-nez v2, :cond_8

    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isGpsOpened()Z

    move-result v10

    if-nez v10, :cond_8

    if-nez v1, :cond_8

    .line 1669
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/camera/PhotoModule;->openGPSDialog(Landroid/app/Activity;)V

    .line 1673
    :cond_8
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v10

    if-nez v10, :cond_f

    .line 1674
    const/4 v10, 0x1

    const-string/jumbo v11, "onCameraOpened_001"

    invoke-static {v10, v11}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1675
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeSquareMaskView()V

    .line 1682
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v10

    if-nez v10, :cond_a

    move-object v10, p0

    .line 1683
    check-cast v10, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->startSmartAnimation()V

    .line 1686
    :cond_a
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    .line 1687
    const/16 v10, 0x10e

    iput v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    .line 1688
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/PhotoUI;->setOrientation(I)V

    .line 1689
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    iget v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->setOrientation(I)V

    .line 1693
    :cond_b
    return-void

    .line 1530
    .end local v1    # "isRow":Z
    .end local v2    # "isUserHasSetted":Z
    .end local v3    # "lookbackValue":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_c
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v10, v10, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v10, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v10, v0, v9}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto/16 :goto_0

    .line 1559
    .restart local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1608
    .restart local v3    # "lookbackValue":I
    :cond_e
    const/4 v10, 0x1

    if-ne v3, v10, :cond_4

    .line 1610
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    goto/16 :goto_2

    .line 1677
    .restart local v1    # "isRow":Z
    .restart local v2    # "isUserHasSetted":Z
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_f
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1678
    const/4 v10, 0x1

    const-string/jumbo v11, "onCameraOpened_Third_Camera"

    invoke-static {v10, v11}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1679
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    goto :goto_3
.end method

.method private onCameraShutterClick()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3691
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onCameraShutterClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    const-string v2, "enter PhotoModule.onCameraShutterClick"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3697
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3698
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3699
    const-string v2, "isVideoIntent,onCameraShutterClick will return,not snap------------------!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3819
    :goto_0
    return-void

    .line 3705
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startTakePic()V

    .line 3707
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v2, v3, :cond_1

    .line 3708
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3709
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3710
    const-string v2, "mEnterStopContinuousShotProcess=true,onCameraShutterClick will return,not snap------------------!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 3715
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordEnterOnCameraShutterClick()V

    .line 3716
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v2, :cond_3

    .line 3717
    :cond_2
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3718
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraShutterClick:mPaused:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":collapseCameraControls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":mCameraState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   will return,not snap------------------!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3724
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x12c00000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    .line 3725
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v2, :cond_4

    .line 3728
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 3729
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    :cond_4
    move-object v2, p0

    .line 3731
    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 3732
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v2, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v4

    invoke-direct {v2, v3, v0, v4, v7}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 3733
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0115

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3734
    .local v1, "sMsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 3736
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3737
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3738
    const-string v2, "Not enough space or storage not ready,onCameraShutterClick will return,not snap------------------!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3749
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "sMsg":Ljava/lang/String;
    :cond_5
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick: mCameraState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/PhotoUI;->showOrHideWhiteView(Z)V

    .line 3751
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSceneMode:Ljava/lang/String;

    const-string v3, "hdr"

    if-ne v2, v3, :cond_6

    .line 3753
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 3760
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v2, v3, :cond_8

    .line 3762
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onCameraShutterClick, mSnapshotOnIdle=true, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3765
    const-string/jumbo v2, "will cancel capture, CameraState=%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3766
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3767
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    goto/16 :goto_0

    .line 3787
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onShutterButtonClick()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3788
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onCameraShutterClick return @ WayManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    const-string v2, "WayManager handle,onCameraShutterClick will return,not snap------------------!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3798
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->onShutterButtonClick()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3800
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onCameraShutterClick return @ ModeManager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3802
    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3804
    const-string v2, "mModeManager != null && mModeManager.onShutterButtonClick(),onCameraShutterClick will return,not snap------------------!"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3813
    :cond_a
    const-string/jumbo v2, "will call mFocusManager.doSnap()"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3815
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3816
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->doSnap()V

    .line 3818
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    goto/16 :goto_0
.end method

.method private onCameraSwitched(I)V
    .locals 0
    .param p1, "newCameraID"    # I

    .prologue
    .line 2099
    if-nez p1, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetSurfaceTextureRatio()V

    .line 2102
    :cond_0
    return-void
.end method

.method private onClickVolumeChangeFunction()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 9036
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    if-nez v1, :cond_0

    .line 9065
    :goto_0
    return-void

    .line 9039
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    .line 9040
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 9041
    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    goto :goto_0

    .line 9044
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->isInGaussBlur()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->isLe3dFrameVisible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9045
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    goto :goto_0

    .line 9047
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->isInGaussBlur()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->isLe3dFrameVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9048
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->onKeyCodeVolumeClick()V

    goto :goto_0

    .line 9051
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_5

    .line 9052
    new-instance v0, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    .line 9053
    .local v0, "rotateTips":Lcom/lenovo/scg/common/ui/RotateTips;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    .line 9054
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    goto/16 :goto_0

    .line 9057
    .end local v0    # "rotateTips":Lcom/lenovo/scg/common/ui/RotateTips;
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v1, :cond_6

    .line 9058
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->onPause()V

    .line 9060
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setFocusAndFaceCanVisible(Z)V

    .line 9061
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->clearScreenExceptWithoutAnimByHandler([I)V

    .line 9062
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 9063
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 9064
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->changeFunction()V

    goto/16 :goto_0
.end method

.method private onOpenNewCamera(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2115
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2117
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->loadCameraSettingIconListPreferences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initPreferences()V

    .line 2125
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2126
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isShutterSoundOn()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->enableShutterSound(Z)V

    .line 2130
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLine()V

    .line 2135
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isWaterLevelShowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2136
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLevel()V

    .line 2142
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2143
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2144
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 2146
    return-void

    .line 2118
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2132
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLine()V

    goto :goto_1

    .line 2138
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLevel()V

    goto :goto_2
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    .line 1455
    const-string/jumbo v0, "preview started"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 1457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 1458
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startFaceDetection()V

    .line 1464
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->locationFirstRun()V

    .line 1465
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setPreviewFrameLayoutSize()V

    .line 1469
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 1471
    return-void
.end method

.method private onVideoShutterClick()V
    .locals 13

    .prologue
    const v12, 0x7f10028e

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3581
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoStartTime onVideoShutterClick() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->OnStartVideoClick()V

    .line 3584
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeInited:Z

    .line 3585
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoAnimDone:Z

    .line 3586
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeStarted:Z

    .line 3589
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x12c00000

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 3590
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not enough space or storage not ready. remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3593
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v5, :cond_0

    .line 3594
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v5}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 3595
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    :cond_0
    move-object v5, p0

    .line 3597
    check-cast v5, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 3598
    .local v1, "parent":Landroid/view/ViewGroup;
    new-instance v5, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v7

    invoke-direct {v5, v6, v1, v7, v11}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 3600
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0115

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3602
    .local v3, "sMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 3604
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 3605
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnCameraShutterClick()V

    .line 3606
    const-string v5, "Not enough space or storage not ready,onCameraShutterClick will return,not snap------------------!"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3668
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "sMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 3610
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v5, :cond_2

    .line 3611
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 3614
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v2

    .line 3616
    .local v2, "reverse":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3618
    const-string v5, "CAM_PhotoModule"

    const-string v6, "isVideoIntent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3619
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->onVideoMode(Z)V

    .line 3621
    if-nez v2, :cond_3

    .line 3622
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->onVideoIntentRecording()V

    .line 3667
    :cond_3
    :goto_1
    const-string v5, "CAM_PhotoModule"

    const-string v6, "VideoStartTime onVideoShutterClick done"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3626
    :cond_4
    if-nez v2, :cond_6

    .line 3628
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v12}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3630
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v12}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3634
    :cond_5
    const/4 v5, 0x4

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 3638
    .local v0, "clearExcludeIds":[I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->clearScreenExceptByHandler([I)V

    .line 3640
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v5, v6, v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterVideoMode(Landroid/content/Context;Lcom/lenovo/scg/camera/setting/CameraSettingController;)Lcom/lenovo/scg/camera/mode/CaptureMode;

    .line 3642
    iput-boolean v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    .line 3647
    .end local v0    # "clearExcludeIds":[I
    :goto_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/PhotoUI;->startVideoShutterAnimation(Z)V

    .line 3649
    if-nez v2, :cond_3

    .line 3650
    new-instance v4, Lcom/lenovo/scg/camera/PhotoModule$19;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/PhotoModule$19;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 3663
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 3645
    .end local v4    # "thread":Ljava/lang/Thread;
    :cond_6
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    goto :goto_2

    .line 3634
    :array_0
    .array-data 4
        0x7f10015f
        0x7f1002a3
        0x7f1002a4
        0x7f100764
    .end array-data
.end method

.method private reStartPreviewWhenPicSizeChanged(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;)V
    .locals 3
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "mPreviewSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 5557
    :try_start_0
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5562
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 5564
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 5565
    const-string v1, "00000+++00000reStartPreviewWhenPicSizeChanged"

    const-string v2, " restart preview 00000--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5566
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    .line 5567
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->onPreviewRestarted(Z)V

    .line 5581
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetSurfaceTextureRatio()V

    .line 5582
    return-void

    .line 5558
    :catch_0
    move-exception v0

    .line 5559
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize error in reStartPreviewWhenPicSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5560
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5569
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "00000+++00000reStartPreviewWhenPicSizeChanged"

    const-string v2, " restart preview 111111--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setParameters reStartPreviewWhenPicSizeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5572
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 5576
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 5577
    const-string v1, "00000+++00000reStartPreviewWhenPicSizeChanged"

    const-string v2, " restart preview 2222222--------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    const/4 v1, 0x0

    const-string v2, "00000+++00000reStartPreviewWhenPicSizeChanged"

    invoke-static {v1, v2}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 5579
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1
.end method

.method private reStoreExposureIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 8575
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v1, :cond_0

    .line 8576
    if-nez p2, :cond_1

    .line 8585
    :cond_0
    :goto_0
    return-object p2

    .line 8579
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    .line 8580
    .local v0, "mCurrentExposure":I
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8581
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method

.method private reStoreGouTuLineIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 8705
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->readGouTuLineStatus()Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

    move-result-object v0

    .line 8706
    .local v0, "mStatus":Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->isShowed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8708
    const-string v1, "Line______________"

    const-string v2, "in set want to off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8709
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8711
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v2, "camera_setting_goutu_line_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8712
    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mGouTuLineStatus:Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

    .line 8713
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLineLastIsShowed:Z

    .line 8714
    const-string v1, "Line______________"

    const-string v2, "in set off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8727
    :cond_0
    :goto_0
    return-void

    .line 8718
    :cond_1
    const-string v1, "Line______________"

    const-string v2, "in set want to on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8719
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLineLastIsShowed:Z

    if-eqz v1, :cond_0

    .line 8720
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8721
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v2, "camera_setting_goutu_line_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mGouTuLineStatus:Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/SettingStatusReader$GouTuLineStatus;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8722
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLineLastIsShowed:Z

    .line 8723
    const-string v1, "Line______________"

    const-string v2, "in set on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reStoreISOIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 8550
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v1, :cond_0

    .line 8551
    if-nez p2, :cond_1

    .line 8563
    :cond_0
    :goto_0
    return-object p2

    .line 8554
    :cond_1
    const-string v1, "iso"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8555
    .local v0, "mCurrentISO":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->VIDEO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA360:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->LONG_EXPOSURE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REWIND:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->TUTORIALS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v1, :cond_0

    .line 8558
    :cond_2
    const-string v1, "iso"

    const-string v2, "auto"

    invoke-virtual {p2, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reStoreShutterSpeedIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x1

    .line 8589
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v1, :cond_1

    .line 8609
    :cond_0
    :goto_0
    return-object p2

    .line 8592
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v1, :cond_0

    .line 8593
    if-eqz p2, :cond_0

    .line 8597
    const-string v1, "force-aec-enable"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8598
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reStoreShutterSpeedIfNeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 8600
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8601
    const-string/jumbo v1, "reStoreShutterSpeedIfNeed: reset"

    invoke-static {v3, v1}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 8602
    const-string v1, "force-aec-enable"

    const-string v2, "0"

    invoke-virtual {p2, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 8603
    const-string v1, "aec-force-exp"

    const-string v2, "0"

    invoke-virtual {p2, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reStoreSquarePicIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v2, 0x1

    .line 8644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode_:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 8647
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_1

    .line 8666
    :cond_0
    :goto_0
    return-void

    .line 8651
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_2

    .line 8653
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    .line 8654
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8662
    :cond_2
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    if-eqz v0, :cond_0

    .line 8663
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    goto :goto_0
.end method

.method private reStoreSquarePicIfNeedFrontCamera(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v1, 0x1

    .line 8671
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_1

    .line 8694
    :cond_0
    :goto_0
    return-void

    .line 8675
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePicFront:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_0

    .line 8679
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_3

    .line 8681
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePicFront:Z

    .line 8682
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8690
    :cond_3
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v0, :cond_0

    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePicFront:Z

    if-eqz v0, :cond_0

    .line 8691
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_square_pic_key"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePicFront:Z

    goto :goto_0
.end method

.method private reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 8740
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-eqz v1, :cond_0

    .line 8741
    const-string v1, "LianPai"

    const-string v2, "000000000000000"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8744
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isWaterLevelShowed()Z

    move-result v0

    .line 8746
    .local v0, "isShowed":Z
    if-eqz v0, :cond_2

    .line 8747
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8748
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v2, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8749
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isLastShowed:Z

    .line 8759
    :cond_1
    :goto_0
    return-void

    .line 8752
    :cond_2
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isLastShowed:Z

    if-eqz v1, :cond_1

    .line 8753
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8754
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v2, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v3, "on"

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 8755
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isLastShowed:Z

    goto :goto_0
.end method

.method private reStoreWhiteBlanceIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 8621
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v1, :cond_0

    .line 8622
    if-nez p2, :cond_1

    .line 8632
    :cond_0
    :goto_0
    return-object p2

    .line 8625
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 8626
    .local v0, "mCurrentWhiteBlance":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->isNotNormalMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8627
    const-string v1, "auto"

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readHardwareAbility(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1048
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    if-eqz v2, :cond_4

    .line 1050
    const-string v2, "lenovo_hardware_ability"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "hardwareability":Ljava/lang/String;
    const-string v2, "anql"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hardwareability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/CameraConfig;->readHardwareAbility(Ljava/lang/String;)V

    .line 1055
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->getZSDEnabled(Z)V

    .line 1058
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_1

    .line 1059
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraConfig;->setZSDEnabled(Z)V

    .line 1064
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->checkLeSCFVersion(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)I

    move-result v1

    .line 1065
    .local v1, "result":I
    if-nez v1, :cond_3

    .line 1066
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1067
    const-string v2, "CAM_PhotoModule"

    const-string v3, "low app version"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .end local v0    # "hardwareability":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_2
    :goto_0
    return-void

    .line 1068
    .restart local v0    # "hardwareability":Ljava/lang/String;
    .restart local v1    # "result":I
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1070
    const-string v2, "CAM_PhotoModule"

    const-string v3, "low system version"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    .end local v0    # "hardwareability":Ljava/lang/String;
    .end local v1    # "result":I
    :cond_4
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->getZSDEnabled(Z)V

    goto :goto_0
.end method

.method private readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 9214
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetCameraSettingSharedPreference()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 6026
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6027
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6028
    iput v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    .line 6029
    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParametersWhenIdle(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 6034
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 6035
    .local v1, "wb":Ljava/lang/String;
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset camera settings wb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6037
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 6038
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 6042
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-static {v2, v3, v0}, Lcom/lenovo/scg/camera/setting/SettingUtils;->resetPreferences(Landroid/content/Context;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 6044
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->saveQuarePic:Z

    .line 6048
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisabled:Z

    if-nez v2, :cond_3

    .line 6049
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initPreferences()V

    .line 6050
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->restoreCameraID()V

    .line 6051
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraSharedPreferenceChanged()V

    .line 6053
    :cond_3
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 5978
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5979
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "should not CLEAR_SCREEN_DELAY on video recording"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    :goto_0
    return-void

    .line 5982
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5983
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private setAutoExposureLockIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5265
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 5266
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getAeAwbLock()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 5268
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5272
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 5273
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getAeAwbLock()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 5275
    :cond_0
    return-void
.end method

.method private setCameraParametersWhenIdle(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I
    .param p2, "triggerSource"    # Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 5784
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mUpdateSet:I

    .line 5785
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 5788
    iput v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mUpdateSet:I

    .line 5798
    :cond_0
    :goto_0
    return-void

    .line 5790
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5791
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mUpdateSet:I

    invoke-virtual {p0, v0, p2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 5792
    iput v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 5794
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5795
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraPreviewTexture()V
    .locals 6

    .prologue
    .line 5082
    const/4 v4, -0x8

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5083
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v4, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 5084
    .local v0, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoUI;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 5085
    const-string/jumbo v4, "setCameraPreviewTexture:getSurfaceTexture"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5086
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 5087
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 5088
    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSize(II)V

    .line 5092
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 5093
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 5094
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->acquireSurfaceTexture()V

    .line 5095
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 5096
    .local v3, "t":Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5097
    const-string/jumbo v4, "setCameraPreviewTexture:return."

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5111
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "t":Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    :cond_0
    :goto_1
    return-void

    .line 5090
    .restart local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v4, v5}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 5100
    .restart local v3    # "t":Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/PhotoUI;->setSurfaceTexture(Ljava/lang/Object;)V

    .line 5105
    .end local v1    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "t":Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5106
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoUI;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v2

    .line 5107
    .local v2, "st":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCameraPreviewTexture:st:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5108
    if-eqz v2, :cond_0

    .line 5109
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    .end local v2    # "st":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 5102
    :cond_3
    const-string/jumbo v4, "setCameraPreviewTexture:updatePreviewSize"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5103
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updatePreviewSize(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    goto :goto_2
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 4966
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayRotation:I

    .line 4967
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayRotation:I

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayOrientation:I

    .line 4968
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraUtil;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisplayOrientation:I

    .line 4969
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->setDisplayOrientation(I)V

    .line 4970
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 4971
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 4974
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 4975
    return-void
.end method

.method private setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5280
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5281
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 5283
    :cond_0
    return-void
.end method

.method private setIsVideoIntent()V
    .locals 2

    .prologue
    .line 7779
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7780
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoIntent:Z

    .line 7781
    return-void

    .line 7780
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLocationPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_location_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1513
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraSharedPreferenceChanged()V

    .line 1514
    return-void
.end method

.method private setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 5288
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteringAreasIfSupported, mMeteringAreaSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 5291
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 5293
    :cond_0
    return-void
.end method

.method public static setOnModeChangeListener(Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;)V
    .locals 0
    .param p0, "l"    # Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    .prologue
    .line 8784
    sput-object p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    .line 8785
    return-void
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 5822
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 5823
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 5824
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 5825
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 5827
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 4979
    const-string/jumbo v1, "will call setupPreview"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4981
    :try_start_0
    const-string/jumbo v1, "startPreview"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 4982
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startPreview()V

    .line 4983
    const-string/jumbo v1, "startPreview"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 4984
    const-string/jumbo v1, "setCameraState"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 4985
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 4986
    const-string/jumbo v1, "setCameraState"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 4987
    const-string/jumbo v1, "startFaceDetection"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 4988
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startFaceDetection()V

    .line 4989
    const-string/jumbo v1, "startFaceDetection"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4994
    :goto_0
    return-void

    .line 4990
    :catch_0
    move-exception v0

    .line 4991
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "setupPreview error: "

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setupPreviewForContinuousShoot()V
    .locals 1

    .prologue
    .line 5009
    const-string/jumbo v0, "will call setupPreviewForContinuousShoot"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5010
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startPreview()V

    .line 5011
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 5014
    return-void
.end method

.method private showDetectDialog()V
    .locals 14

    .prologue
    .line 1748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1749
    .local v6, "time1":J
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1750
    .local v4, "modelType":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 1751
    .local v1, "context":Landroid/content/Context;
    const-string v10, "lnliu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "modelType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const-string v10, "Lenovo"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1753
    const-string/jumbo v10, "ro.product.cpu.abi"

    const-string v11, ""

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/util/SysProp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1754
    .local v2, "cpuApi":Ljava/lang/String;
    const-string v10, "lnliu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cpuApi = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string v10, "arm"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1757
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.lenovo.scg"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1760
    .local v5, "pInfo":Landroid/content/pm/PackageInfo;
    const/16 v10, 0x9

    iput v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1762
    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v10, :cond_3

    .line 1763
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0a56

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1764
    .local v0, "apkNativeCode":Ljava/lang/String;
    const-string v10, "lnliu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apkNativeCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1767
    .local v8, "time2":J
    const-string v10, "lnliu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "time2-time1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const-string/jumbo v10, "x86"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1771
    new-instance v10, Lcom/lenovo/scg/common/ui/DetectDialog;

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->ARM:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v10, v1, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 1772
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$10;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$10;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1850
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v2    # "cpuApi":Ljava/lang/String;
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "time2":J
    :cond_0
    :goto_0
    return-void

    .line 1779
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    .restart local v2    # "cpuApi":Ljava/lang/String;
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "time2":J
    :cond_1
    const-string v10, "arm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1780
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0, v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->isProProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1781
    new-instance v10, Lcom/lenovo/scg/common/ui/DetectDialog;

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v10, v1, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 1782
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$11;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$11;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1789
    :cond_2
    const-string v10, "lnliu"

    const-string v11, "arm - arm , success!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1797
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "time2":J
    :catch_0
    move-exception v3

    .line 1799
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1794
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    const-string v10, "lnliu"

    const-string v11, "local runned, nothing to do!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1802
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string/jumbo v10, "x86"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1804
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.lenovo.scg"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1805
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    iget v10, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eqz v10, :cond_7

    .line 1806
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0a56

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    const-string v10, "lnliu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "apkNativeCode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string v10, "arm"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1809
    new-instance v10, Lcom/lenovo/scg/common/ui/DetectDialog;

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->X86:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v10, v1, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 1810
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$12;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$12;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1835
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v3

    .line 1837
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1817
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "apkNativeCode":Ljava/lang/String;
    .restart local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :try_start_3
    const-string/jumbo v10, "x86"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1818
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/CameraConfig;->isProVersion()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v0, v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->isProProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1819
    new-instance v10, Lcom/lenovo/scg/common/ui/DetectDialog;

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->WRONGVER:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v10, v1, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 1820
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$13;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$13;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1827
    :cond_6
    const-string v10, "lnliu"

    const-string/jumbo v11, "x86 - x86, success!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1832
    .end local v0    # "apkNativeCode":Ljava/lang/String;
    :cond_7
    const-string v10, "lnliu"

    const-string v11, "local runned , nothing to do!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1840
    .end local v2    # "cpuApi":Ljava/lang/String;
    .end local v5    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_8
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/common/ui/DetectDialog;->getBooleanFromPreferences(Ljava/lang/Boolean;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 1842
    new-instance v10, Lcom/lenovo/scg/common/ui/DetectDialog;

    sget-object v11, Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;->UNLENOVO:Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;

    invoke-direct {v10, v1, v11}, Lcom/lenovo/scg/common/ui/DetectDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/common/ui/DetectDialog$PhoneType;)V

    iput-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    .line 1843
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;

    new-instance v11, Lcom/lenovo/scg/camera/PhotoModule$14;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/camera/PhotoModule$14;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/lenovo/scg/common/ui/DetectDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private showLowpowerDialog()V
    .locals 4

    .prologue
    .line 8934
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 8935
    .local v0, "mPositiveOnClickListener":Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    if-nez v1, :cond_0

    .line 8936
    new-instance v1, Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    .line 8939
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->showAlertDialog()V

    .line 8940
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->setOrientation(IZ)V

    .line 8941
    return-void
.end method

.method private showOrHideStorageImage()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x6400000

    .line 8969
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStorageSpace()J

    move-result-wide v0

    .line 8970
    .local v0, "storageSpace":J
    const-string v2, "jiaxiaowei"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storageSpace:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8971
    const-string v2, "jiaxiaowei"

    const-string v3, "LOW_STORAGE_SPACE:314572800"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8972
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    const-wide/32 v2, 0x12c00000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 8973
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->showLowStorageImg()V

    .line 8980
    :goto_0
    return-void

    .line 8974
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 8975
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->showSeriousLowStorageImg()V

    goto :goto_0

    .line 8977
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->hideSeriousLowStorageImg()V

    .line 8978
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->hideLowStorageImg()V

    goto :goto_0
.end method

.method private showTapToFocusToast()V
    .locals 0

    .prologue
    .line 6068
    return-void
.end method

.method private showThumbnailIfNeed()V
    .locals 2

    .prologue
    .line 8342
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    .line 8343
    .local v0, "image":Lcom/lenovo/scg/camera/ui/RotateImageView;
    if-nez v0, :cond_0

    .line 8345
    :goto_0
    return-void

    .line 8344
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getLastThumbnailUncached()V

    goto :goto_0
.end method

.method private showTips(Ljava/lang/String;I)V
    .locals 5
    .param p1, "tips"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 9219
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v1, :cond_0

    .line 9220
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 9221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    :cond_0
    move-object v1, p0

    .line 9223
    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 9224
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 9225
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;II)V

    .line 9226
    return-void
.end method

.method private showTipsToast(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 8954
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    if-eqz v1, :cond_0

    .line 8955
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/ui/RotateTips;->destroyTips()V

    .line 8956
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    :cond_0
    move-object v1, p0

    .line 8958
    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 8959
    .local v0, "parent":Landroid/view/ViewGroup;
    new-instance v1, Lcom/lenovo/scg/common/ui/RotateTips;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/lenovo/scg/common/ui/RotateTips;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IZ)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    .line 8961
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    sget-object v2, Lcom/lenovo/scg/common/ui/RotateTips$TipsType;->BOTTOM:Lcom/lenovo/scg/common/ui/RotateTips$TipsType;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/ui/RotateTips;->setType(Lcom/lenovo/scg/common/ui/RotateTips$TipsType;I)V

    .line 8962
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRotateTips:Lcom/lenovo/scg/common/ui/RotateTips;

    const/16 v2, 0x2710

    invoke-virtual {v1, p1, v2}, Lcom/lenovo/scg/common/ui/RotateTips;->showTips(Ljava/lang/String;I)V

    .line 8963
    return-void
.end method

.method private startContinuousShooting()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6494
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->lockBackKey()V

    .line 6496
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    if-eqz v2, :cond_0

    .line 6497
    const-string v1, "mContinuousShotStarted = true,will return,not startContinuousShooting"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6524
    :goto_0
    return v0

    .line 6500
    :cond_0
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    .line 6502
    const-string/jumbo v2, "startContinuousShooting"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6505
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->stopFaceDetection()V

    .line 6506
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 6508
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 6511
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v2, :cond_1

    .line 6512
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 6516
    :cond_1
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 6518
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousPicReturn:Z

    .line 6519
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRequestStopContinuous:Z

    .line 6522
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    .line 6524
    goto :goto_0
.end method

.method private startPreview()V
    .locals 6

    .prologue
    .line 5115
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "startPreview begin"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5117
    .local v0, "start":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mErrorCallback:Lcom/lenovo/scg/camera/CameraErrorCallback;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 5137
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setDisplayOrientation()V

    .line 5139
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-nez v2, :cond_0

    .line 5145
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 5149
    :cond_0
    const/4 v2, -0x1

    sget-object v3, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->START_PREVIEW:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 5152
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_3

    .line 5156
    const-string/jumbo v2, "setCameraPreviewTexture directly"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5157
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraPreviewTexture()V

    .line 5172
    :goto_0
    const-string/jumbo v2, "will call startPreview"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5173
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 5174
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->loadMeteringLogicEnable()V

    .line 5177
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-eqz v2, :cond_1

    .line 5178
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 5179
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->restore()V

    .line 5182
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    if-eqz v2, :cond_2

    .line 5183
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5185
    :cond_2
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPreview timeused "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    return-void

    .line 5168
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 5169
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private switch2Function()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1414
    new-instance v1, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    invoke-direct {v1}, Lcom/lenovo/scg/camera/function/FunctionUIPara;-><init>()V

    .line 1415
    .local v1, "para":Lcom/lenovo/scg/camera/function/FunctionUIPara;
    iput-object p0, v1, Lcom/lenovo/scg/camera/function/FunctionUIPara;->module:Lcom/lenovo/scg/camera/PhotoModule;

    .line 1416
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_1

    .line 1417
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1419
    const-string v3, "CAM_PhotoModule"

    const-string v4, "Video intent Switch2Function mIsVideoCaptureIntent : 3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v3

    if-eq v5, v3, :cond_0

    .line 1422
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3, v5, v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    goto :goto_0

    .line 1426
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1427
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 1428
    .local v0, "currentFunction":I
    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1429
    const/4 v0, 0x4

    .line 1436
    :cond_3
    :goto_1
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch2Function auto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    goto :goto_0

    .line 1431
    :cond_4
    if-eqz v2, :cond_3

    .line 1432
    const-string v3, "AUTO_PRO_FUNCTION"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method private switch2RightMode()V
    .locals 9

    .prologue
    .line 8381
    new-instance v4, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    invoke-direct {v4}, Lcom/lenovo/scg/camera/function/FunctionUIPara;-><init>()V

    .line 8382
    .local v4, "para":Lcom/lenovo/scg/camera/function/FunctionUIPara;
    iput-object p0, v4, Lcom/lenovo/scg/camera/function/FunctionUIPara;->module:Lcom/lenovo/scg/camera/PhotoModule;

    .line 8383
    const-string/jumbo v6, "switchFunctionBack"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 8384
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switchFunctionBack(Ljava/lang/Object;)V

    .line 8385
    const-string/jumbo v6, "switchFunctionBack"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 8387
    const-string v6, "enterMode"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 8388
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v6

    if-nez v6, :cond_2

    move-object v6, p0

    .line 8390
    check-cast v6, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v7, "camera_setting_smart_auto_key"

    const-string/jumbo v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8392
    .local v5, "sVal":Ljava/lang/String;
    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8393
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v6, v7, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 8414
    .end local v5    # "sVal":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "enterMode"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 8415
    return-void

    .line 8395
    .restart local v5    # "sVal":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v6, v7, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 8398
    .end local v5    # "sVal":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 8399
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 8400
    .local v2, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8401
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v6, v7, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 8402
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    .line 8403
    .local v0, "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getZSDStatus()Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    move-result-object v3

    .local v3, "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    move-object v1, p0

    .line 8404
    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 8405
    .local v1, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    sget-object v6, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;->ZSD_STATUS_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;

    if-ne v3, v6, :cond_3

    .line 8406
    sget-object v6, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v1, v6}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_0

    .line 8408
    :cond_3
    sget-object v6, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v1, v6}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    goto :goto_0

    .line 8411
    .end local v0    # "capMode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    .end local v1    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    .end local v3    # "newStatus":Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDStatus;
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v6, v7, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1904
    const-string/jumbo v6, "panhui"

    const-string/jumbo v7, "switchCamera"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v6, :cond_0

    .line 1907
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 2063
    :goto_0
    return-void

    .line 1911
    :cond_0
    iput v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    .line 1912
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1913
    const-string v6, "liuming"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start to switch camera. id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    iput v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    .line 1915
    const/4 v6, -0x1

    iput v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 1916
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraId(I)V

    .line 1919
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v6}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->onCameraSwitched(I)V

    .line 1922
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->exit(Z)V

    .line 1925
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v6, v5, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 1928
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sput v6, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    .line 1929
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/PhotoUI;->showOrHideBackCameraSettingButton(I)V

    .line 1931
    const-string v6, "close_camera"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 1932
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v6, :cond_1

    .line 1933
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeCamera()V

    .line 1935
    :cond_1
    const-string v6, "close_camera"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 1936
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    .line 1937
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->clearFaces()V

    .line 1938
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->removeMessages()V

    .line 1941
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v6, v7, v8}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1942
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1944
    const/4 v2, 0x0

    .line 1946
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    .line 1947
    .local v4, "newCameraId":I
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mExCameraIdSupported:Z

    if-eqz v6, :cond_3

    .line 1948
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    add-int/lit8 v4, v6, 0x64

    .line 1950
    :cond_3
    const-string/jumbo v6, "open_camera"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 1951
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v6, v4}, Lcom/lenovo/scg/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 1952
    const-string/jumbo v6, "open_camera"

    invoke-static {v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 1953
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1954
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->updateCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1970
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->initializeCapabilities(Landroid/hardware/Camera$Parameters;)V

    .line 1971
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v6

    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    aget-object v1, v6, v7

    .line 1972
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v3, :cond_8

    .line 1973
    .local v3, "mirror":Z
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v5, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setMirror(Z)V

    .line 1974
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1976
    const-string/jumbo v5, "switchFunctionAndMode"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 1977
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->switchFunctionAndMode(I)V

    .line 1978
    const-string/jumbo v5, "switchFunctionAndMode"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1982
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initZSDStatus()V

    .line 1983
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    .line 1986
    :cond_5
    sget-boolean v5, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v5, :cond_6

    .line 1989
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1992
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/lenovo/scg/camera/PhotoModule$15;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/PhotoModule$15;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2042
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2044
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 2049
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->loadFrontSupplyImage()V

    .line 2053
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isLowQualityVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2054
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetSurfaceTextureRatio()V

    .line 2058
    :cond_7
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->onCameraSwitched()V

    .line 2061
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->endSwitchCamera()V

    .line 2062
    const-string/jumbo v5, "switch_camera"

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1960
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    .end local v4    # "newCameraId":I
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 1962
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v6, 0x7f0f04cb

    invoke-static {v5, v6, v3}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .line 1964
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1965
    .local v0, "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 1966
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v6, 0x7f0f04cc

    invoke-static {v5, v6, v3}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto/16 :goto_0

    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v4    # "newCameraId":I
    :cond_8
    move v3, v5

    .line 1972
    goto/16 :goto_1

    .line 2046
    .restart local v3    # "mirror":Z
    :cond_9
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeSquareMaskView()V

    goto :goto_2
.end method

.method private switchFunctionAndMode(I)V
    .locals 4
    .param p1, "nCameraId"    # I

    .prologue
    const/4 v3, 0x1

    .line 2066
    if-ne p1, v3, :cond_1

    .line 2067
    const-string v1, "liuming"

    const-string v2, "CAMERA_FACING_FRONT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    new-instance v0, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/function/FunctionUIPara;-><init>()V

    .line 2069
    .local v0, "para":Lcom/lenovo/scg/camera/function/FunctionUIPara;
    iput-object p0, v0, Lcom/lenovo/scg/camera/function/FunctionUIPara;->module:Lcom/lenovo/scg/camera/PhotoModule;

    .line 2070
    const-string v1, "CAM_PhotoModule"

    const-string v2, "Switch2Function switchCamera : 4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    const-string/jumbo v1, "switch2Function"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 2072
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    .line 2073
    const-string/jumbo v1, "switch2Function"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 2088
    .end local v0    # "para":Lcom/lenovo/scg/camera/function/FunctionUIPara;
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    if-nez p1, :cond_0

    .line 2075
    const-string v1, "liuming"

    const-string v2, "CAMERA_FACING_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2077
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/16 v2, 0x49

    invoke-virtual {v1, v3, v2}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    .line 2078
    :cond_2
    const-string/jumbo v1, "switch2RightMode"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 2079
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->switch2RightMode()V

    .line 2080
    const-string/jumbo v1, "switch2RightMode"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syncFlashStatus(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->readFlashMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 2155
    :cond_0
    return-void
.end method

.method private updateAutoFocusModeDisplay(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 7266
    const-string v5, "camera_auto_focusmode_list_key"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 7267
    .local v3, "show":Z
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show AUTO itme of focusmode setting list ---- show  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7270
    const/4 v2, 0x0

    .line 7271
    .local v2, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v3, :cond_1

    .line 7272
    new-instance v1, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v1, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 7273
    .local v1, "inflater":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;
    const v5, 0x7f070001

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;->inflate(I)Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    .line 7274
    .local v0, "group":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    const-string v5, "camera_setting_focus_type_key"

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    .line 7275
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string v6, "camera_setting_focus_type_key"

    invoke-static {v5, v6}, Lcom/lenovo/scg/camera/setting/SettingUtils;->removePreference(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Ljava/lang/String;)Z

    .line 7276
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v5, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->addChild(Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference;)V

    .line 7280
    .end local v0    # "group":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .end local v1    # "inflater":Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceInflater;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7281
    .local v4, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "0"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7282
    const-string v5, "2"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7283
    if-eqz v3, :cond_0

    .line 7284
    const-string v5, "1"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7285
    const-string v5, "3"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7287
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mProSettingListPreferenceHelper:Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    invoke-virtual {v5, v6, v2, v4}, Lcom/lenovo/scg/camera/setting/CameraProSettingListPreferenceHelper;->filterUnsupportedOptions(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;Ljava/util/List;)V

    .line 7288
    return-void

    .line 7278
    .end local v4    # "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string v6, "camera_setting_focus_type_key"

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v2

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 5586
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5587
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "updateAutoFocusMoveCallback: setAutoFocusMoveCallback--mAutoFocusMoveCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5588
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 5595
    :goto_0
    return-void

    .line 5590
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "updateAutoFocusMoveCallback: setAutoFocusMoveCallback--null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5591
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersDependSharedPreferences(Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    .locals 3
    .param p1, "triggerSource"    # Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .prologue
    .line 5627
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "updateCameraParametersDependSharedPreferences()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5629
    const-string v1, "CAM_PhotoModule"

    const-string v2, "No need to updateCameraParametersDependSharedPreferences on normal video recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetSurfaceTextureRatio()V

    .line 5777
    :cond_0
    :goto_0
    return-void

    .line 5635
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 5637
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->printTriggerState()V

    .line 5638
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->isInOnSingleTapUp()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->isInOnCameraShutterClick()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->isInOnShutterButtonFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->isInOnAutoFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->isInOnAutoFocusMoving()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5648
    :cond_2
    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    if-ne p1, v1, :cond_5

    .line 5649
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setFocusAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5651
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5653
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setMeteringAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5655
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5657
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "updateFocusGroup"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5660
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroupWithoutSetPara()V

    goto :goto_0

    .line 5665
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setAutoExposureLockIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5666
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_6

    .line 5667
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setAutoExposureLockIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5670
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setFocusAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5672
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5674
    :cond_7
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setMeteringAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5676
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5678
    :cond_8
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "updateExposure"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5680
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_9

    .line 5681
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updateExposure(Landroid/hardware/Camera$Parameters;)V

    .line 5684
    :cond_9
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "updateFocusGroup"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5687
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroupWithoutSetPara()V

    goto/16 :goto_0

    .line 5693
    :cond_a
    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    if-ne p1, v1, :cond_d

    .line 5694
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setFocusAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 5696
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5698
    :cond_b
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "setMeteringAreasIfSupported"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5700
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5702
    :cond_c
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    const-string/jumbo v2, "updateFocusGroup"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->havePermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5705
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroupWithoutSetPara()V

    goto/16 :goto_0

    .line 5711
    :cond_d
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_e

    .line 5712
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setAutoExposureLockIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5716
    :cond_e
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5717
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5718
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 5725
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->writeDefParameters2SPreferenceIfInit()V

    .line 5729
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_10

    .line 5730
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->getDefaultParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 5749
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updatePicturePreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 5757
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updateJPEGQuality(Landroid/hardware/Camera$Parameters;)V

    .line 5763
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_f

    .line 5764
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updateExposure(Landroid/hardware/Camera$Parameters;)V

    .line 5771
    :cond_f
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v1, v2, :cond_0

    .line 5772
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroupWithoutSetPara()V

    goto/16 :goto_0

    .line 5733
    :cond_10
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->readParametersFromSPreferences()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    goto :goto_1
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    .line 5233
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 5234
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 5235
    .local v0, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 5236
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5237
    .local v2, "max":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 5240
    .end local v2    # "max":Ljava/lang/Integer;
    :cond_0
    sget-boolean v4, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    if-eqz v4, :cond_1

    .line 5241
    const-string v4, "CAM_PhotoModule"

    const-string v5, "cwh set preview-fps-range 10fps"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5242
    const-string/jumbo v4, "preview-fps-range"

    const-string v5, "10000,10000"

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    :cond_1
    const-string/jumbo v4, "recording-hint"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5248
    const-string/jumbo v4, "video-stabilization-supported"

    invoke-virtual {v1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5249
    .local v3, "vstabSupported":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5250
    const-string/jumbo v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5252
    :cond_2
    return-void
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 5256
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 5257
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5258
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 5260
    :cond_0
    return-void
.end method

.method private updateExposure(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 5306
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/SettingUtils;->readExposure(Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;)I

    move-result v2

    .line 5308
    .local v2, "value":I
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v3, :cond_0

    .line 5309
    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5312
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 5313
    .local v0, "max":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 5314
    .local v1, "min":I
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v3, v4, :cond_2

    .line 5315
    :cond_1
    const/4 v2, 0x0

    .line 5317
    :cond_2
    if-lt v2, v1, :cond_3

    if-gt v2, v0, :cond_3

    .line 5318
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 5322
    :goto_0
    return-void

    .line 5320
    :cond_3
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid exposure range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFlashLowBattery()V
    .locals 4

    .prologue
    .line 8918
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    .line 8919
    .local v1, "type":I
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v2, :cond_0

    .line 8920
    const-string v2, "lnliu"

    const-string v3, "mIsImageCaptureIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8921
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->initFlashDrawable()V

    .line 8923
    :cond_0
    if-nez v1, :cond_2

    .line 8924
    const-string v2, "lnliu"

    const-string v3, "auto"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8931
    :cond_1
    :goto_0
    return-void

    .line 8925
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 8926
    const-string v2, "lnliu"

    const-string/jumbo v3, "pro"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8927
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 8928
    .local v0, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v2

    iget-object v2, v2, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutUtil:Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutUtil;->initFlashDrawable()V

    .line 8929
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->updateAllShortcutDrawable()V

    goto :goto_0
.end method

.method private updateFocusPara(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3224
    if-nez p1, :cond_1

    .line 3225
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->clearFocusGroup()V

    .line 3226
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setFocusParametersOnly() mParameters == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    :cond_0
    :goto_0
    return-void

    .line 3230
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 3231
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 3232
    .local v0, "focusMode":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3233
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 3234
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 3235
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3236
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->isAutoExposureLock()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 3239
    :cond_2
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusParametersOnly() focusMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusParametersOnly() FocusArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusParametersOnly() MeteringArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    const-string v1, "CAM_PhotoModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusParametersOnly() isAutoExposureLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->isAutoExposureLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinousFocusSupported:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v1, :cond_0

    .line 3245
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->updateAutoFocusMoveCallback(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0
.end method

.method private updateJPEGQuality(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 5333
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 5334
    .local v0, "jpegQuality":I
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 5335
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 5336
    :cond_0
    return-void
.end method

.method private updatePreviewSize(Lcom/lenovo/scg/camera/CameraScreenNail;)V
    .locals 7
    .param p1, "snail"    # Lcom/lenovo/scg/camera/CameraScreenNail;

    .prologue
    .line 5189
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 5191
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 5192
    .local v2, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5193
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->adjustSize(Landroid/hardware/Camera$Size;)V

    .line 5195
    :cond_0
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    .line 5196
    .local v3, "w":I
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    .line 5197
    .local v0, "h":I
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_1

    .line 5198
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    .line 5199
    iget v0, v2, Landroid/hardware/Camera$Size;->width:I

    .line 5202
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 5203
    :cond_2
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IntentSizeCheck setSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " * "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5204
    invoke-virtual {p1, v3, v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSize(II)V

    .line 5206
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->enableAspectRatioClamping()V

    .line 5207
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 5208
    return-void
.end method

.method private updateSmart(Ljava/lang/String;)V
    .locals 4
    .param p1, "flash"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 9178
    const-string/jumbo v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "torch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9180
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isRecordSmart()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9181
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_smart_auto_key"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    .line 9182
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSmart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----------save"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 9184
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_smart_auto_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 9185
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->recordSmart()V

    .line 9195
    :cond_1
    :goto_0
    return-void

    .line 9189
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isRecordSmart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9190
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v1, "camera_setting_smart_auto_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 9191
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->unRecordSmart()V

    .line 9193
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSmart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCurrentSmart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----------rstore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    .line 4408
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 4409
    const-string v0, "CAM_PhotoModule"

    const-string v1, "autoFocus() mCameraDevice == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :goto_0
    return-void

    .line 4412
    :cond_0
    const-string v0, "CAM_PhotoModule"

    const-string v1, "autoFocus!!0000000000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->startFocus()V

    .line 4417
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mAutoFocusCallback:Lcom/lenovo/scg/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 4418
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 4425
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    if-eqz v0, :cond_0

    .line 4426
    const-string v0, "cancelAutoFocus will not be execute, because current is continuous shot -------!!!!!!!"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4445
    :goto_0
    return-void

    .line 4432
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 4433
    const-string v0, "CAM_PhotoModule"

    const-string v1, "cancelAutoFocus() mCameraDevices == null && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4438
    :cond_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "cancelAutoFocus!!000000000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4441
    const-string v0, "CAM_PhotoModule"

    const-string v1, "cancelAutoFocus!!111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 4444
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusParametersOnly()V

    goto :goto_0
.end method

.method public capture()Z
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v14, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 3096
    const-string v0, "CAM_PhotoModule"

    const-string v1, "capture!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eq v0, v14, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/MediaSaveService;->isQueueFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3099
    :cond_0
    const-string v0, "mCameraDevice == null || mCameraState == SNAPSHOT_IN_PROGRESS || mCameraState == SWITCHING_CAMERA,capture will return,not execute takePicture"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    move v0, v13

    .line 3178
    :goto_0
    return v0

    .line 3102
    :cond_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "capture!! 111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 3105
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    .line 3106
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 3108
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->shutterSoundWillPlay()V

    .line 3119
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/CameraUtil;->getJpegRotation(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegRotation:I

    .line 3120
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 3121
    .local v10, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v10, :cond_2

    .line 3122
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v10, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 3124
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 3125
    .local v8, "loc":Landroid/location/Location;
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "setParameters capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    if-eqz v10, :cond_3

    .line 3127
    invoke-static {v10, v8}, Lcom/lenovo/scg/camera/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 3128
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v10}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3130
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->disableSceneChange()V

    .line 3132
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->onBeforeTakePicture()V

    .line 3134
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v9

    .line 3135
    .local v9, "mFunc":Lcom/lenovo/scg/camera/function/FunctionUI;
    if-eqz v9, :cond_4

    .line 3136
    invoke-virtual {v9}, Lcom/lenovo/scg/camera/function/FunctionUI;->onCaptureStart()V

    .line 3138
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isNeedPlayShutterSound()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 3139
    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->playCameraClickSound()V

    .line 3142
    :cond_5
    const-string v0, "capture execute takePicture"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3144
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isShowCaptureAnim()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3145
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayRotation:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSupportZSD()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->animateCapture(IZ)V

    .line 3148
    :cond_6
    iput-boolean v12, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z

    .line 3149
    new-instance v4, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;

    invoke-direct {v4, p0, v8}, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Landroid/location/Location;)V

    .line 3151
    .local v4, "jpegPictureCallback":Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    .line 3153
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;

    invoke-direct {v1, p0, v13}, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;

    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusState()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    .line 3156
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    if-eqz v0, :cond_7

    .line 3157
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-wide v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->nameNewImage(Landroid/content/ContentResolver;J)V

    .line 3161
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_c

    .line 3162
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    .line 3163
    .local v7, "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, takePicture, current mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SPECIAL_EFFECTS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v0, :cond_8

    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->REMOVE:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v7, v0, :cond_9

    .line 3167
    :cond_8
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->getOnPictureTakenTimeOutTimer()J

    move-result-wide v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/lenovo/scg/camera/TimeOutProtect;->resetTimer(Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;J)V

    .line 3170
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v11

    .line 3171
    .local v11, "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isSupportZSD()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3172
    :cond_a
    iput-boolean v13, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 3175
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v14}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 3177
    .end local v7    # "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v11    # "mode":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :cond_c
    const-string v0, "Camera"

    const-string v1, "CaptureDone"

    const-string v2, "Photo"

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 3178
    goto/16 :goto_0
.end method

.method public changeFunction()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 7414
    const-string/jumbo v9, "panhui"

    const-string v10, "changeFunction"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7416
    new-instance v5, Lcom/lenovo/scg/camera/function/FunctionUIPara;

    invoke-direct {v5}, Lcom/lenovo/scg/camera/function/FunctionUIPara;-><init>()V

    .line 7417
    .local v5, "para":Lcom/lenovo/scg/camera/function/FunctionUIPara;
    iput-object p0, v5, Lcom/lenovo/scg/camera/function/FunctionUIPara;->module:Lcom/lenovo/scg/camera/PhotoModule;

    .line 7419
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v9}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 7420
    .local v2, "currentFunction":I
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    .line 7421
    .local v6, "preferences":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 7422
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "AUTO_PRO_FUNCTION"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7430
    :cond_0
    const-string v9, "CAM_PhotoModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Switch2Function changeFunction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7431
    if-ne v2, v7, :cond_1

    .line 7432
    sput-boolean v8, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mIsFirstEnter:Z

    .line 7434
    :cond_1
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v9, v2, v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    .line 7435
    if-nez v2, :cond_6

    .line 7436
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v4

    .line 7437
    .local v4, "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isSmartSettingEnable()Z

    move-result v1

    .line 7438
    .local v1, "bIsSmart":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isFlashOn()Z

    move-result v0

    .line 7439
    .local v0, "bIsFlashOn":Z
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 7440
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 7447
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    const v8, 0x7f0200da

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7448
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    const v8, 0x7f0200db

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    .line 7451
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoUI;->showAutoCameraDisplay()V

    .line 7481
    .end local v0    # "bIsFlashOn":Z
    .end local v1    # "bIsSmart":Z
    .end local v4    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoUI;->loadModeButtonImage()V

    .line 7485
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v7, :cond_3

    .line 7486
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 7491
    :cond_3
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/PhotoModule;->loadTakePictureImage(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 7495
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->loadMeteringLogicEnable()V

    .line 7497
    return-void

    .end local v2    # "currentFunction":I
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_4
    move v2, v8

    .line 7419
    goto/16 :goto_0

    .line 7442
    .restart local v0    # "bIsFlashOn":Z
    .restart local v1    # "bIsSmart":Z
    .restart local v2    # "currentFunction":I
    .restart local v4    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v4, v7, :cond_2

    .line 7443
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_1

    .line 7453
    .end local v0    # "bIsFlashOn":Z
    .end local v1    # "bIsSmart":Z
    .end local v4    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_6
    if-ne v2, v7, :cond_9

    .line 7454
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 7455
    .local v3, "functionUI":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 7457
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 7459
    invoke-virtual {p0, v12}, Lcom/lenovo/scg/camera/PhotoModule;->displayScreenExceptByHandler([I)V

    .line 7469
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    const v8, 0x7f0200ec

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 7471
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7474
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoUI;->hideAutoCameraDisplay()V

    goto :goto_2

    .line 7462
    :cond_8
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v4

    .line 7463
    .restart local v4    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v4, v7, :cond_7

    .line 7464
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_3

    .line 7477
    .end local v3    # "functionUI":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    .end local v4    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_9
    invoke-static {v8}, Lcom/lenovo/scg/gallery3d/common/Utils;->assertTrue(Z)V

    goto :goto_2
.end method

.method public changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 5
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 7509
    const-string/jumbo v2, "panhui"

    const-string v3, "changeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7511
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 7512
    const-string/jumbo v2, "will not changeMode,camera paused"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 7575
    :cond_0
    :goto_0
    return-void

    .line 7516
    :cond_1
    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v2, :cond_4

    .line 7517
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 7519
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 7520
    .local v0, "functionUI":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    const/4 v1, 0x0

    .line 7521
    .local v1, "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    if-eqz v0, :cond_2

    .line 7522
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v1

    .line 7524
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7525
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v2, v3, :cond_3

    .line 7528
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 7531
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v2, :cond_3

    .line 7532
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 7536
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->displayScreenExceptByHandler([I)V

    .line 7539
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->loadTakePictureImage(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto :goto_0

    .line 7547
    .end local v0    # "functionUI":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    .end local v1    # "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 7549
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->setOrientation(I)V

    .line 7553
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v2, :cond_5

    .line 7557
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 7563
    :cond_5
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->loadTakePictureImage(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 7568
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode: mZoomValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7569
    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    if-eqz v2, :cond_0

    .line 7570
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    .line 7571
    const/4 v2, 0x2

    sget-object v3, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->OTHERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 7572
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setZoomForUi(I)V

    goto/16 :goto_0
.end method

.method public cleanVideoScreen()V
    .locals 1

    .prologue
    .line 9016
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->cleanVideoScreen()V

    .line 9017
    return-void
.end method

.method protected clearScreenExceptByHandler([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 7935
    const/4 v0, 0x0

    .line 7936
    .local v0, "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 7937
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7938
    .restart local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 7939
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7942
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7943
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7944
    return-void
.end method

.method protected clearScreenExceptWithoutAnimByHandler([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 7952
    const/4 v0, 0x0

    .line 7953
    .local v0, "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 7954
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7955
    .restart local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 7956
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7960
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7961
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7962
    return-void
.end method

.method public closeLevel()V
    .locals 2

    .prologue
    .line 7316
    const-string v0, "CAM_PhotoModule"

    const-string v1, "close level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7317
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraWaterLevel()V

    .line 7318
    return-void
.end method

.method public closeLine()V
    .locals 2

    .prologue
    .line 7331
    const-string v0, "CAM_PhotoModule"

    const-string v1, "closeLine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7332
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraLine()V

    .line 7333
    return-void
.end method

.method public closeShortcutSetting()V
    .locals 0

    .prologue
    .line 7298
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLevel()V

    .line 7299
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLine()V

    .line 7300
    return-void
.end method

.method protected disableSceneChange()V
    .locals 3

    .prologue
    .line 7829
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 7830
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 7831
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->disableSceneChange()V

    .line 7833
    .end local v0    # "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2297
    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2311
    :goto_0
    return v0

    .line 2299
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    new-array v3, v0, [Landroid/view/MotionEvent;

    aput-object p1, v3, v1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeSettingUI([Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2300
    const-string v0, "PhotoModule-dispatchTouchEvent"

    const-string v2, "in"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2301
    goto :goto_0

    .line 2305
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2306
    const-string v1, "CAM_PhotoModule"

    const-string v2, "mFunctionManager return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2311
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected displayScreenExceptByHandler([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 7968
    const/4 v0, 0x0

    .line 7969
    .local v0, "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 7970
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7971
    .restart local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 7972
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7978
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7979
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7980
    return-void
.end method

.method protected displayScreenExceptByHandlerDelayTime([II)V
    .locals 7
    .param p1, "exclude"    # [I
    .param p2, "nDelay"    # I

    .prologue
    .line 7984
    const/4 v0, 0x0

    .line 7985
    .local v0, "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 7986
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, p1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7987
    .restart local v0    # "arrId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 7988
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7987
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7995
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7996
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    int-to-long v4, p2

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7997
    return-void
.end method

.method protected doStartPreview()V
    .locals 6

    .prologue
    .line 5020
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5021
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5022
    return-void
.end method

.method protected doStopPreview()V
    .locals 6

    .prologue
    .line 5026
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5027
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5028
    return-void
.end method

.method protected enableSceneChange()V
    .locals 3

    .prologue
    .line 7822
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 7823
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 7824
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->enableSceneChange()V

    .line 7826
    .end local v0    # "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :cond_0
    return-void
.end method

.method protected finishContinuousShot(I)V
    .locals 13
    .param p1, "nCount"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 6331
    const-string v7, "enter PhotoModule finishContinuousShot"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6333
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 6335
    invoke-direct {p0, v10}, Lcom/lenovo/scg/camera/PhotoModule;->enableScreenShow(Z)V

    .line 6337
    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v7, :cond_0

    .line 6338
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    if-nez v7, :cond_3

    .line 6340
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v7

    const-string v8, "camera_setting_smart_auto_key"

    const-string/jumbo v9, "off"

    invoke-virtual {v7, v8, v9}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6341
    .local v5, "sVal":Ljava/lang/String;
    const-string/jumbo v7, "on"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6342
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 6360
    .end local v5    # "sVal":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v7, :cond_1

    .line 6361
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 6362
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusMode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "infinity"

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v7, v8, :cond_1

    .line 6363
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->restartCamera()V

    .line 6368
    :cond_1
    if-gtz p1, :cond_5

    .line 6371
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v7, v11, v10}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 6373
    const-string v7, "call displayScreenExceptByHandler end , return"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6375
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    .line 6377
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v11, v8, v10, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 6378
    .local v3, "newMsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6380
    const/16 v7, 0x32

    invoke-virtual {p0, v12, v7}, Lcom/lenovo/scg/camera/PhotoModule;->displayScreenExceptByHandlerDelayTime([II)V

    .line 6382
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    .line 6451
    .end local v3    # "newMsg":Landroid/os/Message;
    :goto_1
    return-void

    .line 6344
    .restart local v5    # "sVal":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 6347
    .end local v5    # "sVal":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 6348
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 6349
    .local v2, "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    move-result-object v6

    .line 6350
    .local v6, "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->isHdrOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6351
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto :goto_0

    .line 6353
    :cond_4
    const-string/jumbo v7, "will enter normal mode"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6354
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v7, v8, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 6355
    const-string v7, " enter normal return"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6386
    .end local v2    # "function":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    .end local v6    # "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :cond_5
    const-string/jumbo v7, "will goto album UI"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6388
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 6389
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v7, v0, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    if-eqz v7, :cond_6

    move-object v4, v0

    .line 6390
    check-cast v4, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 6391
    .local v4, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    const-string/jumbo v7, "will set browse end listener"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6392
    new-instance v7, Lcom/lenovo/scg/camera/PhotoModule$22;

    invoke-direct {v7, p0}, Lcom/lenovo/scg/camera/PhotoModule$22;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setContinuousBrowseEndListener(Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;)V

    .end local v4    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_6
    move-object v7, p0

    .line 6429
    check-cast v7, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v7

    sput-object v7, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    .line 6431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->getContinuosPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    .line 6432
    .local v1, "bucketId":I
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->resetContinuosPath()V

    .line 6433
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7, v1}, Lcom/lenovo/scg/camera/CameraActivity;->pickAlbum(I)V

    .line 6435
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v11}, Lcom/lenovo/scg/camera/ActivityBase;->listContinuousShooting(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->setCameraSourcePath(Ljava/lang/String;)V

    .line 6438
    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v7, :cond_7

    .line 6439
    invoke-virtual {p0, v12}, Lcom/lenovo/scg/camera/PhotoModule;->clearScreenExceptByHandler([I)V

    .line 6441
    sget-object v7, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 6443
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    if-nez v7, :cond_7

    .line 6444
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v7, v8, :cond_7

    .line 6445
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/CaptureMode;->pause()V

    .line 6450
    :cond_7
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    goto/16 :goto_1
.end method

.method public firstOpenCamera(Lcom/lenovo/scg/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object v0, p0

    .line 1276
    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 1278
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    .line 1279
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 1280
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 1281
    return-void
.end method

.method public getCameraAppRootFrameLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 7377
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getParentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 7367
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 6129
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getCaptureListener()Lcom/lenovo/scg/camera/mode/CaptureListener;
    .locals 1

    .prologue
    .line 6751
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    return-object v0
.end method

.method protected getFocusManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    .locals 1

    .prologue
    .line 5811
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    return-object v0
.end method

.method public getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;
    .locals 1

    .prologue
    .line 7360
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    return-object v0
.end method

.method public getFunctionManager()Lcom/lenovo/scg/camera/function/FunctionUIManager;
    .locals 1

    .prologue
    .line 5957
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    return-object v0
.end method

.method public getGlRootView()Lcom/lenovo/scg/gallery3d/ui/GLRootView;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getJpegDataFor3rd()[B
    .locals 1

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    return-object v0
.end method

.method public getLastThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6647
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6653
    :goto_0
    return-void

    .line 6651
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6652
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected getLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6656
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6662
    :goto_0
    return-void

    .line 6660
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6661
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 6622
    const/4 v0, 0x0

    .line 6623
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v1, :cond_0

    .line 6624
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6626
    :cond_0
    return-object v0
.end method

.method protected getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;
    .locals 2

    .prologue
    .line 7336
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraLeSCFDevice:Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    if-nez v0, :cond_0

    .line 7337
    new-instance v0, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;-><init>(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraLeSCFDevice:Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    .line 7341
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraLeSCFDevice:Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    return-object v0

    .line 7339
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraLeSCFDevice:Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->updateCameraProxy(Lcom/lenovo/scg/camera/CameraManager$CameraProxy;)V

    goto :goto_0
.end method

.method public getModeHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 7861
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;
    .locals 2

    .prologue
    .line 7352
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v0, :cond_0

    .line 7353
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 7354
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->setCameraActivity(Landroid/content/Context;)V

    .line 7356
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    return-object v0
.end method

.method public getNamedImagesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6755
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 7372
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v0

    return v0
.end method

.method protected getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->parentView:Landroid/view/View;

    return-object v0
.end method

.method public getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;
    .locals 1

    .prologue
    .line 6837
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    return-object v0
.end method

.method public getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    return-object v0
.end method

.method protected getZSDEnabled(Z)V
    .locals 5
    .param p1, "isCaptureIntent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1081
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    .line 1082
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "setZSDEnabled() mCameraDevice is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    if-eqz p1, :cond_2

    .line 1086
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraConfig;->setZSDEnabled(Z)V

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1090
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 1091
    const-string v2, "lenovo_zsd_mode"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    .local v1, "zsdSupported":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1093
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraConfig;->setZSDEnabled(Z)V

    .line 1100
    :goto_1
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zsdSupported :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    :cond_3
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1095
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraConfig;->setZSDEnabled(Z)V

    goto :goto_1

    .line 1097
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraConfig;->setZSDEnabled(Z)V

    goto :goto_1
.end method

.method protected getmActivity()Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method protected getmCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method public getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;
    .locals 1

    .prologue
    .line 7391
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    return-object v0
.end method

.method protected getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    return-object v0
.end method

.method protected getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    return-object v0
.end method

.method protected getmOrientation()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    return v0
.end method

.method protected getmPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .locals 1

    .prologue
    .line 7403
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    return-object v0
.end method

.method public hideSettingUI()Z
    .locals 2

    .prologue
    .line 7382
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProExpandSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7383
    const-string v0, "hideSettingPopup"

    const-string v1, "hideSettingPopup =========================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7384
    const/4 v0, 0x1

    .line 7386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/lenovo/scg/camera/CameraActivity;Landroid/view/View;Z)V
    .locals 12
    .param p1, "activity"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "reuseNail"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1289
    .local v2, "t1":J
    const-string v6, "PhotoModule-init-start"

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->addTime(Ljava/lang/String;)V

    move-object v6, p0

    .line 1291
    check-cast v6, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 1293
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 1295
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v6}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraConfig;->isCMCC()Z

    move-result v6

    sput-boolean v6, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    .line 1296
    const-string v6, "CAM_PhotoModule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init() mIsCMCC = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/lenovo/scg/camera/CameraUtil;->mIsCMCC:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iput-object p2, p0, Lcom/lenovo/scg/camera/PhotoModule;->parentView:Landroid/view/View;

    .line 1303
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 1305
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/camera/mode/ModeManager;->setOnEnterModeDoneListener(Lcom/lenovo/scg/camera/mode/ModeManager$OnEnterModeDoneListener;)V

    .line 1308
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    .line 1310
    new-instance v6, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v6, v9}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 1312
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1315
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1316
    iput v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    .line 1317
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sput v6, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    .line 1319
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v6, v9, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 1320
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1323
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v6

    const-string v9, "developer_setting_zsd_key"

    invoke-virtual {v6, v9, v7}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->SUPPORT_ZSD_DEVELOP:Z

    .line 1330
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 1334
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setIsVideoIntent()V

    .line 1338
    new-instance v6, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v6, v9}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    .line 1340
    new-instance v6, Lcom/lenovo/scg/camera/setting/SettingExecuter;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v6, v9}, Lcom/lenovo/scg/camera/setting/SettingExecuter;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    .line 1341
    new-instance v6, Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v6, v9}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    .line 1347
    new-instance v6, Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {v6, p1, p0, p2}, Lcom/lenovo/scg/camera/PhotoUI;-><init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/PhotoModule;Landroid/view/View;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    .line 1351
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v6

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/lenovo/scg/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->init(Landroid/content/Context;)V

    .line 1357
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 1358
    invoke-static {p1}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraConfig:Lcom/lenovo/scg/camera/CameraConfig;

    .line 1360
    new-instance v6, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v6, v9}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .line 1361
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->switch2Function()V

    .line 1364
    if-eqz p3, :cond_3

    .line 1365
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Lcom/lenovo/scg/camera/CameraActivity;->reuseCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 1374
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v6}, Landroid/os/ConditionVariable;->open()V

    .line 1376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1378
    .local v4, "t2":J
    const-string/jumbo v6, "open lock end ,cost time: %d"

    new-array v7, v7, [Ljava/lang/Object;

    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initializeControlByIntent()V

    .line 1382
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.quickCapture"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mQuickCapture:Z

    .line 1383
    new-instance v6, Lcom/lenovo/scg/camera/LocationManager;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {v6, v7, v8}, Lcom/lenovo/scg/camera/LocationManager;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/LocationManager$Listener;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    .line 1384
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string/jumbo v7, "sensor"

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    check-cast v6, Landroid/hardware/SensorManager;

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1387
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v6, :cond_0

    .line 1388
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPara(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V

    .line 1392
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, p0

    .line 1393
    check-cast v6, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->initSmartAnimation()V

    .line 1397
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1398
    .local v1, "screenOffFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v1}, Lcom/lenovo/scg/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1402
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1403
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Lcom/lenovo/scg/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1407
    new-instance v6, Lcom/lenovo/scg/camera/LightSensorEventListener;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-direct {v6, v7, v8}, Lcom/lenovo/scg/camera/LightSensorEventListener;-><init>(Landroid/app/Activity;Lcom/lenovo/scg/camera/setting/SettingExecuter;)V

    iput-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 1408
    const-string v6, "PhotoModule-init-end"

    invoke-static {v6}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->addTime(Ljava/lang/String;)V

    .line 1410
    return-void

    .end local v0    # "batteryLevelFilter":Landroid/content/IntentFilter;
    .end local v1    # "screenOffFilter":Landroid/content/IntentFilter;
    .end local v4    # "t2":J
    :cond_2
    move v6, v8

    .line 1365
    goto/16 :goto_0

    .line 1367
    :cond_3
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v6, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/lenovo/scg/camera/CameraActivity;->createCameraScreenNail(Z)Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    goto/16 :goto_1

    :cond_4
    move v6, v8

    goto :goto_2
.end method

.method protected initPreferences()V
    .locals 1

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    if-eqz v0, :cond_0

    .line 6576
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraParametersHelper:Lcom/lenovo/scg/camera/setting/CameraParametersHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/CameraParametersHelper;->initProSettingExpandUIDependSupportedParameters()V

    .line 6578
    :cond_0
    return-void
.end method

.method public installIntentFilter()V
    .locals 0

    .prologue
    .line 3867
    return-void
.end method

.method public isBackKeyLocked()Z
    .locals 1

    .prologue
    .line 6183
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isBackKeyLocked:Z

    return v0
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5801
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraIdleWhenBackpressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5807
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEnableSceneChange()Z
    .locals 3

    .prologue
    .line 7814
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v1, v2, :cond_0

    .line 7815
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/SmartMode;

    .line 7816
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/SmartMode;->isEnableSceneChange()Z

    move-result v1

    .line 7818
    .end local v0    # "mode":Lcom/lenovo/scg/camera/mode/SmartMode;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFlashOn()Z
    .locals 5

    .prologue
    .line 7850
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    .line 7851
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "camera_setting_flash_key"

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7853
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7854
    const/4 v2, 0x1

    .line 7856
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 5817
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5818
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLowQualityVideoIntent()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 7790
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 7791
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7793
    .local v1, "extraVideoQuality":I
    if-gtz v1, :cond_0

    const/4 v3, 0x1

    .line 7796
    .end local v1    # "extraVideoQuality":I
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v3

    .line 7794
    :catch_0
    move-exception v0

    .line 7795
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHighQualityVideoIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 4097
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method public isRecordSmart()Z
    .locals 3

    .prologue
    .line 9198
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_flash_change_auto_smart_key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 9200
    .local v0, "isRecord":Z
    return v0
.end method

.method public isSmartSettingEnable()Z
    .locals 4

    .prologue
    .line 7837
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v1

    if-nez v1, :cond_0

    .line 7838
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_setting_smart_auto_key"

    const-string/jumbo v3, "on"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7840
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7841
    const/4 v1, 0x1

    .line 7844
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVideoIntent()Z
    .locals 1

    .prologue
    .line 7785
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoIntent:Z

    return v0
.end method

.method public isVideoPaused()Z
    .locals 1

    .prologue
    .line 7806
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoPaused:Z

    return v0
.end method

.method protected ismIsImageCaptureIntent()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method protected ismPaused()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method public lockBackKey()V
    .locals 1

    .prologue
    .line 6179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isBackKeyLocked:Z

    .line 6180
    return-void
.end method

.method public mediaSave(Lcom/lenovo/scg/camera/MediaSavePara;)V
    .locals 17
    .param p1, "para"    # Lcom/lenovo/scg/camera/MediaSavePara;

    .prologue
    .line 2503
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    array-length v12, v12

    if-nez v12, :cond_1

    .line 2504
    :cond_0
    const-string/jumbo v12, "panhui10"

    const-string/jumbo v13, "mediaSave\uff0c para = null!! or para.data = null!! or para.data.length == 0!!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const-string/jumbo v12, "mediaSave will return,error-------------!"

    invoke-static {v12}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2602
    :goto_0
    return-void

    .line 2510
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_6

    .line 2511
    :cond_2
    const-string v12, "CAM_PhotoModule"

    const-string v13, "EXIF or mExif.getAllTags() is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    new-instance v12, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-direct {v12}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 2516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v4

    .line 2517
    .local v4, "modelTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 2518
    .local v3, "makeTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v4}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v3}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2520
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStartTime:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    invoke-virtual/range {v12 .. v16}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->addDateTimeStampTag(IJLjava/util/TimeZone;)Z

    .line 2523
    const/4 v7, 0x1

    .line 2524
    .local v7, "orientationTagValue":S
    const/4 v9, 0x0

    .line 2525
    .local v9, "tmp":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 2526
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegRotation:I

    .line 2530
    :goto_1
    const-string v12, "CAM_PhotoModule"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "kbg374, tmp:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    sparse-switch v9, :sswitch_data_0

    .line 2546
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 2547
    .local v6, "orientationTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2560
    .end local v3    # "makeTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v4    # "modelTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v6    # "orientationTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v7    # "orientationTagValue":S
    .end local v9    # "tmp":I
    :cond_3
    :goto_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    if-eqz v12, :cond_7

    .line 2561
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 2562
    move-object/from16 v0, p1

    iget v5, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    .line 2570
    .local v5, "orientation":I
    :goto_4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    if-lez v12, :cond_4

    move-object/from16 v0, p1

    iget v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    if-gtz v12, :cond_9

    .line 2571
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v12}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2574
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_8

    .line 2575
    const-string v12, "CAM_PhotoModule"

    const-string/jumbo v13, "mediaSave:mParameters is null return!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2528
    .end local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v5    # "orientation":I
    .restart local v3    # "makeTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .restart local v4    # "modelTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .restart local v7    # "orientationTagValue":S
    .restart local v9    # "tmp":I
    :cond_5
    move-object/from16 v0, p1

    iget v9, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_1

    .line 2533
    :sswitch_0
    const/4 v7, 0x1

    .line 2534
    goto :goto_2

    .line 2536
    :sswitch_1
    const/4 v7, 0x6

    .line 2537
    goto :goto_2

    .line 2539
    :sswitch_2
    const/4 v7, 0x3

    .line 2540
    goto :goto_2

    .line 2542
    :sswitch_3
    const/16 v7, 0x8

    goto :goto_2

    .line 2549
    .end local v3    # "makeTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v4    # "modelTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v7    # "orientationTagValue":S
    .end local v9    # "tmp":I
    :cond_6
    const-string v12, "CAM_PhotoModule"

    const-string v13, "EXIF is not null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    move-object/from16 v0, p1

    iget v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    if-nez v12, :cond_3

    .line 2552
    const/4 v7, 0x1

    .line 2553
    .restart local v7    # "orientationTagValue":S
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 2554
    .restart local v6    # "orientationTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v6}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    goto :goto_3

    .line 2564
    .end local v6    # "orientationTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v7    # "orientationTagValue":S
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-static {v12}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v5

    .line 2566
    .restart local v5    # "orientation":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    .line 2567
    move-object/from16 v0, p1

    iput v5, v0, Lcom/lenovo/scg/camera/MediaSavePara;->orientation:I

    goto :goto_4

    .line 2580
    .restart local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_8
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 2581
    .local v8, "s":Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegRotation:I

    add-int/2addr v12, v5

    rem-int/lit16 v12, v12, 0xb4

    if-nez v12, :cond_a

    .line 2582
    iget v12, v8, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 2583
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    .line 2591
    .end local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v8    # "s":Landroid/hardware/Camera$Size;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v10

    .line 2592
    .local v10, "xDimensionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mExif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    sget v13, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    move-result-object v11

    .line 2593
    .local v11, "yDimensionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v10}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2594
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->exif:Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    invoke-virtual {v12, v11}, Lcom/lenovo/scg/gallery3d/exif/ExifInterface;->setTag(Lcom/lenovo/scg/gallery3d/exif/ExifTag;)Lcom/lenovo/scg/gallery3d/exif/ExifTag;

    .line 2596
    const-string/jumbo v12, "panhui10"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mediaSave, type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->type:Lcom/lenovo/scg/camera/MediaSavePara$SavePicType;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", width = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", w*h = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    mul-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", dataLength = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/lenovo/scg/camera/MediaSavePara;->data:[B

    array-length v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/scg/camera/PhotoModule;->mHandleCallback:Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/lenovo/scg/camera/PhotoModule;->handleSomething(Lcom/lenovo/scg/camera/MediaSavePara;Lcom/lenovo/scg/common/utils/task/IPictureTakenHandleCallback;)V

    goto/16 :goto_0

    .line 2585
    .end local v10    # "xDimensionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .end local v11    # "yDimensionTag":Lcom/lenovo/scg/gallery3d/exif/ExifTag;
    .restart local v2    # "mParameters":Landroid/hardware/Camera$Parameters;
    .restart local v8    # "s":Landroid/hardware/Camera$Size;
    :cond_a
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->width:I

    .line 2586
    iget v12, v8, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p1

    iput v12, v0, Lcom/lenovo/scg/camera/MediaSavePara;->height:I

    goto/16 :goto_5

    .line 2531
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public needsPieMenu()Z
    .locals 1

    .prologue
    .line 6092
    const/4 v0, 0x1

    return v0
.end method

.method public needsSwitcher()Z
    .locals 1

    .prologue
    .line 6087
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 6148
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 4370
    sparse-switch p1, :sswitch_data_0

    .line 4400
    :cond_0
    :goto_0
    return-void

    .line 4372
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4373
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 4374
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4375
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 4376
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4379
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3, p2, v1}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 4380
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V

    .line 4382
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string v4, "crop-temp"

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 4383
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 4390
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "path":Ljava/io/File;
    :sswitch_1
    const-string v3, "CAMERA_SETTING_OPEN_GPS  000"

    invoke-static {v4, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 4392
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isGpsOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4393
    const-string v3, "CAMERA_SETTING_OPEN_GPS  111"

    invoke-static {v4, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 4394
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const-string v4, "camera_setting_location_key"

    const-string/jumbo v5, "on"

    invoke-interface {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->updateCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4370
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4504
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->removeAboutView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4600
    :cond_0
    :goto_0
    return v3

    .line 4507
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4508
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v5, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v5, :cond_3

    move-object v2, v0

    .line 4509
    check-cast v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 4510
    .local v2, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getFilmMode()Z

    move-result v1

    .line 4511
    .local v1, "bFilm":Z
    if-eqz v1, :cond_2

    move v3, v4

    .line 4512
    goto :goto_0

    .line 4513
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 4514
    goto :goto_0

    .line 4521
    .end local v1    # "bFilm":Z
    .end local v2    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLoadingAnimate:Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;

    if-eqz v5, :cond_4

    .line 4522
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->showTips()V

    goto :goto_0

    .line 4527
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onBackPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4533
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    if-eqz v5, :cond_5

    .line 4534
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->dismissDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4539
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    if-eqz v5, :cond_6

    .line 4540
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/LightRotateDialog;->isDialogShowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4547
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    if-eqz v5, :cond_7

    .line 4548
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->isDialogShowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4555
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    if-eqz v5, :cond_8

    .line 4556
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/RotateDialogController;->dismissDialog()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4564
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4565
    const-string v4, "CAM_PhotoModule"

    const-string v5, " onBackPressed add dxt "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4570
    :cond_9
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4572
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onVideoShutterClick()V

    goto :goto_0

    .line 4575
    :cond_a
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v5

    if-nez v5, :cond_b

    .line 4577
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitVideoMode()V

    .line 4578
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 4582
    :cond_b
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoUI;->onBackPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4586
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->onBackPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4590
    :cond_c
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/ModeManager;->onBackPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4595
    :cond_d
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreGouTuLineIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 4596
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreSquarePicIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 4597
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreSquarePicIfNeedFrontCamera(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 4598
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    move v3, v4

    .line 4600
    goto/16 :goto_0
.end method

.method public onCameraSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 5832
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 5841
    :goto_0
    return-void

    .line 5834
    :cond_0
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "onCameraSharedPreferenceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 5837
    .local v0, "recordLocation":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 5839
    const/4 v1, 0x4

    sget-object v2, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->ON_SHARE_PREFERENCE_CHANGED:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParametersWhenIdle(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    goto :goto_0
.end method

.method public onCameraSwitchButtonClicked(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 5845
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5860
    :cond_0
    :goto_0
    return-void

    .line 5846
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->startSwitchCamera()V

    .line 5847
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 5848
    const-string/jumbo v0, "switch_camera"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 5849
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_2

    .line 5850
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to copy texture. cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    const-string v0, "copy_texture"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 5854
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->copyTexture()V

    .line 5856
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0

    .line 5858
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->switchCamera()V

    goto :goto_0
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3388
    sput v2, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    .line 3391
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3392
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->turnToVideoCaller(Z)V

    .line 3398
    :goto_0
    return-void

    .line 3396
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3397
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method public onCaptureDone()V
    .locals 15

    .prologue
    .line 3426
    iget-boolean v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v11, :cond_0

    .line 3522
    :goto_0
    return-void

    .line 3431
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v11, :cond_1

    .line 3432
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/camera/mode/ModeManager;->turnToVideoCaller(Z)V

    goto :goto_0

    .line 3437
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    .line 3438
    .local v2, "data":[B
    if-nez v2, :cond_2

    .line 3439
    const-string v11, "CAM_PhotoModule"

    const-string v12, "JpegImageData is NULL !!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3442
    :cond_2
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 3447
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_3

    .line 3448
    const/4 v7, 0x0

    .line 3453
    .local v7, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    invoke-static {v11}, Lcom/lenovo/scg/camera/Exif;->getOrientation([B)I

    move-result v11

    sput v11, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    .line 3454
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GLOBAL_ORIENTATION = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3456
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 3457
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 3458
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 3460
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(I)V

    .line 3461
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 3462
    :catch_0
    move-exception v11

    .line 3465
    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v11

    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .line 3468
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    invoke-static {v2}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v4

    .line 3469
    .local v4, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v4}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v6

    .line 3470
    .local v6, "orientation":I
    const v11, 0xc800

    invoke-static {v2, v11}, Lcom/lenovo/scg/camera/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3471
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, v6}, Lcom/lenovo/scg/camera/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3472
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v12, -0x1

    new-instance v13, Landroid/content/Intent;

    const-string v14, "inline-data"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "data"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 3473
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 3477
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v6    # "orientation":I
    :cond_4
    const/4 v10, 0x0

    .line 3478
    .local v10, "tempUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 3480
    .local v9, "tempStream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string v12, "crop-temp"

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 3481
    .local v8, "path":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3482
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string v12, "crop-temp"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/lenovo/scg/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 3483
    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3484
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 3485
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 3495
    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3498
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3499
    .local v5, "newExtras":Landroid/os/Bundle;
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v12, "circle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3500
    const-string v11, "circleCrop"

    const-string/jumbo v12, "true"

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    :cond_5
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_7

    .line 3503
    const-string/jumbo v11, "output"

    iget-object v12, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3507
    :goto_1
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->isSecureCamera()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3508
    const-string/jumbo v11, "showWhenLocked"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3514
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v11, "com.android.camera.action.CROP"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3517
    .local v1, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3518
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3520
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v1, v12}, Lcom/lenovo/scg/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 3486
    .end local v1    # "cropIntent":Landroid/content/Intent;
    .end local v5    # "newExtras":Landroid/os/Bundle;
    .end local v8    # "path":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 3487
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(I)V

    .line 3488
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3495
    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 3490
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 3491
    .local v3, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/lenovo/scg/camera/CameraActivity;->setResultEx(I)V

    .line 3492
    iget-object v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3495
    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    invoke-static {v9}, Lcom/lenovo/scg/camera/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v11

    .line 3505
    .restart local v5    # "newExtras":Landroid/os/Bundle;
    .restart local v8    # "path":Ljava/io/File;
    :cond_7
    const-string/jumbo v11, "return-data"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCaptureRetake()V
    .locals 1

    .prologue
    .line 3402
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/PhotoModule;->GLOBAL_ORIENTATION:I

    .line 3403
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3418
    :goto_0
    return-void

    .line 3405
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 3406
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleRetakeVideo()V

    goto :goto_0

    .line 3411
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v0, :cond_2

    .line 3412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    .line 3415
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 3416
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    .line 3417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFocus:Z

    goto :goto_0
.end method

.method public onCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 5970
    return-void
.end method

.method public onChangeFunctionDone(I)V
    .locals 5
    .param p1, "FUNCTION"    # I

    .prologue
    const/4 v4, 0x1

    .line 9109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChangeFunctionDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 9110
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->prepareChangeSetting()V

    .line 9111
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->excuteUpdateScreenBrightness()V

    .line 9114
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateAntibanding()V

    .line 9116
    packed-switch p1, :pswitch_data_0

    .line 9172
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->changeSettingFinish()V

    .line 9173
    :cond_1
    return-void

    .line 9119
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateMetering()V

    .line 9121
    const-string/jumbo v2, "off"

    const-string v3, "camera_setting_goutu_line_key"

    const-string/jumbo v4, "off"

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/PhotoModule;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9122
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLine()V

    .line 9125
    :cond_2
    const-string/jumbo v2, "on"

    const-string v3, "camera_setting_shui_ping_yi_key"

    const-string/jumbo v4, "off"

    invoke-direct {p0, v3, v4}, Lcom/lenovo/scg/camera/PhotoModule;->readSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9126
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLevel()V

    .line 9128
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9129
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    goto :goto_0

    .line 9135
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 9137
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 9141
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9142
    .local v0, "mDefaultString":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FunctionUI.AUTO-Metering:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->P_KEY_QUALCOMM_METERING_MODE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 9147
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLevel()V

    .line 9148
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLine()V

    .line 9151
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingStatusReader:Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9152
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 9156
    :cond_4
    const-string v2, "1"

    const-string v3, "force-aec-enable"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9157
    const-string v2, "force-aec-enable"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9158
    const-string v2, "aec-force-exp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 9164
    :cond_5
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->updateSmart(Ljava/lang/String;)V

    .line 9165
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onAutoSettingShow(Z)V

    .line 9166
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 9116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4364
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setDisplayOrientation()V

    .line 4366
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 6080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 6081
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->doSnap()V

    .line 6082
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onShutterUp()V

    .line 6083
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6763
    :try_start_0
    const-string v2, "PhotoModule enter onDestroy"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6765
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6767
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6784
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    if-eqz v2, :cond_0

    .line 6785
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->onDestroy()V

    .line 6788
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 6789
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 6790
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 6795
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 6798
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onDestory()V

    .line 6799
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onDestroy()V

    .line 6800
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->destroy()V

    .line 6803
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "on photomodule destory unint Engeen!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6804
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->release()V

    .line 6807
    invoke-static {}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->getInstance()Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->uninitSettingSoundPlayer()V

    .line 6810
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->uninitEng_atHandlerThread()V

    .line 6813
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-eqz v2, :cond_2

    .line 6814
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->release()V

    .line 6815
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6833
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 6820
    :catch_0
    move-exception v0

    .line 6821
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "PhotoModule onDestroy RuntimeException: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6822
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 6823
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeCamera()V

    goto :goto_0

    .line 6825
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 6827
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhotoModule onDestroy Exception: %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6828
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6829
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeCamera()V

    goto :goto_0
.end method

.method public onEnterModeDone(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 8494
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->isSwitchingCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8533
    :goto_0
    return-void

    .line 8497
    :cond_0
    const-string/jumbo v1, "onEnterModeDone_wangdy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8499
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v1, :cond_1

    .line 8500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    .line 8503
    :cond_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreSquarePicIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 8504
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreSquarePicIfNeedFrontCamera(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 8506
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreGouTuLineIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 8508
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreWaterLevelIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 8513
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8515
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreWhiteBlanceIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8517
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreISOIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8519
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreExposureIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8521
    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/camera/PhotoModule;->reStoreShutterSpeedIfNeed(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8524
    if-eqz p1, :cond_3

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->STROBEPHOTO:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne p1, v1, :cond_3

    .line 8526
    :cond_2
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 8530
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 6
    .param p1, "full"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3257
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v2, :cond_0

    .line 3258
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onFullScreenChange()V

    .line 3262
    :cond_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFullScreen:Z

    if-eq v2, p1, :cond_1

    .line 3263
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFullScreen:Z

    .line 3264
    if-eqz p1, :cond_3

    const/16 v1, 0xb

    .line 3265
    .local v1, "what":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3266
    .local v0, "newMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3269
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/PhotoUI;->onFullScreenChanged(Z)V

    .line 3270
    sget-boolean v2, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_2

    .line 3271
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v2, v2, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 3272
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v2, v2, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/CameraScreenNail;->setFullScreen(Z)V

    .line 3276
    :cond_2
    return-void

    .line 3264
    :cond_3
    const/16 v1, 0xc

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4605
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnKeyDown:Z

    .line 4607
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onKeyDown, keyCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mFirstTimeInitialized="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v2

    .line 4610
    .local v2, "fu":Lcom/lenovo/scg/camera/function/FunctionUI;
    if-eqz v2, :cond_0

    .line 4611
    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/camera/function/FunctionUI;->onKeyDown(ILandroid/view/KeyEvent;)V

    .line 4614
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v5, v6

    .line 4767
    :cond_1
    :goto_0
    return v5

    .line 4617
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getVolumeKeyAction()Ljava/lang/String;

    move-result-object v1

    .line 4618
    .local v1, "action":Ljava/lang/String;
    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    if-nez v7, :cond_2

    const-string v7, "autopro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4627
    :cond_2
    const-string/jumbo v7, "volume"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 4629
    goto :goto_0

    .line 4633
    :cond_3
    const/4 v4, 0x1

    .line 4634
    .local v4, "isUsed":Z
    if-eqz v4, :cond_7

    .line 4635
    const-string v7, "focus"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4637
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoUI;->getMaxZoom()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 4638
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    .line 4639
    const-string/jumbo v6, "zoom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click KEYCODE_VOLUME_UP to up zoom, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/PhotoModule;->onZoomChanged(I)I

    goto :goto_0

    .line 4642
    :cond_4
    const-string/jumbo v6, "zoom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click KEYCODE_VOLUME_UP not up zoom, is max, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4647
    :cond_5
    const-string/jumbo v7, "shutter"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4649
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v8, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-ne v7, v8, :cond_1

    .line 4652
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4655
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4656
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v7, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-nez v7, :cond_1

    .line 4661
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v7, :cond_6

    .line 4662
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 4663
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    :cond_6
    move v5, v6

    .line 4668
    goto/16 :goto_0

    .end local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_7
    move v5, v6

    .line 4673
    goto/16 :goto_0

    .line 4676
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "isUsed":Z
    :sswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getVolumeKeyAction()Ljava/lang/String;

    move-result-object v1

    .line 4677
    .restart local v1    # "action":Ljava/lang/String;
    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    if-nez v7, :cond_8

    const-string v7, "autopro"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4688
    :cond_8
    const-string/jumbo v7, "volume"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v5, v6

    .line 4690
    goto/16 :goto_0

    .line 4694
    :cond_9
    const/4 v3, 0x1

    .line 4695
    .local v3, "isUSED":Z
    if-eqz v3, :cond_e

    .line 4696
    const-string v7, "focus"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4698
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    if-lez v6, :cond_a

    .line 4699
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    .line 4700
    const-string/jumbo v6, "zoom"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click KEYCODE_VOLUME_DOWN to down zoom, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomIndexForOnKeyDown:I

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/PhotoModule;->onZoomChanged(I)I

    goto/16 :goto_0

    .line 4703
    :cond_a
    const-string/jumbo v6, "zoom"

    const-string v7, "click KEYCODE_VOLUME_DOWN not down zoom, is index = 0."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4707
    :cond_b
    const-string/jumbo v7, "shutter"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4708
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v7, :cond_d

    .line 4711
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v7, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-ne v6, v7, :cond_1

    .line 4714
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4717
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4718
    .restart local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v6, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-nez v6, :cond_1

    .line 4723
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v6

    if-ne v6, v5, :cond_c

    .line 4726
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 4727
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .end local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_d
    move v5, v6

    .line 4731
    goto/16 :goto_0

    :cond_e
    move v5, v6

    .line 4737
    goto/16 :goto_0

    .line 4740
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "isUSED":Z
    :sswitch_2
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v7, :cond_f

    .line 4741
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 4742
    const-string v6, "CAM_PhotoModule"

    const-string v7, "event.getRepeatCount() = 0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    :cond_f
    move v5, v6

    .line 4747
    goto/16 :goto_0

    .line 4750
    :sswitch_3
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 4751
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V

    goto/16 :goto_0

    .line 4757
    :sswitch_4
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 4761
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4762
    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonFocus(Z)V

    .line 4763
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/PhotoUI;->pressShutterButton()V

    goto/16 :goto_0

    .line 4614
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1b -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4791
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOnKeyDown:Z

    .line 4792
    const-string v5, "CAM_PhotoModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onKeyUp, keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mFirstTimeInitialized="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    sparse-switch p1, :sswitch_data_0

    move v3, v4

    .line 4903
    :cond_0
    :goto_0
    return v3

    .line 4798
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getVolumeKeyAction()Ljava/lang/String;

    move-result-object v1

    .line 4799
    .local v1, "action":Ljava/lang/String;
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->isInCONTINUOUS:Z

    if-nez v5, :cond_3

    const-string v5, "autopro"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4801
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4804
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFullScreen:Z

    if-eqz v4, :cond_0

    .line 4809
    const/16 v4, 0x18

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v4

    if-nez v4, :cond_1

    .line 4810
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/lenovo/scg/camera/PhotoModule;->showTips(Ljava/lang/String;I)V

    goto :goto_0

    .line 4811
    :cond_1
    const/16 v4, 0x19

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 4812
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f01e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/lenovo/scg/camera/PhotoModule;->showTips(Ljava/lang/String;I)V

    goto :goto_0

    .line 4814
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onClickVolumeChangeFunction()V

    goto :goto_0

    .line 4819
    :cond_3
    const-string/jumbo v5, "volume"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 4821
    goto :goto_0

    .line 4824
    :cond_4
    const/4 v2, 0x1

    .line 4825
    .local v2, "isUsed":Z
    if-eqz v2, :cond_6

    .line 4827
    const-string v5, "focus"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4829
    const-string/jumbo v5, "shutter"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4831
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v6, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-ne v5, v6, :cond_0

    .line 4834
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4837
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4838
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v5, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-nez v5, :cond_0

    .line 4844
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v5, :cond_5

    .line 4845
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 4848
    goto/16 :goto_0

    .end local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    :cond_6
    move v3, v4

    .line 4852
    goto/16 :goto_0

    .line 4856
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "isUsed":Z
    :sswitch_1
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v5, :cond_0

    .line 4857
    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 4877
    :sswitch_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    sget-object v6, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    if-eq v5, v6, :cond_7

    .line 4878
    const-string v4, "CAM_PhotoModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mWindowStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mWindowStatus:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4882
    :cond_7
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4883
    const-string v4, "CAM_PhotoModule"

    const-string v5, "isInputLocked"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4887
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 4888
    .restart local v0    # "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v5, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-eqz v5, :cond_9

    .line 4889
    const-string v4, "CAM_PhotoModule"

    const-string v5, "act instanceof CameraBrowsePage"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4893
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v5, :cond_a

    .line 4894
    const-string v4, "CAM_PhotoModule"

    const-string/jumbo v5, "onKeyUp:onCameraShutterClick"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4895
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 4898
    goto/16 :goto_0

    .line 4794
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x42 -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLescfError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 8439
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, onLescfError, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8440
    const v0, -0x70fffffd

    if-eq p1, v0, :cond_0

    const v0, -0x70fffffb

    if-ne p1, v0, :cond_1

    .line 8441
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8447
    :cond_1
    :goto_0
    return-void

    .line 8444
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeSCF Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u8bf7\u8054\u7cfb\u5927\u7d22!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onMediaSaveServiceConnected(Lcom/lenovo/scg/camera/MediaSaveService;)V
    .locals 1
    .param p1, "s"    # Lcom/lenovo/scg/camera/MediaSaveService;

    .prologue
    .line 6141
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 6142
    invoke-virtual {p1, p0}, Lcom/lenovo/scg/camera/MediaSaveService;->setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V

    .line 6144
    :cond_0
    return-void
.end method

.method public onModeButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 5885
    const-string/jumbo v1, "onModeButtonClick"

    const/16 v2, 0x190

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5920
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    .line 5888
    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v1

    const-string v2, "camera_mode_back_logic_key"

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5889
    .local v0, "modeBackLogic":I
    if-nez v0, :cond_2

    .line 5890
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    .line 5897
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearScreenExceptWithoutAnim([I)V

    .line 5898
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 5904
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5905
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->pause()V

    .line 5910
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->showModeView(I)V

    .line 5911
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 5915
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->removeModeStatusBar()V

    .line 5916
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->addModeRetButton()V

    .line 5918
    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 5892
    :cond_2
    sput-boolean v3, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    goto :goto_1
.end method

.method public onModeChange(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 8536
    sget-object v0, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    if-eqz v0, :cond_0

    .line 8537
    sget-object v0, Lcom/lenovo/scg/camera/PhotoModule;->mOnModeChangeListener:Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .end local p0    # "this":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getZSDStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;->onModeChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 8539
    :cond_0
    return-void
.end method

.method public onModeRetButtonClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 5933
    const-string/jumbo v0, "onModeRetButtonClick"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5947
    :goto_0
    return-void

    .line 5940
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    if-nez v0, :cond_1

    .line 5941
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 5946
    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 5943
    :cond_1
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->changeMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 3333
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3375
    :goto_0
    return-void

    .line 3334
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-static {p1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->roundOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    .line 3336
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->setOrientation(I)V

    .line 3338
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    if-eqz v0, :cond_1

    .line 3339
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setOrientation(I)V

    .line 3344
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->setOrientation(I)V

    .line 3347
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->setOrientation(I)V

    .line 3350
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    if-eqz v0, :cond_2

    .line 3351
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/RotateDialogController;->setOrientation(IZ)V

    .line 3354
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    if-eqz v0, :cond_3

    .line 3355
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeveloperAlertDialog:Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/developer/DeveloperRotateAlertDialog;->setOrientation(IZ)V

    .line 3358
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    if-eqz v0, :cond_4

    .line 3359
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/LightRotateDialog;->setOrientation(IZ)V

    .line 3364
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    if-eqz v0, :cond_5

    .line 3365
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->setOrientation(IZ)V

    .line 3370
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->setOrientation(I)V

    .line 3371
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setOrientation(I)V

    .line 3372
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setOrientation(I)V

    .line 3373
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->setOrientation(I)V

    goto :goto_0
.end method

.method public onOverriddenPreferencesClicked()V
    .locals 1

    .prologue
    .line 6057
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 6059
    :goto_0
    return-void

    .line 6058
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->showPreferencesToast()V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 12

    .prologue
    .line 4168
    const-string v7, "PhotoModule enter onPauseAfterSuper"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4169
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->waitCameraStartUpThread()V

    .line 4171
    invoke-static {}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->getInstance()Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->uninit()V

    .line 4177
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/ActivityBase;->isFirstStartAfterScreenOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4178
    invoke-static {}, Lcom/lenovo/scg/camera/ActivityBase;->resetFirstStartAfterScreenOn()V

    .line 4179
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/CameraHolder;->keep(I)V

    .line 4183
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eqz v7, :cond_1

    .line 4184
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 4189
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v4

    .line 4190
    .local v4, "fui":Lcom/lenovo/scg/camera/function/FunctionUI;
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    .line 4191
    .local v0, "capModeNow":Lcom/lenovo/scg/camera/mode/CaptureMode;
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->isBackToModePreview()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4192
    :cond_2
    const-string v7, "CAM_PhotoModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoPauseTest onPauseAfterSuper mIsEnteredVideoUI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    iget-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4195
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/PhotoUI;->startVideoShutterAnimation(Z)V

    .line 4196
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    .line 4199
    :cond_3
    const-string/jumbo v7, "onPauseAfterSuper: enter mModeManager.onPause"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4200
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->onPause()V

    .line 4203
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 4204
    if-eqz v4, :cond_4

    .line 4205
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/FunctionUI;->quit()V

    .line 4260
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getCameraState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_e

    .line 4261
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->stopPreview()V

    .line 4267
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v7, v7, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v7, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 4269
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mNamedImages:Lcom/lenovo/scg/camera/PhotoModule$NamedImages;

    .line 4271
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/LocationManager;->recordLocation(Z)V

    .line 4276
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v7

    if-nez v7, :cond_6

    .line 4278
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    .line 4285
    :cond_6
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4286
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4287
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4288
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4289
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4290
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4291
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4292
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4293
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 4297
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->resetScreenOn()V

    .line 4298
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/PhotoUI;->onPause()V

    .line 4300
    const/4 v7, -0x1

    iput v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 4301
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->removeMessages()V

    .line 4302
    :cond_7
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getMediaSaveService()Lcom/lenovo/scg/camera/MediaSaveService;

    move-result-object v6

    .line 4303
    .local v6, "s":Lcom/lenovo/scg/camera/MediaSaveService;
    if-eqz v6, :cond_8

    .line 4304
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/camera/MediaSaveService;->setListener(Lcom/lenovo/scg/camera/MediaSaveService$Listener;)V

    .line 4308
    :cond_8
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onPause()V

    .line 4312
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeShortcutSetting()V

    move-object v7, p0

    .line 4314
    check-cast v7, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->releaseCameraClickSound()V

    .line 4317
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    move-object v7, p0

    .line 4322
    check-cast v7, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->stopLoadingAnimate(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 4326
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeCamera()V

    .line 4331
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->stopCaptureAnim()V

    .line 4334
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->finishContinuousPage()V

    .line 4336
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->reset()V

    .line 4338
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4340
    return-void

    .line 4209
    .end local v6    # "s":Lcom/lenovo/scg/camera/MediaSaveService;
    :cond_9
    const-string/jumbo v7, "onPauseAfterSuper: not enter mModeManager.onPause"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4211
    :try_start_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    .line 4212
    if-eqz v4, :cond_a

    .line 4213
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/FunctionUI;->quit()V

    .line 4216
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v7, :cond_c

    .line 4217
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 4223
    :goto_3
    const-string v7, "display direct end"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4224
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 4225
    if-eqz v4, :cond_b

    .line 4226
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/function/FunctionUI;->quit()V

    .line 4229
    :cond_b
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v7

    sget-object v8, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->CONTINUOUS:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v7, v8, :cond_d

    .line 4230
    const-string/jumbo v7, "onPauseAfterSuper current mode = CONTINUOUS"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4231
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    .line 4232
    .local v1, "csm":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->onPowerOff()V

    .line 4234
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->resetContinuosPath()V

    .line 4235
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/lenovo/scg/camera/ActivityBase;->listContinuousShooting(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/CameraActivity;->setCameraSourcePath(Ljava/lang/String;)V

    .line 4237
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->emptyCurrentMode()V

    .line 4239
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ShutterButton;->resetStatus()V

    .line 4240
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 4247
    .end local v1    # "csm":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    :goto_4
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 4248
    .local v5, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4249
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    .line 4250
    const/4 v7, 0x1

    new-array v3, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f1008f2

    aput v8, v3, v7

    .line 4251
    .local v3, "exclude":[I
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/PhotoModule;->displayScreenExceptByHandler([I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4254
    .end local v3    # "exclude":[I
    .end local v5    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 4255
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPauseAfterSuper error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0, v7}, Lcom/lenovo/scg/camera/PhotoModule;->displayDirectWhenOnPause([I)V

    goto/16 :goto_3

    .line 4243
    :cond_d
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitMode()V

    .line 4244
    const-string/jumbo v7, "onPauseAfterSuper mModeManager exitMode end"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 4263
    :cond_e
    const-string/jumbo v7, "will not call stopPreview,because SNAPSHOT_IN_PROGRESS"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4318
    .restart local v6    # "s":Lcom/lenovo/scg/camera/MediaSaveService;
    :catch_1
    move-exception v2

    .line 4319
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onPauseBeforeSuper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4103
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    .line 4104
    const-string v3, "PhotoModule enter onPauseBeforeSuper"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4107
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 4110
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 4111
    .local v1, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4115
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 4116
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    .line 4117
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    .line 4118
    sput-boolean v4, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mIsFirstEnter:Z

    .line 4120
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/PhotoModule;->enableScreenShow(Z)V

    .line 4121
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->unlockBackKey()V

    .line 4122
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->disableSceneChange()V

    .line 4125
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 4126
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 4127
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4130
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 4131
    .local v2, "msensor":Landroid/hardware/Sensor;
    if-eqz v2, :cond_1

    .line 4132
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4135
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    if-eqz v3, :cond_2

    .line 4136
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/MediaActionSound;->release()V

    .line 4137
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    .line 4141
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    if-eqz v3, :cond_3

    .line 4142
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->stop()V

    .line 4145
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-eqz v3, :cond_4

    .line 4146
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->onBackPressed()Z

    .line 4149
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v3, :cond_5

    .line 4150
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPause()V

    .line 4153
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->getInstatnce()Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->close()V

    .line 4155
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->onPause()V

    .line 4157
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    if-eqz v3, :cond_6

    .line 4158
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->removeAboutView()Z

    .line 4160
    :cond_6
    return-void
.end method

.method public onPreviewRestarted(Z)V
    .locals 0
    .param p1, "isRestarted"    # Z

    .prologue
    .line 9073
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->isHaveResatrted:Z

    .line 9074
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 5964
    const-string v0, "copy_texture"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 5965
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5966
    return-void
.end method

.method public onQueueStatus(Z)V
    .locals 2
    .param p1, "full"    # Z

    .prologue
    .line 6134
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/PhotoUI;->enableShutter(Z)V

    .line 6135
    return-void

    .line 6134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestCameraPreferenceClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5999
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 6015
    :goto_0
    return-void

    .line 6000
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f04016a

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    .line 6001
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearAllPopupWindow()V

    .line 6002
    new-instance v4, Lcom/lenovo/scg/camera/PhotoModule$21;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/PhotoModule$21;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 6010
    .local v4, "runnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f0f0135

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x104000a

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 6013
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x10e

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    .line 6014
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mResetSettingDialog:Lcom/lenovo/scg/camera/RotateDialogController;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/RotateDialogController;->setOrientation(IZ)V

    goto :goto_0

    .line 6013
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    goto :goto_1
.end method

.method public onResumeAfterSuper()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 3925
    invoke-static {}, Lcom/lenovo/scg/camera/agender/AgenderManager;->getInstanse()Lcom/lenovo/scg/camera/agender/AgenderManager;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/camera/agender/AgenderManager;->setContext(Landroid/content/Context;)V

    .line 3926
    invoke-static {}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->getInstance()Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->init(Landroid/content/Context;)V

    .line 3928
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOpenCameraFail:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisabled:Z

    if-eqz v5, :cond_1

    .line 4029
    :cond_0
    :goto_0
    return-void

    .line 3930
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResumeAfterSuper mCameraState:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCameraStartUpThread:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3933
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v5, v11, v7, v10, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3934
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3936
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 3937
    iput v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    .line 3940
    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    if-nez v5, :cond_6

    .line 3943
    new-instance v5, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-direct {v5, p0, v6}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Lcom/lenovo/scg/camera/PhotoModule$1;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 3944
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->start()V

    .line 3945
    const-string/jumbo v5, "onResumeAfterSuper: CameraStartUpThread is started "

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3953
    :goto_1
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v5, :cond_7

    .line 3956
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initializeFirstTime()V

    .line 3961
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 3964
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v5}, Lcom/lenovo/scg/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/ui/PopupManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 3965
    const-string v5, "Camera"

    const-string v7, "PhotoModule"

    invoke-static {v5, v7}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 3968
    .local v0, "gsensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_2

    .line 3969
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, p0, v0, v13}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3972
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v12}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 3973
    .local v3, "msensor":Landroid/hardware/Sensor;
    if-eqz v3, :cond_3

    .line 3974
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, p0, v3, v13}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3984
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v5, :cond_4

    .line 3986
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onResume()V

    .line 3987
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmComboSharedPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v7, v8}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onCameraOpened(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 3993
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->getInstance()Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v7}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->initSettingSoundPlayer(Landroid/content/Context;)V

    .line 3998
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 3999
    .local v2, "manager":Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v5, v7}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4003
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openShortcutSetting()V

    move-object v5, p0

    .line 4007
    check-cast v5, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->loadCameraClickSound()V

    .line 4010
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->switch2Function()V

    .line 4014
    iput-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    .line 4015
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->enableSceneChange()V

    .line 4018
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v5, :cond_5

    .line 4019
    const-string/jumbo v7, "panhui"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFirstTimeInitialized && isImageCaptureIntent, showPostCaptureAlert, mJpegImageData length = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mJpegImageData:[B

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/PhotoUI;->showPostCaptureAlert([B)V

    .line 4024
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->getInstatnce()Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/way/FlashOpenStatusWatcher;->start(Landroid/content/Context;)V

    .line 4026
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 4027
    .local v1, "lightSensor":Landroid/hardware/Sensor;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v5, v6, v1, v12}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto/16 :goto_0

    .line 3948
    .end local v0    # "gsensor":Landroid/hardware/Sensor;
    .end local v1    # "lightSensor":Landroid/hardware/Sensor;
    .end local v2    # "manager":Landroid/support/v4/content/LocalBroadcastManager;
    .end local v3    # "msensor":Landroid/hardware/Sensor;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResumeAfterSuper:mCameraState:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":mCameraStartUpThread:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3959
    :cond_7
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initializeSecondTime()V

    goto/16 :goto_2

    .restart local v0    # "gsensor":Landroid/hardware/Sensor;
    .restart local v2    # "manager":Landroid/support/v4/content/LocalBroadcastManager;
    .restart local v3    # "msensor":Landroid/hardware/Sensor;
    :cond_8
    move-object v5, v6

    .line 4019
    goto :goto_3
.end method

.method public onResumeBeforeSuper()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3880
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    .line 3882
    const-string/jumbo v2, "onResumeBeforeSuper"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3886
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 3887
    .local v0, "act":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 3888
    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .line 3889
    .local v1, "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->firstIsCamera()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3890
    const-string v2, "first is not camera, will open camera 0"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3891
    iput v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    .line 3896
    .end local v1    # "ppAct":Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    :cond_0
    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sput v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    .line 3899
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    if-eqz v2, :cond_1

    .line 3900
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 3904
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    if-nez v2, :cond_2

    .line 3905
    new-instance v2, Lcom/lenovo/scg/camera/MediaActionSound;

    invoke-direct {v2}, Lcom/lenovo/scg/camera/MediaActionSound;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    .line 3908
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSound:Lcom/lenovo/scg/camera/MediaActionSound;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/MediaActionSound;->load(I)V

    .line 3910
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/camera/MaskBitmapHolder;->getInstance(Landroid/content/res/Resources;)Lcom/lenovo/scg/camera/MaskBitmapHolder;

    .line 3912
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-eqz v2, :cond_3

    .line 3913
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 3916
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-nez v2, :cond_4

    .line 3917
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->showAutoCameraDisplay()V

    .line 3920
    :cond_4
    return-void
.end method

.method public onScreenSizeChanged(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "previewWidth"    # I
    .param p4, "previewHeight"    # I

    .prologue
    .line 2158
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Preview size changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    .line 2162
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setPreviewSize(II)V

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0, p3, p4}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 2164
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    .line 2165
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    .line 6152
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 6154
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6155
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mGData:[F

    .line 6162
    .local v0, "data":[F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 6163
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 6162
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6156
    .end local v0    # "data":[F
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 6157
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMData:[F

    .restart local v0    # "data":[F
    goto :goto_0

    .line 6165
    .restart local v1    # "i":I
    :cond_1
    new-array v2, v5, [F

    .line 6166
    .local v2, "orientation":[F
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mR:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mGData:[F

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMData:[F

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 6167
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mR:[F

    invoke-static {v4, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 6168
    const/4 v4, 0x0

    aget v4, v2, v4

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    .line 6169
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    if-gez v4, :cond_2

    .line 6170
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHeading:I

    .line 6172
    .end local v0    # "data":[F
    .end local v1    # "i":I
    .end local v2    # "orientation":[F
    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 25
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 6849
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onSharedPreferenceChanged, key : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6859
    :try_start_0
    const-string v22, "PhotoModule onSharedPreferenceChanged()"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "KEY : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   new value : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "NULL"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6866
    :goto_0
    const-string v22, "camera_setting_whitebalance_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 6867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 6868
    .local v13, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v15

    .line 6869
    .local v15, "mini":I
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v14

    .line 6870
    .local v14, "max":I
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v3

    .line 6871
    .local v3, "a":I
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v19

    .line 6879
    .end local v3    # "a":I
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v14    # "max":I
    .end local v15    # "mini":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 6880
    const-string v22, "camera_setting_watch_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 6881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateWatchBackSettingStatus()V

    .line 6888
    :cond_1
    const-string v22, "camera_setting_storage_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 6889
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->onStoragePreferenceChanged()V

    .line 6894
    :cond_2
    const-string v22, "camera_setting_hdr_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isExpandableSettingShowed()Z

    move-result v22

    if-nez v22, :cond_3

    .line 6896
    const-string/jumbo v22, "on"

    const-string/jumbo v23, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 6897
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v22

    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    .line 6898
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->displayScreenExceptByHandler([I)V

    .line 6913
    :cond_3
    :goto_1
    const-string v22, "camera_setting_screen_bright_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 6914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->excuteUpdateScreenBrightness()V

    .line 6918
    :cond_4
    const-string v22, "camera_setting_ae_af_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 6919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 6920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->unLickAeAf()V

    .line 6925
    :cond_5
    const-string v22, "camera_setting_smart_auto_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v22

    if-nez v22, :cond_6

    .line 6926
    const-string v22, "SMART-SMART"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "off"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6927
    const-string/jumbo v22, "on"

    const-string/jumbo v23, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 6928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v22

    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 6940
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    const-string v22, "camera_setting_takepicture_type_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 6941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 6945
    :cond_7
    const-string v22, "camera_setting_picture_size_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "camera_front_setting_picture_size_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "camera_setting_preview_size_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v22, "camera_setting_picture_preview_size_key_for_mode_set"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 6950
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 6951
    .restart local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v13, :cond_d

    .line 7256
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_9
    :goto_3
    return-void

    .line 6900
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v12

    .line 6901
    .local v12, "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->isSmartSettingEnable()Z

    move-result v22

    if-eqz v22, :cond_b

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_b

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_b

    .line 6902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6904
    :cond_b
    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_3

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_3

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->FRONTBEAUTYCAMERA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_3

    .line 6905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->enterMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6932
    .end local v12    # "mNow":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v22

    sget-object v23, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    goto/16 :goto_2

    .line 6955
    .restart local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_d
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "changPictureSizeOrPreviewSize"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "===="

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 6957
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/camera/PhotoModule;->updatePicturePreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 6959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 6960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPreviewCallbackMgr:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-object/from16 v22, v0

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->changeBufferSize(Landroid/hardware/Camera$Size;)V

    .line 6964
    :cond_e
    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v18

    .line 6965
    .local v18, "s":Landroid/hardware/Camera$Size;
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v22

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setPreviewSize(II)V

    .line 6969
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v18    # "s":Landroid/hardware/Camera$Size;
    :cond_f
    const-string v22, "camera_setting_square_pic_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0f0008

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "on"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2f

    .line 6973
    const/16 v22, 0x1

    const-string/jumbo v23, "writeDefParameters2SPreferenceIfInit_0000000000000000000000000_add"

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 6974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 6983
    :cond_10
    :goto_4
    const-string v22, "camera_setting_shutter_voice_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 6984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0f0018

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "on"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_30

    .line 6985
    const-string v22, "CAM_PhotoModule"

    const-string/jumbo v23, "open sound"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->enableShutterSound(Z)V

    .line 6994
    :cond_11
    :goto_5
    const-string v22, "developer_setting_look_back_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 6995
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kbg374, key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6996
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_31

    .line 6998
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    .line 7006
    :cond_12
    :goto_6
    const-string v22, "developer_setting_zsd_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 7007
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 7008
    .local v21, "zsdKey":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v6

    .line 7009
    .local v6, "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kbg374, key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", current mode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7011
    if-eqz v21, :cond_32

    .line 7012
    const/16 v22, 0x1

    sput-boolean v22, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->SUPPORT_ZSD_DEVELOP:Z

    .line 7016
    :goto_7
    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_13

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v0, v6, :cond_13

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v0, v6, :cond_13

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-eq v0, v6, :cond_13

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SUPERNIGHT:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-object/from16 v0, v22

    if-ne v0, v6, :cond_14

    .line 7018
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 7019
    .restart local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v21, :cond_33

    .line 7020
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v22

    sget-object v23, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_OPEN:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    sget-object v24, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->changeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    .line 7021
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setSupportZSD(Z)V

    .line 7027
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->restartPreview()V

    .line 7031
    .end local v6    # "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v21    # "zsdKey":Z
    :cond_15
    const-string v22, "developer_setting_art_hdr_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 7032
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 7033
    .local v4, "artHdrKey":Z
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kbg374, art hdr key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7034
    if-eqz v4, :cond_34

    .line 7035
    const/16 v22, 0x1

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    .line 7042
    .end local v4    # "artHdrKey":Z
    :cond_16
    :goto_9
    const-string v22, "developer_setting_super_night_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 7043
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 7044
    .local v20, "supreNightKey":Z
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kbg374, super night key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    if-eqz v20, :cond_35

    .line 7046
    const/16 v22, 0x1

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    .line 7053
    .end local v20    # "supreNightKey":Z
    :cond_17
    :goto_a
    const-string v22, "developer_setting_real_night_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 7054
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 7055
    .local v17, "realNightKey":Z
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "kbg374, real night key:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7056
    if-eqz v17, :cond_36

    .line 7057
    const/16 v22, 0x1

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    .line 7064
    .end local v17    # "realNightKey":Z
    :cond_18
    :goto_b
    const-string v22, "camera_setting_shui_ping_yi_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 7065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0f0010

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "on"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_37

    .line 7066
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isExpandableSettingShowed()Z

    move-result v22

    if-nez v22, :cond_19

    .line 7067
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLevel()V

    .line 7075
    :cond_19
    :goto_c
    const-string v22, "camera_setting_goutu_line_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 7076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0f0006

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "off"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_38

    .line 7077
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLine()V

    .line 7086
    :cond_1a
    :goto_d
    const-string v22, "camera_setting_focus_type_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b

    const-string v22, "camera_setting_video_focus_type_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1b

    const-string v22, "camera_setting_takepicture_type_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 7090
    :cond_1b
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onSharedPreferenceChanged, need focus change, key = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    .line 7093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->updateFocusGroup()V

    .line 7097
    :cond_1c
    const-string v22, "camera_setting_diance_liandong"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 7098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 7099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->loadMeteringLogicEnable()V

    .line 7103
    :cond_1d
    const-string v22, "developer_setting_focus_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    .line 7104
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 7105
    .local v7, "display":Z
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onSharedPreferenceChanged, focus result display or not, key = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", value = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7106
    const-string v22, "CAM_PhotoModule"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onSharedPreferenceChanged, mPhotoUI = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1e

    .line 7108
    if-eqz v7, :cond_39

    .line 7109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/PhotoUI;->initFocusResultHint()V

    .line 7120
    .end local v7    # "display":Z
    :cond_1e
    :goto_e
    const-string v22, "camera_auto_focusmode_list_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    .line 7121
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/PhotoModule;->updateAutoFocusModeDisplay(Landroid/content/SharedPreferences;)V

    .line 7124
    :cond_1f
    const-string v22, "camera_close_agender_detect_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_20

    .line 7125
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 7126
    .local v5, "close":Z
    invoke-static {v5}, Lcom/lenovo/scg/camera/agender/AgenderManager;->setCloseAgenderDetect(Z)V

    .line 7129
    .end local v5    # "close":Z
    :cond_20
    const-string v22, "camera_display_ae_area_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_21

    .line 7130
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 7131
    .restart local v7    # "display":Z
    if-eqz v7, :cond_3a

    .line 7132
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->creat(Landroid/content/Context;)V

    .line 7139
    .end local v7    # "display":Z
    :cond_21
    :goto_f
    const-string v22, "camera_capture_way_info_show"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    .line 7140
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 7141
    .local v8, "enable":Z
    invoke-static {}, Lcom/lenovo/scg/camera/way/Prompter;->getInstance()Lcom/lenovo/scg/camera/way/Prompter;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/way/Prompter;->setPrompterEnable(Z)V

    .line 7147
    .end local v8    # "enable":Z
    :cond_22
    const-string v22, "developer_setting_camera_devices_operate_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_23

    .line 7148
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 7149
    .local v9, "isCanOperate":Z
    sput-boolean v9, Lcom/lenovo/scg/common/utils/camera/CameraParameterObserver;->isOn:Z

    .line 7152
    .end local v9    # "isCanOperate":Z
    :cond_23
    const-string v22, "developer_setting_hdr_dump_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_25

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_24

    sget-object v22, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ART_HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 7154
    :cond_24
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 7156
    .local v10, "isHDRDump":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    .line 7157
    .restart local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v22

    check-cast v22, Lcom/lenovo/scg/camera/mode/HDRMode;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v10}, Lcom/lenovo/scg/camera/mode/HDRMode;->changeHdrDump(Landroid/hardware/Camera$Parameters;Z)V

    .line 7161
    .end local v10    # "isHDRDump":Z
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_26

    .line 7162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->prepareChangeSetting()V

    .line 7163
    :cond_26
    const-string v22, "camera_setting_pin_shan_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27

    .line 7165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateAntibanding()V

    .line 7168
    :cond_27
    const-string v22, "camera_setting_flash_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    .line 7169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_28

    .line 7170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateFlash()V

    .line 7174
    :cond_28
    const-string v22, "camera_setting_mode_flash_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_29

    .line 7175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_29

    .line 7176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateFlashByMode()V

    .line 7180
    :cond_29
    const-string v22, "camera_setting_flash_third_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 7181
    const/16 v22, 0x1

    const-string v23, "KEY_CAMERA_SETTING_FLASH_THIRD"

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateImageCaptureIntentFlash()V

    .line 7185
    :cond_2a
    const-string v22, "camera_setting_ce_guang_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 7186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->updateMetering()V

    .line 7189
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2c

    .line 7190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->changeSettingFinish()V

    .line 7221
    :cond_2c
    const-string v22, "key_camera_setting_duibidu_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 7222
    const-string v22, "5"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 7223
    .local v16, "progress":I
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____duibidu"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getCameraContrastInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;

    move-result-object v11

    .line 7225
    .local v11, "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____duibidu  max: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getMaxContrast()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7226
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____duibidu  min: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getMinContrast()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7227
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____duibidu  current: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getCurContrast()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7228
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____duibidu stepSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;->getContrastStepSize()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setContrast(I)V

    .line 7233
    .end local v11    # "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraContrastInfo;
    .end local v16    # "progress":I
    :cond_2d
    const-string v22, "key_camera_setting_baohedu_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2e

    .line 7234
    const-string v22, "5"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 7235
    .restart local v16    # "progress":I
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____baohedu"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getCameraSaturationInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;

    move-result-object v11

    .line 7237
    .local v11, "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____baohedu  max: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getMaxSaturation()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7238
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____baohedu  min: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getMinSaturation()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7239
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____baohedu  stepSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getSaturationStepSize()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7240
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____baohedu  current: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;->getCurSaturation()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setSaturation(I)V

    .line 7244
    .end local v11    # "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSaturationInfo;
    .end local v16    # "progress":I
    :cond_2e
    const-string v22, "key_camera_setting_ruidu_key"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 7245
    const-string v22, "18"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 7246
    .restart local v16    # "progress":I
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____ruidu"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getCameraSharpnessInfo()Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;

    move-result-object v11

    .line 7249
    .local v11, "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____ruidu  max: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->getMaxSharpness()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7250
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____ruidu  min: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->getMinSharpness()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7251
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____ruidu  stepSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->getSharpnessStepSize()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7252
    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Setting____ruidu  current: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;->getCurrntSharpness()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 7253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setSharpness(I)V

    goto/16 :goto_3

    .line 6977
    .end local v11    # "mInfo":Lcom/lenovo/scg/camera/setting/parameters/CameraSharpnessInfo;
    .end local v16    # "progress":I
    :cond_2f
    const/16 v22, 0x1

    const-string/jumbo v23, "writeDefParameters2SPreferenceIfInit_0000000000000000000000000_remove"

    invoke-static/range {v22 .. v23}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 6978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeSquareMaskView()V

    goto/16 :goto_4

    .line 6988
    :cond_30
    const-string v22, "CAM_PhotoModule"

    const-string v23, "close sound"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->enableShutterSound(Z)V

    goto/16 :goto_5

    .line 6999
    :cond_31
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 7001
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/camera/CameraUtil;->enableScroll(Z)V

    goto/16 :goto_6

    .line 7014
    .restart local v6    # "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .restart local v21    # "zsdKey":Z
    :cond_32
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->SUPPORT_ZSD_DEVELOP:Z

    goto/16 :goto_7

    .line 7023
    .restart local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getLeSCFProxy()Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/lescf/CameraLeSCFProxy;->getDefaultModeStub()Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;

    move-result-object v22

    sget-object v23, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;->ZSD_CLOSE:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;

    sget-object v24, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_PHOTO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Lcom/lenovo/scg/camera/lescf/LeSCFDefaultModeStub;->changeZSDMode(Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDMode;Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Landroid/hardware/Camera$Parameters;

    .line 7024
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getModeManager()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/lenovo/scg/camera/mode/CaptureMode;->setSupportZSD(Z)V

    goto/16 :goto_8

    .line 7037
    .end local v6    # "currentMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .end local v13    # "mParameters":Landroid/hardware/Camera$Parameters;
    .end local v21    # "zsdKey":Z
    .restart local v4    # "artHdrKey":Z
    :cond_34
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->DEVELOP_SHOW_UI:Z

    goto/16 :goto_9

    .line 7048
    .end local v4    # "artHdrKey":Z
    .restart local v20    # "supreNightKey":Z
    :cond_35
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->DEVELOP_SHOW_UI:Z

    goto/16 :goto_a

    .line 7059
    .end local v20    # "supreNightKey":Z
    .restart local v17    # "realNightKey":Z
    :cond_36
    const/16 v22, 0x0

    sput-boolean v22, Lcom/lenovo/scg/camera/mode/NightMode;->DEVELOP_SUPPORT_TILIANG:Z

    goto/16 :goto_b

    .line 7070
    .end local v17    # "realNightKey":Z
    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeLevel()V

    goto/16 :goto_c

    .line 7079
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isExpandableSettingShowed()Z

    move-result v22

    if-nez v22, :cond_1a

    .line 7080
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLine()V

    goto/16 :goto_d

    .line 7111
    .restart local v7    # "display":Z
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/PhotoUI;->removeFocusResultHint()V

    goto/16 :goto_e

    .line 7134
    :cond_3a
    invoke-static {}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->getInstance()Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/camera/focus/AeAreaDebugAssistant;->destroy()V

    goto/16 :goto_f

    .line 6860
    .end local v7    # "display":Z
    :catch_0
    move-exception v22

    goto/16 :goto_0
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 6097
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 6098
    return-void
.end method

.method public onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V
    .locals 4
    .param p1, "button"    # Lcom/lenovo/scg/camera/ShutterButton;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3824
    const-string v2, "enter PhotoModule.onShutterButtonClick"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {p1}, Lcom/lenovo/scg/camera/ShutterButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3863
    :cond_0
    :goto_0
    return-void

    .line 3827
    :sswitch_0
    const-string v2, "case R.id.shutter_button"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3828
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3829
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_SNAP_SHOT:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    .line 3830
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 3834
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getBaseController()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "developer_setting_mem_analysis_log_key"

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3835
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v0

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/utils/android/StatusLog;->writeEvent(Ljava/lang/String;)V

    .line 3836
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->dumpNativeHeap()V

    .line 3837
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/StatusLog;->getInstance()Lcom/lenovo/scg/common/utils/android/StatusLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/utils/android/StatusLog;->dumpHprof()V

    goto :goto_0

    .line 3832
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V

    goto :goto_1

    .line 3841
    :sswitch_1
    const-string v0, "case R.id.shutter_button_video"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3842
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTimering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3845
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->onVideoShutterClick()V

    goto :goto_0

    .line 3848
    :sswitch_2
    const-string v2, "case R.id.shutter_button_video_pause"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3849
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3850
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoPaused:Z

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setIsVideoPaused(Z)V

    .line 3851
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->setVideoPauseBtnDrawable(Z)V

    .line 3853
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoPaused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3854
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDOE_PAUSE:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 3850
    goto :goto_2

    .line 3856
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_RESUME:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    goto/16 :goto_0

    .line 3859
    :cond_4
    const-string v0, "CAM_PhotoModule"

    const-string v1, "Should not show video paus button if not video recording!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3825
    :sswitch_data_0
    .sparse-switch
        0x7f10015f -> :sswitch_0
        0x7f1002a3 -> :sswitch_1
        0x7f1002a4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 3526
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonFocus, pressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordEnterOnShutterButtonFocus()V

    .line 3531
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLongPressed:Z

    if-eqz v0, :cond_0

    .line 3532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLongPressed:Z

    .line 3536
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    .line 3537
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    .line 3577
    :goto_0
    return-void

    .line 3541
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3542
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    goto :goto_0

    .line 3548
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3550
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    goto :goto_0

    .line 3555
    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->canTakePicture()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3556
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    goto :goto_0

    .line 3560
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->PANORAMA:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_6

    .line 3561
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    goto :goto_0

    .line 3565
    :cond_6
    if-eqz p1, :cond_7

    .line 3566
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onShutterDown()V

    .line 3576
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnShutterButtonFocus()V

    goto :goto_0

    .line 3573
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onShutterUp()V

    goto :goto_1
.end method

.method public onShutterButtonLongPressed(Z)Z
    .locals 7
    .param p1, "pressed"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 6276
    const-string/jumbo v2, "onShutterButtonLongPressed: %s"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6279
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6280
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6281
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 6318
    :cond_0
    :goto_0
    return v1

    .line 6289
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isBackKeyLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 6290
    const-string/jumbo v2, "onShutterButtonLongPressed: return ,isBackKeyLocked() && pressed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6295
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->checkStorage()V

    .line 6298
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->canContinuousShot()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6300
    const-string/jumbo v2, "onShutterButtonLongPressed: return ,all kinds of condicontion"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6305
    :cond_3
    if-nez p1, :cond_4

    .line 6306
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setEnabled(Z)V

    .line 6307
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6308
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6311
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLongPressed:Z

    .line 6312
    if-eqz p1, :cond_5

    .line 6313
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setCaptureing(Z)V

    .line 6314
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->startContinuousShooting()Z

    move-result v1

    goto :goto_0

    .line 6317
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->getInstance()Lcom/lenovo/scg/camera/monitor/ParametersMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/monitor/ParametersMonitor;->recordOnPictureTaken()V

    .line 6318
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->stopContinuousShooting()Z

    move-result v1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 4450
    const-string v0, "PhotoModule onSingleTapUp"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4451
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordEnterOnSingleTapUp()V

    .line 4452
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_2

    .line 4454
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnSingleTapUp()V

    .line 4486
    :cond_1
    :goto_0
    return-void

    .line 4458
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4459
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnSingleTapUp()V

    goto :goto_0

    .line 4465
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4466
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnSingleTapUp()V

    goto :goto_0

    .line 4471
    :cond_4
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSingleTapUp: mFocusAreaSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMeteringAreaSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4472
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-nez v0, :cond_5

    .line 4473
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnSingleTapUp()V

    goto :goto_0

    .line 4476
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFocus:Z

    if-eqz v0, :cond_1

    .line 4480
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    if-nez v0, :cond_6

    .line 4481
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->hideShortcutPanel()Z

    .line 4484
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onSingleTapUp(II)V

    .line 4485
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mTriggerStateMonitor:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->recordExitOnSingleTapUp()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3379
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 3381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 3383
    :cond_0
    return-void
.end method

.method protected onStoragePreferenceChanged()V
    .locals 6

    .prologue
    .line 6630
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const-string v3, "camera_setting_storage_key"

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f0015

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6632
    .local v1, "sdtype":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v2, v2, Lcom/lenovo/scg/camera/CameraActivity;->mAppBridge:Lcom/lenovo/scg/camera/ActivityBase$MyAppBridge;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/camera/Storage;->onStoragePreferenceChanged(Ljava/lang/String;Lcom/lenovo/scg/gallery3d/app/AppBridge;Landroid/content/Context;)Z

    move-result v0

    .line 6635
    .local v0, "hasChangeSDCard":Z
    if-eqz v0, :cond_0

    .line 6636
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onStoragePreferenceChanged() change to new storage success !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6639
    :cond_0
    return-void
.end method

.method public onStorageSpaceUpdated()V
    .locals 0

    .prologue
    .line 8984
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->showOrHideStorageImage()V

    .line 8985
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2224
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    if-eqz v0, :cond_2

    .line 2225
    :cond_0
    const-string/jumbo v0, "onSurfaceCreated will return,not setupPreview,error!!!"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2235
    :cond_1
    :goto_0
    return-void

    .line 2229
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 2232
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 2233
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 5864
    const-string/jumbo v0, "onThumbnailClicked"

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5874
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 5868
    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mCameraParent:Landroid/widget/RelativeLayout;

    .line 5870
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/CameraActivity;->gotoGallery(Z)V

    .line 5873
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 5974
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->keepScreenOnAwhile()V

    .line 5975
    :cond_0
    return-void
.end method

.method public onVideoMode(Z)V
    .locals 6
    .param p1, "reverse"    # Z

    .prologue
    .line 7740
    const-string v2, "CAM_PhotoModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVideoMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7742
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 7743
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "onVideoMode return since is paused!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7744
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7745
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitVideoMode()V

    .line 7776
    :cond_0
    :goto_0
    return-void

    .line 7749
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeInited:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7750
    const-string v2, "CAM_PhotoModule"

    const-string v3, "VideoStartTime VidoeMode NOT inited!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7754
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    if-nez v2, :cond_3

    .line 7755
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    .line 7757
    :cond_3
    if-nez p1, :cond_5

    .line 7758
    const-string v2, "CAM_PhotoModule"

    const-string v3, "VideoMode record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7759
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_RECORD:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    .line 7760
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    iget v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->setOrientation(I)V

    .line 7761
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoModeStarted:Z

    .line 7763
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->onStartVideoDone()V

    .line 7772
    :cond_4
    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 7773
    const-string v3, "CAM_PhotoModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    const-string v2, "VideoStartTime stop "

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "video recording costs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7765
    :cond_5
    const-string v2, "CAM_PhotoModule"

    const-string v3, "VideoMode stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7766
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;->VIDEO_STOP:Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->handleVideoEvent(Lcom/lenovo/scg/camera/mode/ModeManager$VideoClickAction;)V

    .line 7767
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    if-eqz v2, :cond_4

    .line 7768
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingUI:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    goto :goto_1

    .line 7773
    :cond_6
    const-string v2, "VideoStartTime start"

    goto :goto_2
.end method

.method public onZoomChanged(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 6102
    const-string v2, "PhotoModule:zoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onZoomChanged, index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6104
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 6124
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 6107
    .restart local p1    # "index":I
    :cond_1
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousShotStarted:Z

    if-nez v2, :cond_0

    .line 6112
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureStarted:Z

    if-nez v2, :cond_0

    .line 6115
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    .line 6116
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6117
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    .line 6119
    iget v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mZoomValue:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 6120
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "setParameters onZoomChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6121
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 6122
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 6123
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result p1

    goto :goto_0
.end method

.method public onceAutoFocus(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8451
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onSingleTapUp(II)V

    .line 8452
    return-void
.end method

.method public openGPSDialog(Landroid/app/Activity;)V
    .locals 5
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 1703
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 1704
    .local v0, "mNegativeOnClickListener":Lcom/lenovo/scg/camera/PhotoModule$NegativeOnClickListener;
    new-instance v1, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;-><init>(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 1705
    .local v1, "mPositiveOnClickListener":Lcom/lenovo/scg/camera/PhotoModule$PositiveOnClickListener;
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    if-nez v2, :cond_0

    .line 1706
    new-instance v2, Lcom/lenovo/scg/camera/LightRotateDialog;

    invoke-direct {v2, p1, v0, v1}, Lcom/lenovo/scg/camera/LightRotateDialog;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    .line 1709
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/LightRotateDialog;->showAlertDialog()V

    .line 1710
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLightRotateDialog:Lcom/lenovo/scg/camera/LightRotateDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getmOrientation()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/LightRotateDialog;->setOrientation(IZ)V

    .line 1711
    return-void
.end method

.method public openLevel()V
    .locals 2

    .prologue
    .line 7304
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "open level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7313
    :cond_0
    :goto_0
    return-void

    .line 7312
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraWaterLevel()V

    goto :goto_0
.end method

.method public openLine()V
    .locals 2

    .prologue
    .line 7321
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "open Line"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7323
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7328
    :cond_0
    :goto_0
    return-void

    .line 7327
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraLine()V

    goto :goto_0
.end method

.method public openShortcutSetting()V
    .locals 0

    .prologue
    .line 7293
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLevel()V

    .line 7294
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->openLine()V

    .line 7295
    return-void
.end method

.method public recordSmart()V
    .locals 3

    .prologue
    .line 9204
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_flash_change_auto_smart_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9206
    return-void
.end method

.method public resetFatalError()V
    .locals 3

    .prologue
    .line 8426
    const-string v0, "CAM_PhotoModule"

    const-string v1, "kbg374, resetFatalError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8427
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8432
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->onPause()V

    .line 8433
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 8434
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->onResume()V

    .line 8435
    return-void

    .line 8430
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const-string v1, "Media Server Died, \u8bf7\u8054\u7cfb\u5927\u7d22!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public resetSurfaceTextureRatio()V
    .locals 3

    .prologue
    .line 6584
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v0, v1, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/lenovo/scg/camera/CameraScreenNail;

    .line 6586
    .local v0, "screenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updatePreviewSize(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    .line 6587
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setPreviewFrameLayoutSize()V

    .line 6588
    const-string v1, "dongxt"

    const-string/jumbo v2, "resetSurfaceTextureRatio ========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6589
    return-void
.end method

.method public restartCamera()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 5036
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->closeCamera()V

    .line 5037
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    .line 5038
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoUI;->clearFaces()V

    .line 5039
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->removeMessages()V

    .line 5042
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v6, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 5043
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mComboSharedPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/SettingUtils;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 5044
    const/4 v2, 0x0

    .line 5048
    .local v2, "mParameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/CameraUtil;->openCamera(Landroid/app/Activity;I)Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    .line 5049
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/lenovo/scg/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/scg/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 5059
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->initializeCapabilities(Landroid/hardware/Camera$Parameters;)V

    .line 5060
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    aget-object v1, v4, v5

    .line 5061
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_2

    .line 5062
    .local v3, "mirror":Z
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setMirror(Z)V

    .line 5063
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->handOverParameters(Landroid/hardware/Camera$Parameters;)V

    .line 5064
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->initZSDStatus()V

    .line 5065
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    .line 5067
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->onOpenNewCamera(Landroid/hardware/Camera$Parameters;)V

    .line 5068
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->syncFlashStatus(Landroid/hardware/Camera$Parameters;)V

    .line 5069
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_1

    .line 5070
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    const-string v6, "camera_setting_takepicture_type_key"

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 5073
    .end local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :cond_1
    :goto_1
    return-void

    .line 5051
    :catch_0
    move-exception v0

    .line 5052
    .local v0, "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f04cb

    invoke-static {v4, v5, v3}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto :goto_1

    .line 5054
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 5055
    .local v0, "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f0f04cc

    invoke-static {v4, v5, v3}, Lcom/lenovo/scg/camera/CameraUtil;->showErrorAndFinish(Landroid/app/Activity;IZ)V

    goto :goto_1

    .line 5061
    .end local v0    # "e":Lcom/lenovo/scg/camera/CameraDisabledException;
    .restart local v1    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public restartPreview()V
    .locals 1

    .prologue
    .line 4998
    const-string/jumbo v0, "will call restartPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4999
    const-string/jumbo v0, "stopPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 5000
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->stopPreview()V

    .line 5001
    const-string/jumbo v0, "stopPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 5002
    const-string/jumbo v0, "setupPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 5003
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setupPreview()V

    .line 5004
    const-string/jumbo v0, "setupPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 5005
    return-void
.end method

.method public resumeVideoRecord()V
    .locals 1

    .prologue
    .line 9008
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->onVideoRetake()V

    .line 9009
    return-void
.end method

.method protected saveThumbnail2File()V
    .locals 2

    .prologue
    .line 6729
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/Thumbnail;->fromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6731
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/Thumbnail;->saveLastThumbnailToFile(Ljava/io/File;)V

    .line 6733
    :cond_0
    return-void
.end method

.method public setCameraBackgroundColor([F)V
    .locals 1
    .param p1, "color"    # [F

    .prologue
    .line 9077
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/CameraActivity;->setCameraBackgroundColor([F)V

    .line 9078
    return-void
.end method

.method protected setCameraId(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 2105
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPreferenceGroup:Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    const-string/jumbo v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;

    move-result-object v0

    .line 2106
    .local v0, "pref":Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;
    if-eqz v0, :cond_0

    .line 2107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingListPreference;->setValue(Ljava/lang/String;)V

    .line 2109
    :cond_0
    return-void
.end method

.method protected setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V
    .locals 2
    .param p1, "updateSet"    # I
    .param p2, "triggerSource"    # Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    .prologue
    .line 5602
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 5603
    const-string v0, "PhotoModule setCameraParameters"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5604
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 5607
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 5608
    const-string v0, "PhotoModule setCameraParameters"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 5612
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 5613
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "setParameters UPDATE_PARAM_PREFERENCE = 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    invoke-direct {p0, p2}, Lcom/lenovo/scg/camera/PhotoModule;->updateCameraParametersDependSharedPreferences(Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 5619
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updateFocusPara(Landroid/hardware/Camera$Parameters;)V

    .line 5622
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "setParameters setCameraParameters(int updateSet ... )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5623
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 5624
    return-void
.end method

.method protected setCameraState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3006
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    .line 3008
    packed-switch p1, :pswitch_data_0

    .line 3042
    :cond_0
    :goto_0
    return-void

    .line 3013
    :pswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 3019
    :pswitch_1
    const/4 v0, 0x0

    .line 3020
    .local v0, "isCFByAutoFocus":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 3021
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getIsCFResultUsable()Z

    move-result v0

    .line 3023
    :cond_1
    if-eqz v0, :cond_2

    .line 3024
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3025
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 3028
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 3034
    .end local v0    # "isCFByAutoFocus":Z
    :pswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->isInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3035
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/PhotoUI;->enableGestures(Z)V

    goto :goto_0

    .line 3008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFocusModeForVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "focusMode"    # Ljava/lang/String;

    .prologue
    .line 8456
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8457
    .local v0, "paras":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 8458
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 8461
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8468
    :cond_1
    :goto_0
    return-void

    .line 8465
    :cond_2
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setParameters resetFocusModeToInfinity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8466
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 8467
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 3191
    const/4 v0, 0x4

    sget-object v1, Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;->SET_FOCUS_PARAMTERS:Lcom/lenovo/scg/camera/PhotoModule$TriggerSource;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraParameters(ILcom/lenovo/scg/camera/PhotoModule$TriggerSource;)V

    .line 3192
    return-void
.end method

.method public setFocusParametersOnly()V
    .locals 3

    .prologue
    .line 3197
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setFocusParametersOnly()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3220
    :goto_0
    return-void

    .line 3204
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroup;->isCaptureing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3205
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setIsNeedSetParametesAfterCapture(Z)V

    .line 3206
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setFocusParametersOnly(): FocusGroup.isCaptureing() && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3210
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3211
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_2

    .line 3212
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->clearFocusGroup()V

    .line 3213
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "setFocusParametersOnly() mParameters == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3217
    :cond_2
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoModule;->updateFocusPara(Landroid/hardware/Camera$Parameters;)V

    .line 3218
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method protected setFocusVisibile()V
    .locals 5

    .prologue
    .line 7810
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7811
    return-void
.end method

.method public setIsCanChangeFunction(Z)V
    .locals 0
    .param p1, "isCanChangeFunction"    # Z

    .prologue
    .line 9102
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsCanChangeFunction:Z

    .line 9103
    return-void
.end method

.method public setIsFirstStartUp(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .prologue
    .line 5078
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsFirstStartUp:Z

    .line 5079
    return-void
.end method

.method public setIsVideoPaused(Z)V
    .locals 0
    .param p1, "tag"    # Z

    .prologue
    .line 7802
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoPaused:Z

    .line 7803
    return-void
.end method

.method protected setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .prologue
    .line 4491
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFilmModeChangeListener:Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .line 4498
    return-void
.end method

.method protected setParentView(Landroid/view/View;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 412
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->parentView:Landroid/view/View;

    .line 413
    return-void
.end method

.method public setPreviewFrameLayoutSize()V
    .locals 7

    .prologue
    .line 6595
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 6596
    .local v3, "width":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 6597
    .local v0, "height":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v4, v3, v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->setPreviewSize(II)V

    .line 6598
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 6599
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 6612
    :goto_0
    return-void

    .line 6600
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 6601
    .local v2, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6602
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->adjustSize(Landroid/hardware/Camera$Size;)V

    .line 6605
    :cond_2
    const-string v4, "dongxt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IntentSizeCheck setPreviewFrameLayoutSize=========size.width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6606
    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_3

    .line 6607
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v4, v4, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v4, Lcom/lenovo/scg/camera/CameraScreenNail;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 6611
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->notifyScreenNailChanged()V

    goto :goto_0

    .line 6609
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v4, v4, Lcom/lenovo/scg/camera/CameraActivity;->mCameraScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    check-cast v4, Lcom/lenovo/scg/camera/CameraScreenNail;

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method public setScaleSupported(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .prologue
    .line 8420
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->setScaleSupported(Z)V

    .line 8421
    return-void
.end method

.method protected setThumbnail(Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 0
    .param p1, "t"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 6725
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mThumbnail:Lcom/lenovo/scg/camera/Thumbnail;

    .line 6726
    return-void
.end method

.method public setThumbnailBtnClickable(Z)V
    .locals 1
    .param p1, "tag"    # Z

    .prologue
    .line 8988
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8989
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setClickable(Z)V

    .line 8991
    :cond_0
    return-void
.end method

.method public setThumbnailBtnVisible(Z)V
    .locals 2
    .param p1, "tag"    # Z

    .prologue
    .line 8994
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8995
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 8997
    if-eqz p1, :cond_0

    .line 8998
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->bringToFront()V

    .line 9001
    :cond_0
    return-void

    .line 8995
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideoAnimationDone()V
    .locals 1

    .prologue
    .line 9231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsVideoAnimDone:Z

    .line 9232
    return-void
.end method

.method protected setmActivity(Lcom/lenovo/scg/camera/CameraActivity;)V
    .locals 0
    .param p1, "mActivity"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 359
    return-void
.end method

.method protected setmLocationManager(Lcom/lenovo/scg/camera/LocationManager;)V
    .locals 0
    .param p1, "mLocationManager"    # Lcom/lenovo/scg/camera/LocationManager;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mLocationManager:Lcom/lenovo/scg/camera/LocationManager;

    .line 611
    return-void
.end method

.method protected setmOrientation(I)V
    .locals 0
    .param p1, "mOrientation"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mOrientation:I

    .line 534
    return-void
.end method

.method protected setmPaused(Z)V
    .locals 0
    .param p1, "mPaused"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    .line 381
    return-void
.end method

.method protected showProSmartIfNeed()V
    .locals 7

    .prologue
    .line 8319
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 8320
    const-string/jumbo v3, "will not showProSmartIfNeed, camera paused"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 8339
    :cond_0
    :goto_0
    return-void

    .line 8324
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFunctionManager:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 8325
    .local v1, "pfu":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    if-nez v1, :cond_2

    .line 8326
    const-string/jumbo v3, "showProSmartIfNeed pfu is null return"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 8329
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_smart_pro_key"

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v6, 0x7f0f0020

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8331
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8332
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 8333
    .local v0, "nowMod":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v3, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8334
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->addProSmartUIView()V

    goto :goto_0

    .line 8336
    .end local v0    # "nowMod":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    :cond_4
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8337
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->removeSmartUIView()V

    goto :goto_0
.end method

.method public showRightButton(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    .line 6843
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6844
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10015a

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6845
    return-void

    .line 6843
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showVideoRecordResult()V
    .locals 1

    .prologue
    .line 9004
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->showVideoResultUI()V

    .line 9005
    return-void
.end method

.method public showVideoResultUI()V
    .locals 1

    .prologue
    .line 9012
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->showVideoResultUI()V

    .line 9013
    return-void
.end method

.method public startFaceDetection()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2252
    const-string v3, "CAM_PhotoModule"

    const-string/jumbo v4, "startFaceDetection"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraConfig;->isCMCC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2254
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "startFaceDetection() is CMCC version && return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2259
    const-string v2, "CAM_PhotoModule"

    const-string/jumbo v3, "startFaceDetection() in VideoIntent && return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2263
    :cond_2
    sget-boolean v3, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v3, :cond_0

    .line 2264
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    .line 2265
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2266
    .local v1, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    .line 2267
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2268
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 2269
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    iget v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mDisplayOrientation:I

    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_3

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/lenovo/scg/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 2270
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2271
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 2269
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected declared-synchronized stopContinuousShooting()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6456
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/camera/TimeOutProtect;->getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/TimeOutProtect;->cancelTimer()V

    .line 6457
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->unlockBackKey()V

    .line 6459
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v2

    .line 6460
    .local v2, "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    instance-of v4, v2, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    if-eqz v4, :cond_0

    .line 6461
    move-object v0, v2

    check-cast v0, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;

    move-object v3, v0

    .line 6462
    .local v3, "csm":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;->setIsBreak(Z)V

    .line 6465
    .end local v3    # "csm":Lcom/lenovo/scg/camera/mode/ContinuousShootingMode;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mEnterStopContinuousShotProcess:Z

    .line 6466
    iget-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mContinuousPicReturn:Z

    if-eqz v4, :cond_1

    .line 6467
    const-string/jumbo v4, "will send message to stop continuous shoot"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6468
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x12

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6474
    :goto_0
    monitor-exit p0

    return v8

    .line 6470
    :cond_1
    :try_start_1
    const-string/jumbo v4, "will set mRequestStopContinuous = true to stop continuous shoot"

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 6471
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRequestStopContinuous:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6456
    .end local v2    # "cm":Lcom/lenovo/scg/camera/mode/CaptureMode;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public stopFaceDetection()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2283
    const-string v1, "CAM_PhotoModule"

    const-string/jumbo v2, "stopFaceDetection"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2284
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-nez v1, :cond_1

    .line 2293
    :cond_0
    :goto_0
    return-void

    .line 2285
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2287
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    .line 2288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 2289
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2290
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 2291
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoUI;->clearFaces()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5212
    const-string/jumbo v0, "stopPreview"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 5213
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 5214
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 5216
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 5218
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 5219
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onPreviewStopped()V

    .line 5220
    :cond_1
    return-void
.end method

.method public stopVideoMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3671
    const-string v0, "CAM_PhotoModule"

    const-string/jumbo v1, "stopVideoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3673
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPhotoUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/PhotoUI;->startVideoShutterAnimation(Z)V

    .line 3678
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsEnteredVideoUI:Z

    .line 3680
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3681
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3685
    :goto_1
    return-void

    .line 3675
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/PhotoModule;->onVideoMode(Z)V

    goto :goto_0

    .line 3683
    :cond_1
    const-string v0, "CAM_PhotoModule"

    const-string v1, "mHandler == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected takeMore()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3182
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 3187
    :goto_0
    return-void

    .line 3183
    :cond_0
    const-string v0, "enter takeMore"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3184
    new-instance v4, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Landroid/location/Location;)V

    .line 3185
    .local v4, "jpegPictureCallback":Lcom/lenovo/scg/camera/PhotoModule$JpegPictureCallback;
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    if-nez v0, :cond_1

    move v6, v2

    .line 3186
    .local v6, "status":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraDevice:Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;

    invoke-direct {v1, p0, v2}, Lcom/lenovo/scg/camera/PhotoModule$ShutterCallback;-><init>(Lcom/lenovo/scg/camera/PhotoModule;Z)V

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoModule;->mRawPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$RawPictureCallback;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoModule;->mPostViewPictureCallback:Lcom/lenovo/scg/camera/PhotoModule$PostViewPictureCallback;

    iget v5, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraState:I

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;II)V

    goto :goto_0

    .line 3185
    .end local v6    # "status":I
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFocusManager:Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->getFocusState()I

    move-result v6

    goto :goto_1
.end method

.method public unRecordSmart()V
    .locals 2

    .prologue
    .line 9209
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "camera_setting_flash_change_auto_smart_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9211
    return-void
.end method

.method public unlockBackKey()V
    .locals 1

    .prologue
    .line 6175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->isBackKeyLocked:Z

    .line 6176
    return-void
.end method

.method public updateCameraAppView()V
    .locals 0

    .prologue
    .line 3876
    return-void
.end method

.method public updateCameraParametersWhenImageCapture(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 8472
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setAutoExposureLockIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 8474
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 8475
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setFocusAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 8476
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoModule;->setMeteringAreasIfSupported(Landroid/hardware/Camera$Parameters;)V

    .line 8477
    return-void
.end method

.method public updatePicturePreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 13
    .param p1, "mParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 5346
    const-string v10, "liuming"

    const-string/jumbo v11, "updatePicturePreviewSize"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    if-nez p1, :cond_0

    .line 5490
    :goto_0
    return-void

    .line 5351
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v10, v11}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->setSupportPreviewSizes(Ljava/util/List;I)V

    .line 5352
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    invoke-static {v10, v11}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->setSupportPictureSizes(Ljava/util/List;I)V

    .line 5354
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v5

    .line 5356
    .local v5, "mSharedPreference":Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v10}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isBackCamera()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mModeManager:Lcom/lenovo/scg/camera/mode/ModeManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 5357
    :cond_1
    const-string v10, "liuming"

    const-string v11, "enter back camera"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5358
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    .line 5360
    .local v0, "mContext":Landroid/content/Context;
    const-string v10, "camera_setting_picture_size_key"

    const v11, 0x7f0f0002

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5363
    .local v1, "mCustomPictureRatio":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v10, :cond_3

    .line 5364
    const v10, 0x7f0f0002

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5376
    :cond_2
    :goto_1
    const-string v10, "liuming"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCustomPictureRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5378
    const/4 v6, 0x0

    .line 5379
    .local v6, "mSuitePictureSize":Landroid/hardware/Camera$Size;
    const/4 v7, 0x0

    .line 5381
    .local v7, "mSuitePreviewSize":Landroid/hardware/Camera$Size;
    const-string v10, "camera_setting_picture_preview_size_key_for_mode_set"

    invoke-virtual {v5, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5383
    const-string v10, "camera_setting_picture_preview_size_key_for_mode_set"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5385
    .local v2, "mNewSize":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 5389
    .local v3, "mNewSizeStrings":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5393
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 5395
    const-string/jumbo v10, "wangdy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "have for mode pic preview Size 001 PictureSuize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "PreviewSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v3, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5397
    const-string/jumbo v10, "wangdy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "change pic preview Size 001 PictureSuize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  #  PreviewSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5400
    const/4 v10, 0x0

    const-string v11, "chang pic preview SIze =================="

    invoke-static {v10, v11}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 5465
    .end local v2    # "mNewSize":Ljava/lang/String;
    .end local v3    # "mNewSizeStrings":[Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, v6, v7}, Lcom/lenovo/scg/camera/PhotoModule;->changePicturePreviewSizeIfNeed(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    goto/16 :goto_0

    .line 5365
    .end local v6    # "mSuitePictureSize":Landroid/hardware/Camera$Size;
    .end local v7    # "mSuitePreviewSize":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isVideoIntent()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5367
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isLowQualityVideoIntent()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5368
    const v10, 0x7f0f002e

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 5371
    :cond_4
    const v10, 0x7f0f002d

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 5403
    .restart local v6    # "mSuitePictureSize":Landroid/hardware/Camera$Size;
    .restart local v7    # "mSuitePreviewSize":Landroid/hardware/Camera$Size;
    :cond_5
    const-string v10, "16x9"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "4x3"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5406
    :cond_6
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v4

    .line 5408
    .local v4, "mRatioType":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    const-string/jumbo v10, "wangdy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SizeRatioType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v4, v11}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5411
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v4, v11}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 5415
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MID_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v4, v11}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 5425
    const-string/jumbo v10, "wangdy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "change pic preview Size 002 PictureSuize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  #  PreviewSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5430
    .end local v4    # "mRatioType":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    :cond_7
    const/4 v10, 0x0

    const-string v11, "developer pannel opened"

    invoke-static {v10, v11}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 5433
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getPictureSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5434
    const-string v10, "camera_setting_preview_size_key"

    invoke-virtual {v5, v10}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5436
    const-string v10, "camera_setting_preview_size_key"

    const-string/jumbo v11, "max"

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 5437
    .local v8, "previewSize":Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getPreviewSizeByString(Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 5455
    .end local v8    # "previewSize":Ljava/lang/String;
    :goto_3
    const-string/jumbo v10, "wangdy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "change pic preview Size 003 PictureSuize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  #  PreviewSize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5440
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v9

    .line 5444
    .local v9, "type":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoModule;->isLowQualityVideoIntent()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 5445
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->PREVIEW_SIZE_THRED_VIDEO:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v9, v11}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    goto :goto_3

    .line 5450
    :cond_9
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v9, v11}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    goto :goto_3

    .line 5467
    .end local v0    # "mContext":Landroid/content/Context;
    .end local v1    # "mCustomPictureRatio":Ljava/lang/String;
    .end local v6    # "mSuitePictureSize":Landroid/hardware/Camera$Size;
    .end local v7    # "mSuitePreviewSize":Landroid/hardware/Camera$Size;
    .end local v9    # "type":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    :cond_a
    const-string v10, "liuming"

    const-string v11, "enter front camera"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v0

    .line 5470
    .restart local v0    # "mContext":Landroid/content/Context;
    const-string v10, "camera_front_setting_picture_size_key"

    const v11, 0x7f0f002d

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5472
    .restart local v1    # "mCustomPictureRatio":Ljava/lang/String;
    const-string v10, "liuming"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCustomPictureRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    const/4 v6, 0x0

    .line 5474
    .restart local v6    # "mSuitePictureSize":Landroid/hardware/Camera$Size;
    const/4 v7, 0x0

    .line 5475
    .restart local v7    # "mSuitePreviewSize":Landroid/hardware/Camera$Size;
    const-string v10, "16x9"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 5476
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v12, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5477
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v12, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 5485
    :cond_b
    :goto_4
    const-string v10, "liuming"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PreviewSize = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    invoke-direct {p0, p1, v6, v7}, Lcom/lenovo/scg/camera/PhotoModule;->changePicturePreviewSizeIfNeed(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    goto/16 :goto_0

    .line 5479
    :cond_c
    const-string v10, "4x3"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 5481
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v12, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v6

    .line 5482
    iget v10, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraId:I

    sget-object v11, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_4_3:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v12, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v10, v11, v12}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v7

    goto :goto_4
.end method

.method public updateScreenBrightness()V
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->excuteUpdateScreenBrightness2Current()V

    .line 1875
    :cond_0
    return-void
.end method

.method public updateScreenBrightness2Max()V
    .locals 1

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mSettingExcuter:Lcom/lenovo/scg/camera/setting/SettingExecuter;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingExecuter;->excuteUpdateScreenBrightness2Max()V

    .line 1888
    :cond_0
    return-void
.end method

.method public updateStorageHintOnResume()Z
    .locals 1

    .prologue
    .line 3871
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/PhotoModule;->mFirstTimeInitialized:Z

    return v0
.end method

.method waitCameraStartUpThread()V
    .locals 4

    .prologue
    .line 4037
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    if-eqz v1, :cond_1

    .line 4038
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;->cancel()V

    .line 4039
    const/4 v0, 0x0

    .line 4040
    .local v0, "nCount":I
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 4043
    :cond_0
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4046
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 4047
    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 4048
    const-string/jumbo v1, "waitCameraStartUpThread time out --------------------!!!!!!!!!!!!!!!!"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4053
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    .line 4054
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/PhotoModule;->setCameraState(I)V

    .line 4056
    .end local v0    # "nCount":I
    :cond_1
    const-string/jumbo v1, "waitCameraStartUpThread finished,will return"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4057
    return-void

    .line 4051
    .restart local v0    # "nCount":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitCameraStartUpThread count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 4052
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraStartUpThread:Lcom/lenovo/scg/camera/PhotoModule$CameraStartUpThread;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4044
    :catch_0
    move-exception v1

    goto :goto_0
.end method
