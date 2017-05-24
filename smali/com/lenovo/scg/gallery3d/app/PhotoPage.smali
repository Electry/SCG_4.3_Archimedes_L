.class public abstract Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.super Lcom/lenovo/scg/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;
.implements Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;
.implements Lcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;
.implements Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field public static final ACTION_SIMPLE_EDIT:Ljava/lang/String; = "action_simple_edit"

.field private static final CAMERA_SWITCH_CUTOFF_THRESHOLD_MS:J = 0x12cL

.field private static final DEFERRED_UPDATE_MS:J = 0xfaL

.field private static final ENABLE_SAVE_BUTTON:I = 0x14

.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

.field public static final KEY_ALBUMPAGE_TRANSITION:Ljava/lang/String; = "albumpage-transition"

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_FROM_LocalTimeAlbumSetPage:Ljava/lang/String; = "from-LocalTimeAlbumSetPage"

.field public static final KEY_FROM_WIDGET:Ljava/lang/String; = "from_widget"

.field public static final KEY_IMAGE_FROM_CONTENT:Ljava/lang/String; = "content_image"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_IN_CAMERA_ROLL:Ljava/lang/String; = "in_camera_roll"

.field public static final KEY_IS_3RD:Ljava/lang/String; = "camera_is_3rd"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_RECORDER_BROWSE:Ljava/lang/String; = "is-record-video"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "show_when_locked"

.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final MSG_ALBUMPAGE_NONE:I = 0x0

.field public static final MSG_ALBUMPAGE_PICKED:I = 0x4

.field public static final MSG_ALBUMPAGE_RESUMED:I = 0x2

.field public static final MSG_ALBUMPAGE_STARTED:I = 0x1

.field private static final MSG_ANIMATION:I = 0x13

.field private static final MSG_BACK:I = 0x12

.field private static final MSG_BACK_PRESS:I = 0x11

.field private static final MSG_FORCE_UNLOCK_ORIENTATION:I = 0x66

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_ON_CAMERA_CENTER:I = 0x9

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_ON_PICTURE_CENTER:I = 0xa

.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8

.field private static final MSG_REFRESH_IMAGE:I = 0xb

.field private static final MSG_RESTORE_ORIENTATION_STATE:I = 0x65

.field private static final MSG_SAVE_ORIENTATION_STATE:I = 0x64

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UNLOCK_ORIENTATION:I = 0x15

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_DEFERRED:I = 0xe

.field private static final MSG_UPDATE_PANORAMA_UI:I = 0x10

.field private static final MSG_UPDATE_PHOTO_UI:I = 0xc

.field private static final MSG_UPDATE_PROGRESS:I = 0xd

.field private static final MSG_UPDATE_SHARE_URI:I = 0xf

.field private static final MSG_WANT_BARS:I = 0x7

.field private static final REQUEST_BEAUTY:I = 0x7

.field private static final REQUEST_CAMERA:I = 0x8

.field private static final REQUEST_CROP:I = 0xc

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_MOSAIC:I = 0xd

.field private static final REQUEST_PLAY_VIDEO:I = 0x5

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final REQUEST_SPECIALEFFECTS:I = 0x6

.field private static final REQUEST_TRIM:I = 0x6

.field public static final START_FROM_CONTINUE_PICTURE:Ljava/lang/String; = "START_FROM_CONTINUE_PICTURE"

.field private static final START_ZOOM_IN_AMIN:I = 0x16

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa

.field public static mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

.field public static mCameraSetPathString:Ljava/lang/String;

.field public static mFinishFlag:Z

.field public static mNewPicAdded:Z


# instance fields
.field private mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

.field private mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

.field mAudioPlayerUpdateTimer:Ljava/lang/Runnable;

.field private mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mCameraScreenNailSetPath:Ljava/lang/String;

.field private mCameraSwitchCutoff:J

.field private mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

.field private mDeferUpdateUntil:J

.field private mDeferredUpdateWaiting:Z

.field private mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

.field private mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

.field private mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

.field private mEndListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

.field private mFromWidget:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerExit:Landroid/os/Handler;

.field private mHandlerSingleTapUp:Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mHideBarBgColor:[F

.field private mIsActive:Z

.field private mIsCanSlidShow:Z

.field private mIsMenuVisible:Z

.field private mIsPanorama:Z

.field private mIsPanorama360:Z

.field private mIsPlaySpeechPic:Z

.field private mIsPlaySpeechPicStart:Z

.field private mIsRecordVideo:Z

.field private mIsSlideShow:Z

.field private mIsSpeechPic:Z

.field private mIsStartFromContinuePictures:Z

.field private mIsTimeSort:Z

.field private mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

.field private mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

.field private mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

.field mMenuExecutorOrientation:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

.field private final mMenuVisibilityListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

.field private mNfcPushUris:[Landroid/net/Uri;

.field private mOpenFromOtherApp:Z

.field private mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mOverlayRect:Landroid/graphics/Rect;

.field private mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

.field private mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

.field private mProgressListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;

.field private mRecenterCameraOnResume:Z

.field private final mRefreshBottomControlsCallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field private mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

.field private mScreenNailSet:Lcom/lenovo/scg/gallery3d/data/SnailAlbum;

.field private mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

.field private mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShowBarBgColor:[F

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mShowSpinner:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTreatBackAsUp:Z

.field private final mUpdatePanoramaMenuItemsCallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

.field private final mUpdateShareURICallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const-class v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->$assertionsDisabled:Z

    .line 372
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFinishFlag:Z

    .line 374
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNewPicAdded:Z

    return-void

    :cond_0
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;-><init>()V

    .line 224
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    .line 276
    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 281
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 284
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 297
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 310
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsPlaySpeechPicStart:Z

    .line 329
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 331
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 338
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    .line 340
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    .line 346
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 348
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 361
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOpenFromOtherApp:Z

    .line 363
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFromWidget:Z

    .line 382
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsPlaySpeechPic:Z

    .line 384
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSpeechPic:Z

    .line 394
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBarBgColor:[F

    .line 396
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHideBarBgColor:[F

    .line 398
    new-array v0, v3, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    .line 400
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-direct {v0, p0, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 404
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 414
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$2;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRefreshBottomControlsCallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 424
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$3;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    .line 485
    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEndListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

    .line 496
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$4;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 534
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$5;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerExit:Landroid/os/Handler;

    .line 701
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    .line 903
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsRecordVideo:Z

    .line 1898
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$11;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$11;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 2301
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerSingleTapUp:Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

    .line 2598
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$13;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$13;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAudioPlayerUpdateTimer:Ljava/lang/Runnable;

    .line 3539
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$14;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutorOrientation:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    return-void

    .line 394
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 396
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->secondInit(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/OrientationManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/AppBridge;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$2600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/lenovo/scg/gallery3d/app/PhotoPage;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSwitchCutoff:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$3000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 99
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->createShareIntent(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setNfcBeamPushUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/app/GalleryApp;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$4100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$4200(Lcom/lenovo/scg/gallery3d/app/PhotoPage;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->doOnSingleTapUp(II)V

    return-void
.end method

.method static synthetic access$4300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateAuidoPlayIcon()V

    return-void
.end method

.method static synthetic access$4400(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/GLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$4702(Lcom/lenovo/scg/gallery3d/app/PhotoPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$4800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Lcom/lenovo/scg/gallery3d/ui/PhotoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHideBarBgColor:[F

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)[F
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBarBgColor:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method private canDoSlideShow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1544
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return v0

    .line 1548
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1551
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canShowBars()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1653
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1654
    const-string v3, "canShowBars will return false, mAppBridge != null && mCurrentIndex == 0 && !mPhotoView.getFilmMode()"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1678
    :cond_0
    :goto_0
    return v2

    .line 1659
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    if-nez v4, :cond_2

    .line 1660
    const-string v3, "canShowBars will return false, !mActionBarAllowed"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1664
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1665
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v4, v3, :cond_3

    .line 1666
    const-string v3, "canShowBars will return false, config.touchscreen == Configuration.TOUCHSCREEN_NOTOUCH"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1671
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v4, :cond_4

    .line 1672
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 1673
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    move v2, v3

    .line 1678
    goto :goto_0
.end method

.method private static createShareIntent(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Landroid/content/Intent;
    .locals 4
    .param p0, "mediaObject"    # Lcom/lenovo/scg/gallery3d/data/MediaObject;

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getMediaType()I

    move-result v0

    .line 1337
    .local v0, "type":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private doOnSingleTapUp(II)V
    .locals 22
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2330
    const/4 v10, 0x0

    .line 2331
    .local v10, "isPlaySpeechPic":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSpeechPic:Z

    .line 2334
    const/4 v9, 0x0

    .line 2336
    .local v9, "isPanoramaPic":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->onSingleTapUp(II)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2492
    :cond_0
    :goto_0
    return-void

    .line 2340
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v11

    .line 2345
    .local v11, "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-eq v11, v0, :cond_0

    .line 2349
    const/high16 v19, 0x400000

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v20

    const/high16 v21, 0x400000

    and-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSpeechPic:Z

    .line 2351
    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v15

    .line 2352
    .local v15, "supported":I
    and-int/lit16 v0, v15, 0x80

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/4 v14, 0x1

    .line 2353
    .local v14, "playItem":Z
    :goto_2
    and-int/lit16 v0, v15, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/16 v17, 0x1

    .line 2354
    .local v17, "unlock":Z
    :goto_3
    and-int/lit16 v0, v15, 0x2000

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const/4 v7, 0x1

    .line 2355
    .local v7, "goBack":Z
    :goto_4
    const v19, 0x8000

    and-int v19, v19, v15

    if-eqz v19, :cond_d

    const/4 v12, 0x1

    .line 2358
    .local v12, "launchCamera":Z
    :goto_5
    const/16 v19, 0x4

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    const/16 v19, 0x1

    :goto_6
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isPanorama(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v20

    and-int v9, v19, v20

    .line 2359
    const-string v19, "WYJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isPanoramaPic================="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const-string v19, "WYJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "playItem================="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getWidth()I

    move-result v18

    .line 2364
    .local v18, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getHeight()I

    move-result v8

    .line 2366
    .local v8, "h":I
    if-eqz v14, :cond_10

    .line 2371
    const-string v19, "PhotoPage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mAppBridge="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",orientation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",Compensation="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x10e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2375
    :cond_2
    const-string v19, "PhotoPage"

    const-string v20, "from camera && system is portrait && in fact is landspace!!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    const/16 v16, 0x0

    .line 2378
    .local v16, "tmp":I
    move/from16 v16, p1

    .line 2379
    move/from16 p1, p2

    .line 2380
    move/from16 p2, v16

    .line 2384
    .end local v16    # "tmp":I
    :cond_3
    div-int/lit8 v19, v18, 0x2

    sub-int v19, p1, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_f

    div-int/lit8 v19, v8, 0x2

    sub-int v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    if-gt v0, v8, :cond_f

    const/4 v14, 0x1

    .line 2406
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSpeechPic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 2441
    :cond_5
    const/4 v13, 0x0

    .line 2442
    .local v13, "playCameraBrustPhoto":Z
    if-nez v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x10e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 2447
    :cond_6
    const/16 v16, 0x0

    .line 2448
    .restart local v16    # "tmp":I
    move/from16 v16, p1

    .line 2449
    move/from16 p1, p2

    .line 2450
    move/from16 p2, v16

    .line 2452
    .end local v16    # "tmp":I
    :cond_7
    div-int/lit8 v19, v18, 0x2

    sub-int v19, p1, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_15

    div-int/lit8 v19, v8, 0x2

    sub-int v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    if-gt v0, v8, :cond_15

    const/4 v13, 0x1

    .line 2455
    :cond_8
    :goto_8
    if-eqz v10, :cond_16

    .line 2457
    if-eqz v11, :cond_0

    const/high16 v19, 0x400000

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v20

    const/high16 v21, 0x400000

    and-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2458
    const-string v19, "PhotoPage"

    const-string v20, "---------PLAY Speech()--------------------start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playSpeech(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2461
    const-string v19, "PhotoPage"

    const-string v20, "---------PLAY Speech()--------------------end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2349
    .end local v7    # "goBack":Z
    .end local v8    # "h":I
    .end local v12    # "launchCamera":Z
    .end local v13    # "playCameraBrustPhoto":Z
    .end local v14    # "playItem":Z
    .end local v15    # "supported":I
    .end local v17    # "unlock":Z
    .end local v18    # "w":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2352
    .restart local v15    # "supported":I
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2353
    .restart local v14    # "playItem":Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 2354
    .restart local v17    # "unlock":Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2355
    .restart local v7    # "goBack":Z
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 2358
    .restart local v12    # "launchCamera":Z
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 2384
    .restart local v8    # "h":I
    .restart local v18    # "w":I
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 2387
    :cond_10
    if-eqz v9, :cond_4

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaModel()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 2390
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopPanorama()V

    goto/16 :goto_0

    .line 2392
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaModel()Z

    move-result v19

    if-nez v19, :cond_0

    .line 2395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v19

    const/16 v20, 0x10e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 2397
    :cond_12
    const/16 v16, 0x0

    .line 2398
    .restart local v16    # "tmp":I
    move/from16 v16, p1

    .line 2399
    move/from16 p1, p2

    .line 2400
    move/from16 p2, v16

    .line 2402
    .end local v16    # "tmp":I
    :cond_13
    div-int/lit8 v19, v18, 0x2

    sub-int v19, p1, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_14

    div-int/lit8 v19, v8, 0x2

    sub-int v19, p2, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    if-gt v0, v8, :cond_14

    const/4 v14, 0x1

    :goto_9
    goto/16 :goto_7

    :cond_14
    const/4 v14, 0x0

    goto :goto_9

    .line 2452
    .restart local v13    # "playCameraBrustPhoto":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 2464
    :cond_16
    if-eqz v14, :cond_19

    .line 2466
    const/16 v19, 0x4

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    .line 2467
    if-eqz v9, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playPanorama()V

    goto/16 :goto_0

    .line 2468
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playGif(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2471
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v11}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2473
    :cond_19
    if-eqz v13, :cond_1a

    .line 2475
    check-cast v11, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v6, v11, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 2476
    .local v6, "filePath":Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2477
    .local v4, "dir":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/local/all/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2478
    .local v5, "dirPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->playBurst(Ljava/lang/String;)V

    .line 2479
    const-string/jumbo v19, "wwf"

    const-string/jumbo v20, "playCameraBrustPhoto"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2483
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "dirPath":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .restart local v11    # "item":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isMoreItemsVisible()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->hideMoreItems()V

    goto/16 :goto_0

    .line 2487
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->toggleBars()V

    goto/16 :goto_0
.end method

.method private getEditActionBarManager()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;
    .locals 1

    .prologue
    .line 3606
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-nez v0, :cond_0

    .line 3607
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    return-object v0
.end method

.method private getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    goto :goto_0
.end method

.method private static getMediaTypeString(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 3387
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3388
    const-string v0, "Video"

    .line 3392
    :goto_0
    return-object v0

    .line 3389
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3390
    const-string v0, "Photo"

    goto :goto_0

    .line 3392
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 2052
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->hide()V

    .line 2053
    return-void
.end method

.method private init(Landroid/os/Bundle;Z)V
    .locals 18
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "isFirst"    # Z

    .prologue
    .line 3651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 3652
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 3653
    const-string v2, "app-bridge"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    .line 3655
    const-string/jumbo v2, "media-item-path"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3656
    .local v13, "itemPathString":Ljava/lang/String;
    if-eqz v13, :cond_9

    invoke-static {v13}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    .line 3658
    .local v5, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_0
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAppBridge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    const-string v2, "in_camera_roll"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 3660
    .local v12, "inCameraRoll":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v2, :cond_a

    .line 3661
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 3662
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 3663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->setServer(Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;)V

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 3667
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/SnailSource;->newId()I

    move-result v11

    .line 3668
    .local v11, "id":I
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/data/SnailSource;->getSetPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v17

    .line 3669
    .local v17, "screenNailSetPath":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/data/SnailSource;->getItemPath(I)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v16

    .line 3670
    .local v16, "screenNailItemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/SnailAlbum;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/lenovo/scg/gallery3d/data/SnailAlbum;

    .line 3671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    .line 3672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->attachScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/SnailItem;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 3674
    const-string/jumbo v2, "show_when_locked"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3676
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFlags:I

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFlags:I

    .line 3697
    :cond_0
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "this path set to camera, mSetPathString22222="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->setCameraAllPath(Ljava/lang/String;)V

    .line 3701
    const-string v2, "camera_is_3rd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3702
    .local v10, "b3Rd":Z
    if-nez v10, :cond_1

    .line 3703
    const-string v2, "/local/camera"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3707
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3708
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSetPathString333333="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    invoke-virtual/range {v17 .. v17}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraScreenNailSetPath:Ljava/lang/String;

    .line 3712
    move-object/from16 v5, v16

    .line 3720
    .end local v10    # "b3Rd":Z
    .end local v11    # "id":I
    .end local v16    # "screenNailItemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v17    # "screenNailSetPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v15

    .line 3721
    .local v15, "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_3

    instance-of v2, v15, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    if-eqz v2, :cond_3

    move-object v2, v15

    .line 3724
    check-cast v2, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 3726
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v15}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 3728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsTimeSort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3729
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v2, :cond_b

    .line 3730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/delete/time/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    .line 3732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    if-nez v2, :cond_4

    .line 3733
    const-string v2, "mMediaSetTimeSurper = null,error------------------"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3747
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    sput-object v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 3748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    .line 3749
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFlags:I

    or-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFlags:I

    .line 3754
    const-string v2, "index-hint"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3756
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3757
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    :cond_5
    if-nez v5, :cond_7

    .line 3761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v14

    .line 3762
    .local v14, "mediaItemCount":I
    if-lez v14, :cond_8

    .line 3763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v2, v14, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3764
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    .line 3771
    .end local v14    # "mediaItemCount":I
    :cond_7
    if-nez p2, :cond_d

    .line 3772
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    check-cast v1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .line 3773
    .local v1, "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    invoke-virtual {v1, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->setPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 3774
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->pause()V

    .line 3775
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->resume()V

    .line 3910
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsCanSlidShow:Z

    .line 3914
    const-string v2, "content_image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOpenFromOtherApp:Z

    .line 3917
    .end local v1    # "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    .end local v5    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v12    # "inCameraRoll":Z
    .end local v13    # "itemPathString":Ljava/lang/String;
    .end local v15    # "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_8
    return-void

    .line 3656
    .restart local v13    # "itemPathString":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 3713
    .restart local v5    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .restart local v12    # "inCameraRoll":Z
    :cond_a
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/combo/item/{/filter/camera_shortcut,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3715
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3716
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 3717
    const-string v2, "PhotoPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init:inCameraRoll mSetPathString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3736
    .restart local v15    # "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/filter/delete/{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3737
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 3738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_c

    .line 3739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 3741
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-nez v2, :cond_4

    .line 3742
    const-string v2, "mMediaSet = null,error------------------"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3778
    :cond_d
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v7, :cond_e

    const/4 v7, -0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v8, :cond_f

    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v9, :cond_10

    const/4 v9, 0x0

    :goto_6
    invoke-direct/range {v1 .. v9}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/data/MediaSet;Lcom/lenovo/scg/gallery3d/data/Path;IIZZ)V

    .line 3781
    .restart local v1    # "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    .line 3782
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setModel(Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;)V

    .line 3784
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$15;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter$DataListener;)V

    goto/16 :goto_3

    .line 3778
    .end local v1    # "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->isPanorama()Z

    move-result v8

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->isStaticCamera()Z

    move-result v9

    goto :goto_6
.end method

.method private launchCamera()V
    .locals 4

    .prologue
    .line 1367
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v3, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1368
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1369
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1370
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 0

    .prologue
    .line 1395
    return-void
.end method

.method private launchSimpleEditor()V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method private launchTinyPlanet()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method private onUpPressed()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1817
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1818
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1839
    :cond_1
    :goto_0
    return-void

    .line 1822
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getStateCount()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 1823
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setResult()V

    .line 1824
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1828
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1830
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v1, :cond_4

    .line 1832
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1833
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "media-path"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v1, "parent-media-path"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1837
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1348
    return-void
.end method

.method private preparePhotoFallbackView()V
    .locals 5

    .prologue
    .line 2984
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2985
    .local v1, "root":Lcom/lenovo/scg/gallery3d/ui/GLRoot;
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V

    .line 2986
    .local v2, "task":Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 2989
    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/lenovo/scg/gallery3d/ui/GLRoot$OnGLIdleListener;Z)V

    .line 2990
    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$PreparePhotoFallback;->get()Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2992
    .local v0, "anim":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 2994
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string/jumbo v4, "resume_animation"

    invoke-virtual {v3, v4, v0}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2996
    return-void

    .line 2992
    .end local v0    # "anim":Lcom/lenovo/scg/gallery3d/ui/PhotoFallbackEffect;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->lockRenderThread()V

    throw v3
.end method

.method private refreshHidingMessage()V
    .locals 0

    .prologue
    .line 1643
    return-void
.end method

.method private requestDeferredUpdate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 1423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferUpdateUntil:J

    .line 1424
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    if-nez v0, :cond_0

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeferredUpdateWaiting:Z

    .line 1426
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1428
    :cond_0
    return-void
.end method

.method private secondInit(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3924
    const-string/jumbo v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3925
    .local v3, "itemPathString":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 3927
    .local v2, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_0
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:mSetPathString:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const-string v7, "in_camera_roll"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3929
    .local v1, "inCameraRoll":Z
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v7, :cond_8

    .line 3930
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 3931
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/LocalMergeAlbumForCamera;->setCameraAllPath(Ljava/lang/String;)V

    .line 3933
    const-string v7, "camera_is_3rd"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3934
    .local v0, "b3Rd":Z
    if-nez v0, :cond_0

    .line 3935
    const-string v7, "/local/camera"

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3938
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/combo/item/{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraScreenNailSetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3940
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:mSetPathString1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraScreenNailSetPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 3951
    .end local v0    # "b3Rd":Z
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v5

    .line 3953
    .local v5, "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v7, :cond_2

    instance-of v7, v5, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    if-eqz v7, :cond_2

    move-object v7, v5

    .line 3957
    check-cast v7, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/gallery3d/data/ComboAlbum;->useNameOfChild(I)V

    .line 3959
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v5}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/lenovo/scg/gallery3d/data/MediaSet;)V

    .line 3961
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "secondInit:mIsTimeSort="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3962
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v7, :cond_9

    .line 3963
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/filter/delete/time/{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3964
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    .line 3966
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    if-nez v7, :cond_3

    .line 3967
    const-string v7, "mMediaSetTimeSurper = null,error------------------"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3969
    :cond_3
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:mSetPathString3:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :goto_2
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    sput-object v7, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraSetPathString:Ljava/lang/String;

    .line 3987
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_4

    .line 3988
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:failed to restore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    :cond_4
    if-nez v2, :cond_6

    .line 3992
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v4

    .line 3993
    .local v4, "mediaItemCount":I
    if-lez v4, :cond_c

    .line 3994
    iget v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lt v7, v4, :cond_5

    .line 3995
    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3996
    :cond_5
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iget v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v7, v8, v11}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 4005
    .end local v4    # "mediaItemCount":I
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    check-cast v6, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    .line 4006
    .local v6, "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    invoke-virtual {v6, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->setPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 4007
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->pause()V

    .line 4008
    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->resume()V

    .line 4009
    .end local v6    # "pda":Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;
    :goto_3
    return-void

    .line 3925
    .end local v1    # "inCameraRoll":Z
    .end local v2    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    .end local v5    # "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3943
    .restart local v1    # "inCameraRoll":Z
    .restart local v2    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_8
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/combo/item/{/filter/camera_shortcut,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3948
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:mSetPathString2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3971
    .restart local v5    # "originalSet":Lcom/lenovo/scg/gallery3d/data/MediaSet;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/filter/delete/{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 3972
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 3974
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-nez v7, :cond_a

    .line 3975
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    .line 3978
    :cond_a
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-nez v7, :cond_b

    .line 3979
    const-string v7, "mMediaSet = null,error------------------"

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 3981
    :cond_b
    const-string v7, "PhotoPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "secondInit:mSetPathString4:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4000
    .restart local v4    # "mediaItemCount":I
    :cond_c
    const-string v7, "PhotoPage"

    const-string/jumbo v8, "secondInit:PhotoPage can\'t load on an empty album."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2860
    if-nez p1, :cond_0

    .line 2878
    :goto_0
    return-void

    .line 2861
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v0

    .line 2878
    .local v0, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_0
.end method

.method private setNfcBeamPushUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNfcPushUris:[Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1333
    return-void
.end method

.method private setResult()V
    .locals 3

    .prologue
    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "result":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "result":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1844
    .restart local v0    # "result":Landroid/content/Intent;
    const-string/jumbo v1, "return-index-hint"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1845
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 1846
    return-void
.end method

.method private setupNfcBeamPush()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1316
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    if-nez v1, :cond_1

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1319
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 1320
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V

    .line 1321
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$10;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-nez v0, :cond_1

    .line 1597
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getEditActionBarManager()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getParentView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->addPhotoEditActionBar(Landroid/view/ViewGroup;)V

    .line 1573
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->hideDateMark()V

    .line 1575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->showEditBar()V

    .line 1578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1580
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1582
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->unlockOrientation()V

    .line 1587
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1588
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1590
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method private stopPanorama()V
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->stopPanoramaAnimation()Z

    .line 2518
    :cond_0
    return-void
.end method

.method private stopSpeechPic()V
    .locals 1

    .prologue
    .line 2581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsPlaySpeechPic:Z

    .line 2582
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setInitSpeechIcon()V

    .line 2595
    :cond_0
    return-void
.end method

.method private stopUpdateIcon()V
    .locals 1

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 2642
    :cond_0
    return-void
.end method

.method private switchSpeechPicIcon()V
    .locals 4

    .prologue
    .line 2631
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAudioPlayerUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2635
    :cond_0
    return-void
.end method

.method private switchToGrid()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1928
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1929
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1931
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1932
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_2

    .line 1933
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 1934
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1936
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1937
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "media-path"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v2, "parent-media-path"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v5, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v1

    .line 1943
    .local v1, "inAlbum":Z
    const-string v5, "cluster-menu"

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1945
    const-string v2, "app-bridge"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1948
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v3

    const-string/jumbo v4, "return-index-hint"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/lit8 v2, v2, -0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1950
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v2, :cond_6

    .line 1951
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 1943
    goto :goto_1

    :cond_4
    move v3, v4

    .line 1945
    goto :goto_2

    .line 1948
    :cond_5
    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    goto :goto_3

    .line 1953
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/lenovo/scg/gallery3d/app/AlbumPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->switchState(Lcom/lenovo/scg/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private toggleBars()V
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1689
    const-string/jumbo v0, "will hideBars"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 1700
    :goto_0
    return-void

    .line 1692
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    const-string/jumbo v0, "will showBars"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1694
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0

    .line 1696
    :cond_1
    const-string/jumbo v0, "no canShowBars"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3082
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getTransitionStore()Lcom/lenovo/scg/gallery3d/app/TransitionStore;

    move-result-object v2

    .line 3084
    .local v2, "transitions":Lcom/lenovo/scg/gallery3d/app/TransitionStore;
    const-string v3, "albumpage-transition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3086
    .local v0, "albumPageTransition":I
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v3, :cond_5

    .line 3090
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v3, :cond_0

    .line 3091
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3092
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetToFullViewAnimation()V

    .line 3093
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->destroy()V

    .line 3094
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    .line 3100
    :cond_0
    :goto_0
    iput v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3101
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->resetToFirstPicture()V

    .line 3116
    :cond_1
    :goto_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 3117
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v3, :cond_7

    :cond_2
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v5, v3}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 3121
    :cond_3
    :goto_3
    return-void

    .line 3096
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->hideEditBar()V

    goto :goto_0

    .line 3103
    :cond_5
    const-string v3, "index-hint"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3104
    .local v1, "resumeIndex":I
    if-ltz v1, :cond_1

    .line 3105
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_6

    .line 3107
    add-int/lit8 v1, v1, 0x1

    .line 3109
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3110
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 3111
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    iget v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->moveTo(I)V

    goto :goto_1

    .end local v1    # "resumeIndex":I
    :cond_7
    move v3, v4

    .line 3117
    goto :goto_2

    .line 3118
    :cond_8
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 3119
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_3
.end method

.method private updateAuidoPlayIcon()V
    .locals 0

    .prologue
    .line 2628
    return-void
.end method

.method private updateBars()V
    .locals 1

    .prologue
    .line 1703
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 1706
    :cond_0
    return-void
.end method

.method private updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V
    .locals 6
    .param p1, "photo"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eq v1, p1, :cond_0

    if-nez p1, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 1471
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->requestDeferredUpdate()V

    .line 1478
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1479
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDateMark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoPage.updateCurrentPhoto error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1474
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateUIForCurrentPhoto()V

    goto :goto_1

    .line 1481
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->destoryDateMark()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateMenuOperations()V
    .locals 5

    .prologue
    .line 1519
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1522
    .local v1, "menu":Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    const v3, 0x7f100aec

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1525
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1526
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canDoSlideShow()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1528
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    .line 1530
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    .line 1531
    .local v2, "supportedOperations":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-eqz v3, :cond_5

    .line 1532
    and-int/lit8 v2, v2, 0x1

    .line 1539
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    goto :goto_0

    .line 1526
    .end local v2    # "supportedOperations":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1534
    .restart local v2    # "supportedOperations":I
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mUpdatePanoramaMenuItemsCallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1535
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-nez v3, :cond_3

    .line 1536
    and-int/lit16 v2, v2, -0x201

    goto :goto_2
.end method

.method private updatePanoramaUI(Z)V
    .locals 4
    .param p1, "isPanorama360"    # Z

    .prologue
    const v3, 0x7f100b27

    .line 3348
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 3351
    .local v1, "menu":Landroid/view/Menu;
    if-nez v1, :cond_1

    .line 3370
    :cond_0
    :goto_0
    return-void

    .line 3355
    :cond_1
    invoke-static {v1, p1, p1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->updateMenuForPanorama(Landroid/view/Menu;ZZ)V

    .line 3357
    if-eqz p1, :cond_2

    .line 3358
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3359
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3360
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3361
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 3363
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    .line 3364
    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3365
    .restart local v0    # "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3366
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3367
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0664

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 4

    .prologue
    .line 1506
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    if-eqz v2, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;->hideProgress()V

    .line 1508
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    move-result-object v1

    .line 1509
    .local v1, "progressManager":Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/lenovo/scg/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    .line 1510
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;->getProgress(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    .line 1511
    .local v0, "progress":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1512
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;->setProgress(I)V

    .line 1516
    .end local v0    # "progress":Ljava/lang/Integer;
    .end local v1    # "progressManager":Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    :cond_0
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1493
    .local v0, "showTitle":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUIForCurrentPhoto()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1431
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1444
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1445
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1451
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mUpdateShareURICallback:Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPanoramaSupport(Lcom/lenovo/scg/gallery3d/data/MediaObject$PanoramaSupportCallback;)V

    .line 1454
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateProgressBar()V

    .line 1457
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1464
    :cond_4
    const-string/jumbo v0, "wangdiyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wantBars()V
    .locals 1

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showBars()V

    .line 1683
    :cond_0
    return-void
.end method


# virtual methods
.method public RotatePhoto(Z)V
    .locals 7
    .param p1, "isLeft"    # Z

    .prologue
    const/4 v6, 0x0

    .line 676
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 678
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v3, :cond_0

    .line 698
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v3, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 683
    .local v1, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    .line 684
    .local v2, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    const/4 v0, 0x0

    .line 685
    .local v0, "confirmMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 686
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 687
    if-eqz p1, :cond_1

    .line 690
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v4, 0x7f100b2d

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v4, 0x7f100b2e

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v3, v4, v5, v6, v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_0
.end method

.method public addSecureAlbumItem(ZI)V
    .locals 1
    .param p1, "isVideo"    # Z
    .param p2, "id"    # I

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/SecureAlbum;->addMediaItem(ZI)V

    .line 1883
    :goto_0
    return-void

    .line 1881
    :cond_0
    const-string v0, "addSecureAlbumItem not add Media Item"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public allowActionBar(Z)V
    .locals 0
    .param p1, "bAllowed"    # Z

    .prologue
    .line 1647
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 1648
    return-void
.end method

.method public backPanorama()V
    .locals 1

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->resetToFullViewAnimation()V

    .line 2525
    :cond_0
    return-void
.end method

.method public canDisplayBottomControl(I)Z
    .locals 4
    .param p1, "control"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1281
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    .line 1293
    :goto_0
    return v1

    .line 1284
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1286
    :pswitch_0
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1289
    :pswitch_1
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsPanorama:Z

    goto :goto_0

    .line 1291
    :pswitch_2
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsPanorama360:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x7f10079b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelSingleTap()V
    .locals 2

    .prologue
    .line 2323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerSingleTapUp:Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->removeMessages(I)V

    .line 2324
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 2325
    return-void
.end method

.method public crop()V
    .locals 7

    .prologue
    .line 745
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v5, :cond_0

    .line 757
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 750
    .local v1, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v4

    .line 751
    .local v4, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v3

    .line 752
    .local v3, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 753
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 755
    invoke-virtual {v3, v4}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 756
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    :goto_1
    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/16 v5, 0xc

    goto :goto_1
.end method

.method public deletePhoto()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 606
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 608
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v4, :cond_0

    .line 659
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 614
    .local v1, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-nez v1, :cond_1

    .line 615
    const-string/jumbo v4, "wangwf"

    const-string v5, "deletePhoto current == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 619
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 621
    .local v3, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z

    move-result v2

    .line 622
    .local v2, "isBrush":Z
    if-eqz v2, :cond_2

    .line 623
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getBrustPath(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 637
    :cond_2
    const/4 v0, 0x0

    .line 638
    .local v0, "confirmMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f110000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 639
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 640
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 643
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromContinuePictures:Z

    if-eqz v4, :cond_3

    .line 644
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setmIsFromeCamera(Z)V

    .line 650
    :goto_1
    if-eqz v2, :cond_4

    .line 652
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v5, 0x7f100b2b

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V

    goto :goto_0

    .line 646
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setmIsFromeCamera(Z)V

    goto :goto_1

    .line 656
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v5, 0x7f100b2a

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public exitPhotoPage(Ljava/lang/String;)V
    .locals 4
    .param p1, "sNewPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 561
    const-string/jumbo v0, "will exit PhotoPage"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFinishFlag:Z

    .line 564
    sput-boolean v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNewPicAdded:Z

    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerExit:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 578
    return-void
.end method

.method public firstIsCamera()Z
    .locals 1

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    .line 3622
    const/4 v0, 0x0

    .line 3624
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v0

    goto :goto_0
.end method

.method public forceUnlockOrientation()V
    .locals 2

    .prologue
    .line 2715
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2716
    return-void
.end method

.method public getAbstractGalleryActivity()Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method protected getActionBarListener()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3197
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBackgroundColorId()I
    .locals 1

    .prologue
    .line 493
    const v0, 0x7f0d001a

    return v0
.end method

.method public getBrushName(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 7
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 3471
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v2, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 3472
    .local v2, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3473
    .local v0, "dir":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 3474
    .local v4, "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3475
    .local v1, "end":I
    if-ge v1, v4, :cond_0

    .line 3476
    const/4 v3, 0x0

    .line 3479
    :goto_0
    return-object v3

    .line 3478
    :cond_0
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3479
    .local v3, "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public getBrustPath(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 4
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    .line 3465
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 3466
    .local v1, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3467
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/local/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v1, :cond_0

    .line 871
    const/4 v0, 0x0

    .line 875
    :goto_0
    return-object v0

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 875
    .local v0, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v0, :cond_0

    .line 3532
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v0

    .line 3534
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPath()Lcom/lenovo/scg/gallery3d/data/Path;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-object v1

    .line 804
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 805
    .local v0, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v1

    .line 810
    .local v1, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    goto :goto_0
.end method

.method public getCurrentPhotoHeight()I
    .locals 1

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentPhotoWidth()I
    .locals 1

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getCurrentPhotoWidth()I

    move-result v0

    return v0
.end method

.method public getEditorActionBarHeight()I
    .locals 2

    .prologue
    .line 2097
    const/4 v0, 0x0

    .line 2098
    .local v0, "editbarHeight":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v1, :cond_0

    .line 2099
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 2100
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->getVerticalEditBarHeight()I

    move-result v0

    .line 2103
    :cond_0
    return v0
.end method

.method public getEditorActionBarWidth()I
    .locals 2

    .prologue
    .line 2107
    const/4 v0, 0x0

    .line 2108
    .local v0, "editbarWidth":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v1, :cond_0

    .line 2109
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 2110
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->getFakeHorizontalEditBarWidth()I

    move-result v0

    .line 2113
    :cond_0
    return v0
.end method

.method public getEditorBarStatus()Z
    .locals 2

    .prologue
    .line 2568
    const/4 v0, 0x0

    .line 2570
    .local v0, "bIsEditorbar":Z
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2572
    :goto_0
    return v0

    .line 2570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    .line 3615
    const/4 v0, 0x0

    .line 3617
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsInCamera()Z
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v0

    return v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 3488
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v0

    .line 3491
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 818
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 820
    return-void
.end method

.method public hideBars()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1600
    const-string v1, "PhotoPage"

    const-string v2, "hideBars "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getEditActionBarManager()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->hideEditBar()V

    .line 1608
    iput-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 1609
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 1610
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 1611
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSpeechPic:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isMoveSpeechIconHor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isMoveSpeechIconVertical()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 1619
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1621
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v0

    .line 1622
    .local v0, "photo":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1623
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->setDateMark(Ljava/lang/String;)V

    .line 1629
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v1, :cond_2

    .line 1630
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->invalidate()V

    .line 1633
    :cond_2
    return-void

    .line 1625
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->destoryDateMark()V

    goto :goto_0
.end method

.method public isAutoRotate()Z
    .locals 1

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getPhotoViewAutoScreenRotated()Z

    move-result v0

    return v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 3307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    .line 3308
    const/4 v0, 0x1

    .line 3310
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isCamera()Z

    move-result v0

    goto :goto_0
.end method

.method public isCameraBrustPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 4
    .param p1, "mediaItem"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/4 v2, 0x0

    .line 3453
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v3, :cond_0

    .line 3454
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    if-eqz v3, :cond_0

    .line 3455
    check-cast p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;

    .end local p1    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    iget-object v1, p1, Lcom/lenovo/scg/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 3456
    .local v1, "filePath":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3458
    .local v0, "dir":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/util/MediaSetUtils;->getCameraPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 3461
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public isCameraTabInPhotoPage()Z
    .locals 1

    .prologue
    .line 3315
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCamera()Z

    move-result v0

    return v0
.end method

.method public isCanScroller()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2841
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v1, :cond_0

    .line 2842
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2844
    :cond_0
    :goto_0
    return v0

    .line 2842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanSlidShow()Z
    .locals 1

    .prologue
    .line 3596
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsCanSlidShow:Z

    return v0
.end method

.method public isInCamera()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2088
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenFromOtherApp()Z
    .locals 1

    .prologue
    .line 3427
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOpenFromOtherApp:Z

    return v0
.end method

.method public isSpeechPic(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .prologue
    const/high16 v2, 0x400000

    const/4 v0, 0x0

    .line 2081
    if-nez p1, :cond_1

    .line 2084
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartFromCameraOrContinuePics()Z
    .locals 1

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromContinuePictures:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isstartFromContinuePics()Z
    .locals 1

    .prologue
    .line 3567
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromContinuePictures:Z

    return v0
.end method

.method public lockOrientation()V
    .locals 1

    .prologue
    .line 3600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v0, :cond_0

    .line 3601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 3603
    :cond_0
    return-void
.end method

.method public mIsStartFromCamera()Z
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->attachScreenNail()Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/SnailItem;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 1873
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/lenovo/scg/gallery3d/data/SnailAlbum;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/SnailAlbum;->notifyChange()V

    .line 1874
    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 2722
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBarAllowed:Z

    .line 2723
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2724
    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2729
    return-void
.end method

.method public onAlbumModeSelected(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 3281
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3282
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->switchToGrid()V

    .line 3284
    :cond_0
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 1806
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setResult()V

    .line 1808
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_1

    .line 1809
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onUpPressed()V

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1811
    :cond_1
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1724
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBackPressed mAppBridge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getPanoramaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopPanorama()V

    .line 1727
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->backPanorama()V

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFromWidget:Z

    if-eqz v0, :cond_2

    .line 1731
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    .line 1734
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V

    .line 1738
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsRecordVideo:Z

    if-eqz v0, :cond_3

    .line 1739
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1742
    :cond_3
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_4

    .line 1743
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideDetails()V

    goto :goto_0

    .line 1760
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->dismissRotateDialog()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->dismissSetasRotateDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mPhotoEditorActionBar:Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditorLayout;->dissmissMoreShare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1769
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->onBackPressedWhenStartFromCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    :cond_8
    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setResult()V

    .line 1773
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1774
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    goto :goto_0

    .line 1775
    :cond_9
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_a

    .line 1776
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 1778
    :cond_a
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 1782
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->switchWithCaptureAnimation(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1784
    :cond_c
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setResult()V

    .line 1785
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_d

    .line 1786
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onUpPressed()V

    goto/16 :goto_0

    .line 1788
    :cond_d
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->onBackPressedWhenOthers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onBottomControlClicked(I)V
    .locals 0
    .param p1, "control"    # I

    .prologue
    .line 1299
    packed-switch p1, :pswitch_data_0

    .line 1310
    :goto_0
    :pswitch_0
    return-void

    .line 1301
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    goto :goto_0

    .line 1307
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchTinyPlanet()V

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x7f10079b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCommitDeleteImage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2810
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2835
    :goto_0
    return-void

    .line 2812
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2814
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-nez v0, :cond_1

    .line 2815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 2821
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-eqz v0, :cond_2

    .line 2823
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v1, 0x7f100b2b

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    .line 2829
    :goto_2
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2831
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2834
    const-string/jumbo v0, "wangdiyuan"

    const-string v1, "isCamrea"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2817
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_1

    .line 2826
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v1, 0x7f100b2a

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;ZZ)V

    goto :goto_2
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x13

    const/4 v3, 0x0

    .line 824
    const-string v0, "jiaxiaowei"

    const-string v1, "-----------onConfigurationChanged---------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isAutoRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-nez v0, :cond_2

    .line 866
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v0

    if-nez v0, :cond_6

    .line 836
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->removePhotoEditorActionBar()V

    .line 838
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->isPlayPanorama()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopPanorama()V

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->resetLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V

    .line 843
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v0, :cond_4

    .line 854
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v0, v3, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setOrientationIndicator(IZ)V

    goto :goto_0

    .line 846
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_5

    .line 847
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_1

    .line 850
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_1

    .line 859
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->removePhotoEditorActionBar()V

    .line 860
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->resetLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V

    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 863
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "restoreState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 908
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 910
    sput-boolean v10, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFinishFlag:Z

    .line 913
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const-string v11, "category_photoedit"

    const-string v12, "action_photoedit_oncreate"

    invoke-virtual {v7, v11, v12, v8, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 918
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    .line 921
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    .line 922
    new-instance v7, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v11, v10}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryContext;Z)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    .line 923
    new-instance v7, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-direct {v7, v11, v12}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/SelectionManager;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    .line 925
    new-instance v7, Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v11}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    .line 926
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v7, p0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$Listener;)V

    .line 927
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 938
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getOrientationManager()Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    .line 939
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v7, p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->addListener(Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;)V

    .line 944
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutorOrientation:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setOrientationListener(Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$OrientationListener;)V

    .line 948
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v7

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-interface {v7, v11}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 950
    const-string v7, "is-record-video"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsRecordVideo:Z

    .line 951
    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsRecordVideo:Z

    if-eqz v7, :cond_0

    .line 952
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    .line 956
    :cond_0
    const-string v7, "from_widget"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFromWidget:Z

    .line 958
    const-string/jumbo v7, "media-set-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    .line 959
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    .line 960
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setupNfcBeamPush()V

    .line 961
    const-string/jumbo v7, "media-item-path"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 962
    .local v4, "itemPathString":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 963
    .local v3, "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :goto_0
    const-string/jumbo v7, "treat-back-as-up"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mTreatBackAsUp:Z

    .line 966
    const-string v7, "START_FROM_CONTINUE_PICTURE"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromContinuePictures:Z

    .line 968
    const-string v7, "from-LocalTimeAlbumSetPage"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    .line 970
    const-string/jumbo v7, "start-in-filmstrip"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    .line 971
    const-string v7, "index-hint"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 972
    const-string v7, "PhotoPage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mSetPathString111111111="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 975
    const-string v7, "PhotoPage,onCreate,first init."

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v7, v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    invoke-direct {p0, p1, v9}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->init(Landroid/os/Bundle;Z)V

    .line 979
    const-string v7, "camera_is_3rd"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 981
    .local v0, "b3Rd":Z
    if-nez v0, :cond_1

    instance-of v7, p0, Lcom/lenovo/scg/gallery3d/app/FilmstripPage;

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromContinuePictures:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v7, :cond_1

    .line 985
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;

    invoke-direct {v7, p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Landroid/os/Bundle;)V

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$8;->start()V

    .line 1028
    .end local v0    # "b3Rd":Z
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v7

    if-le v7, v9, :cond_5

    move v7, v9

    :goto_2
    invoke-virtual {v11, v7}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setFilmMode(Z)V

    .line 1029
    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v7, :cond_6

    const v7, 0x7f100823

    :goto_3
    invoke-virtual {v9, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1030
    .local v2, "galleryRoot":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_2

    .line 1036
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mApplication:Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->getStitchingProgressManager()Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;

    move-result-object v6

    .line 1037
    .local v6, "progressManager":Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    if-eqz v6, :cond_2

    .line 1038
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    iget-object v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v9, v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressBar:Lcom/lenovo/scg/gallery3d/app/PhotoPageProgressBar;

    .line 1039
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;

    invoke-direct {v7, p0, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;

    .line 1040
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mProgressListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$UpdateProgressListener;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;)V

    .line 1041
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-eqz v7, :cond_2

    .line 1042
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    invoke-virtual {v6, v7}, Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;->addChangeListener(Lcom/lenovo/scg/gallery3d/app/StitchingChangeListener;)V

    .line 1047
    .end local v6    # "progressManager":Lcom/lenovo/scg/gallery3d/app/StitchingProgressManager;
    :cond_2
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;

    iget-object v8, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$9;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 1256
    return-void

    .end local v2    # "galleryRoot":Landroid/widget/RelativeLayout;
    .end local v3    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_3
    move-object v3, v8

    .line 962
    goto/16 :goto_0

    .line 1007
    .restart local v3    # "itemPath":Lcom/lenovo/scg/gallery3d/data/Path;
    :cond_4
    iput-boolean v9, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOpenFromOtherApp:Z

    .line 1009
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getMediaObject(Lcom/lenovo/scg/gallery3d/data/Path;)Lcom/lenovo/scg/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/lenovo/scg/gallery3d/data/MediaItem;

    .line 1012
    .local v5, "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :try_start_0
    new-instance v7, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-direct {v7, v11, v12, v5}, Lcom/lenovo/scg/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/PhotoView;Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    iput-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_4
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-virtual {v7, v11}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setModel(Lcom/lenovo/scg/gallery3d/ui/PhotoView$Model;)V

    .line 1021
    invoke-direct {p0, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/MediaItem;)V

    .line 1022
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowSpinner:Z

    .line 1024
    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsCanSlidShow:Z

    goto/16 :goto_1

    .line 1013
    :catch_0
    move-exception v1

    .line 1014
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v11, 0x7f0f064f

    invoke-static {v7, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1015
    const-string v7, "PhotoPage"

    const-string v11, "catch NullPointerException"

    invoke-static {v7, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1017
    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    goto :goto_4

    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "mediaItem":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    :cond_5
    move v7, v10

    .line 1028
    goto/16 :goto_2

    .line 1029
    :cond_6
    const v7, 0x7f100646

    goto/16 :goto_3
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 1887
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isOriginalMenuSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    :goto_0
    return v2

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const v1, 0x7f120011

    invoke-virtual {v0, v1, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->createActionBarMenu(ILandroid/view/Menu;)V

    .line 1892
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 1893
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 1894
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public onCurrentImageUpdated()V
    .locals 3

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unfreeze()V

    .line 3055
    const-string/jumbo v0, "wangdiyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    return-void
.end method

.method public onDeleteBrush(Lcom/lenovo/scg/gallery3d/data/Path;ILcom/lenovo/scg/gallery3d/data/Path;)V
    .locals 2
    .param p1, "imagePath"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "offset"    # I
    .param p3, "brushPath"    # Lcom/lenovo/scg/gallery3d/data/Path;

    .prologue
    .line 2773
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2774
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2775
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2776
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2778
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v0, :cond_1

    .line 2779
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 2784
    :goto_1
    return-void

    .line 2776
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2781
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    goto :goto_1
.end method

.method public onDeleteImage(Lcom/lenovo/scg/gallery3d/data/Path;I)V
    .locals 3
    .param p1, "path"    # Lcom/lenovo/scg/gallery3d/data/Path;
    .param p2, "offset"    # I

    .prologue
    .line 2753
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 2754
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2758
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2760
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v0, :cond_1

    .line 2761
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 2767
    :goto_1
    const-string/jumbo v0, "wangdiyuan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeleteImage mCurrentIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    return-void

    .line 2758
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2763
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->addDeletion(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3202
    const-string v0, "PhotoPage"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->destoryDateMark()V

    .line 3207
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V

    .line 3216
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->setServer(Lcom/lenovo/scg/gallery3d/app/AppBridge$Server;)V

    .line 3218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/data/SnailItem;->setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V

    .line 3219
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->detachScreenNail()V

    .line 3220
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    .line 3221
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailSet:Lcom/lenovo/scg/gallery3d/data/SnailAlbum;

    .line 3222
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mScreenNailItem:Lcom/lenovo/scg/gallery3d/data/SnailItem;

    .line 3225
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v0, :cond_1

    .line 3226
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->destroy()V

    .line 3227
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    .line 3231
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->removeListener(Lcom/lenovo/scg/gallery3d/app/OrientationManager$Listener;)V

    .line 3233
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    .line 3239
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 3240
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3242
    :cond_2
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onDestroy()V

    .line 3243
    return-void
.end method

.method public onFilmModeChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3060
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3061
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v0, :cond_0

    .line 3062
    if-eqz p1, :cond_1

    .line 3063
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 3068
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 3069
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3070
    const-string v0, "Gallery"

    const-string v1, "FilmstripPage"

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    :goto_1
    return-void

    .line 3065
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    goto :goto_0

    .line 3072
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 3073
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-lez v0, :cond_4

    .line 3074
    :cond_3
    const-string v0, "Gallery"

    const-string v1, "SinglePhotoPage"

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3076
    :cond_4
    const-string v0, "Camera"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onContentViewChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 5
    .param p1, "full"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2734
    if-eqz p1, :cond_0

    .line 2735
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2736
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v3, :cond_0

    .line 2737
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2741
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2742
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2743
    return-void

    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    move v1, v2

    .line 2741
    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1960
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v12, :cond_0

    move v10, v11

    .line 2046
    :goto_0
    return v10

    .line 1961
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 1963
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v12, v10}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v3

    .line 1967
    .local v3, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    instance-of v12, v3, Lcom/lenovo/scg/gallery3d/data/SnailItem;

    if-eqz v12, :cond_1

    move v10, v11

    goto :goto_0

    .line 1971
    :cond_1
    if-nez v3, :cond_2

    move v10, v11

    .line 1973
    goto :goto_0

    .line 1975
    :cond_2
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v12}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v4

    .line 1976
    .local v4, "currentIndex":I
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v9

    .line 1978
    .local v9, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/lenovo/scg/gallery3d/data/DataManager;

    move-result-object v7

    .line 1979
    .local v7, "manager":Lcom/lenovo/scg/gallery3d/data/DataManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1980
    .local v0, "action":I
    const/4 v2, 0x0

    .line 1981
    .local v2, "confirmMsg":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1983
    :sswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onUpPressed()V

    move v10, v11

    .line 1984
    goto :goto_0

    .line 1987
    :sswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 1988
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1990
    .local v5, "data":Landroid/os/Bundle;
    const-string/jumbo v10, "media-set-path"

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string/jumbo v10, "media-item-path"

    invoke-virtual {v9}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    const-string/jumbo v10, "photo-index"

    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1994
    const-string/jumbo v10, "repeat"

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1995
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v10

    const-class v12, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v10, v12, v11, v5}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v10, v11

    .line 1996
    goto :goto_0

    .line 1999
    .end local v5    # "data":Landroid/os/Bundle;
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    .line 2000
    .local v1, "activity":Landroid/app/Activity;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "com.android.camera.action.CROP"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2001
    .local v6, "intent":Landroid/content/Intent;
    const-class v10, Lcom/lenovo/scg/gallery3d/filtershow/crop/CropActivity;

    invoke-virtual {v6, v1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2002
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2003
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/picasasource/PicasaSource;->isPicasaImage(Lcom/lenovo/scg/gallery3d/data/MediaObject;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x3

    :goto_1
    invoke-virtual {v1, v6, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v10, v11

    .line 2004
    goto/16 :goto_0

    .line 2003
    :cond_3
    const/16 v10, 0xc

    goto :goto_1

    .line 2007
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-class v12, Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    invoke-direct {v6, v10, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2008
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2010
    const-string/jumbo v10, "media-item-path"

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v12, 0x6

    invoke-virtual {v10, v6, v12}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v10, v11

    .line 2012
    goto/16 :goto_0

    .line 2015
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v8, Lcom/lenovo/scg/gallery3d/app/MuteVideo;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/lenovo/scg/gallery3d/data/DataManager;->getContentUri(Lcom/lenovo/scg/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v12

    iget-object v13, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v8, v10, v12, v13}, Lcom/lenovo/scg/gallery3d/app/MuteVideo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V

    .line 2016
    .local v8, "muteVideo":Lcom/lenovo/scg/gallery3d/app/MuteVideo;
    invoke-virtual {v8}, Lcom/lenovo/scg/gallery3d/app/MuteVideo;->muteInBackground()V

    move v10, v11

    .line 2017
    goto/16 :goto_0

    .line 2020
    .end local v8    # "muteVideo":Lcom/lenovo/scg/gallery3d/app/MuteVideo;
    :sswitch_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchPhotoEditor()V

    move v10, v11

    .line 2021
    goto/16 :goto_0

    .line 2024
    :sswitch_6
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->launchSimpleEditor()V

    move v10, v11

    .line 2025
    goto/16 :goto_0

    .line 2028
    :sswitch_7
    iget-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v10, :cond_4

    .line 2029
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_2
    move v10, v11

    .line 2033
    goto/16 :goto_0

    .line 2031
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDetails()V

    goto :goto_2

    .line 2036
    :sswitch_8
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v12, 0x7f110000

    invoke-virtual {v10, v12, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 2041
    :sswitch_9
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 2042
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v9}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 2043
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    iget-object v12, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v10, p1, v2, v12}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Ljava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;)V

    move v10, v11

    .line 2044
    goto/16 :goto_0

    .line 1981
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f100aec -> :sswitch_1
        0x7f100b2a -> :sswitch_8
        0x7f100b2c -> :sswitch_5
        0x7f100b2d -> :sswitch_9
        0x7f100b2e -> :sswitch_9
        0x7f100b2f -> :sswitch_2
        0x7f100b30 -> :sswitch_9
        0x7f100b31 -> :sswitch_7
        0x7f100b32 -> :sswitch_9
        0x7f100b33 -> :sswitch_6
        0x7f100b34 -> :sswitch_3
        0x7f100b35 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onMenuPressed()V
    .locals 1

    .prologue
    .line 3637
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3638
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showBars()V

    .line 3639
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getEditActionBarManager()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->toggleEditorActionBarMoreItems()V

    .line 3641
    :cond_0
    return-void
.end method

.method public onOrientationCompensationChanged()V
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1720
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->requestLayoutContentPane()V

    .line 1714
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->isEditState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->resetPhotoEditActionBarLayout()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 3002
    :try_start_0
    const-string v1, "PhotoPage"

    const-string/jumbo v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onPause()V

    .line 3004
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 3006
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->unfreeze()V

    .line 3007
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3010
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->preparePhotoFallbackView()V

    .line 3013
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->pause()V

    .line 3015
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideDetails()V

    .line 3016
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-eqz v1, :cond_2

    .line 3017
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->pause()V

    .line 3019
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->pause()V

    .line 3020
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3021
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3022
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3023
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 3024
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v1, :cond_3

    .line 3025
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->disableAlbumModeMenu(Z)V

    .line 3027
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->onCommitDeleteImage()V

    .line 3028
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->pause()V

    .line 3030
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V

    .line 3034
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v1, :cond_6

    .line 3035
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->clearDeletion()V

    .line 3044
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3045
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->backPanorama()V

    .line 3050
    :cond_5
    :goto_1
    return-void

    .line 3037
    :cond_6
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->clearDeletion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3047
    :catch_0
    move-exception v0

    .line 3048
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onPictureCenter(Z)V
    .locals 4
    .param p1, "isCamera"    # Z

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 1267
    if-nez p1, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v3, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1268
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1269
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1271
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1272
    return-void

    :cond_1
    move p1, v0

    .line 1267
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1271
    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3125
    const-string v1, "PhotoPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume canShowBars:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->canShowBars()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/ActivityState;->onResume()V

    .line 3128
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v1, :cond_0

    .line 3129
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->finishState(Lcom/lenovo/scg/gallery3d/app/ActivityState;)V

    .line 3192
    :goto_0
    return-void

    .line 3132
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 3134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->freeze()V

    .line 3135
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 3136
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setContentPane(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 3138
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-eqz v1, :cond_1

    .line 3139
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->resume()V

    .line 3150
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->resume()V

    .line 3151
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSecureAlbum:Lcom/lenovo/scg/gallery3d/data/SecureAlbum;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->setDisplayOptions(ZZ)V

    .line 3152
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 3153
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3154
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowSpinner:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->getFilmMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3155
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1, v3, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->enableAlbumModeMenu(ILcom/lenovo/scg/gallery3d/app/GalleryActionBar$OnAlbumModeSelectedListener;)V

    .line 3157
    :cond_2
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v1, :cond_3

    .line 3158
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActionBar:Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/GalleryActionBar;->hide()V

    .line 3159
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 3161
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const-string v3, "image/*"

    invoke-static {v1, v3}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3162
    .local v0, "haveImageEditor":Z
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    if-eq v0, v1, :cond_4

    .line 3163
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHaveImageEditor:Z

    .line 3164
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 3167
    :cond_4
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 3168
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3170
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getEditActionBarManager()Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->onResume()V

    .line 3190
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->setOrientationSource(Lcom/lenovo/scg/gallery3d/ui/OrientationSource;)V

    goto/16 :goto_0

    .end local v0    # "haveImageEditor":Z
    :cond_5
    move v1, v3

    .line 3151
    goto :goto_1
.end method

.method public onScroll(FFFF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "totalX"    # F
    .param p4, "totalY"    # F

    .prologue
    const/4 v1, 0x0

    .line 3295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentIndex:I

    if-nez v0, :cond_0

    .line 3301
    :goto_0
    return v1

    .line 3300
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    goto :goto_0
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "source"    # Landroid/widget/ShareActionProvider;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3379
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    .line 3380
    .local v2, "timestampMillis":J
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/lenovo/scg/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaTypeString(Lcom/lenovo/scg/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    .line 3381
    .local v0, "mediaType":Ljava/lang/String;
    const-string v1, "Gallery"

    const-string v6, "Share"

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    :goto_0
    invoke-static {v1, v6, v0, v4, v5}, Lcom/lenovo/scg/gallery3d/util/UsageStatistics;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3383
    const/4 v1, 0x0

    return v1

    .line 3381
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerSingleTapUp:Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->setPos(II)V

    .line 2130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerSingleTapUp:Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$SingleTapUpHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2132
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2882
    const-string v4, "PhotoPage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateResult   requestCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    if-nez p2, :cond_1

    const/16 v4, 0x8

    if-eq p1, v4, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2887
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    .line 2889
    const/4 p2, 0x0

    .line 2891
    :cond_2
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 2892
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2910
    :pswitch_1
    if-eqz p3, :cond_0

    .line 2912
    iput-boolean v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    .line 2914
    const-string/jumbo v4, "media-item-path"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2915
    .local v3, "path":Ljava/lang/String;
    const-string/jumbo v4, "photo-index"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2916
    .local v1, "index":I
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-eqz v4, :cond_3

    .line 2917
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/lenovo/scg/gallery3d/data/Path;I)V

    .line 2920
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2922
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->lockOrientation()V

    goto :goto_0

    .line 2894
    .end local v1    # "index":I
    .end local v3    # "path":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2897
    :pswitch_3
    if-ne p2, v8, :cond_0

    .line 2898
    invoke-direct {p0, p3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 2902
    :pswitch_4
    if-ne p2, v8, :cond_0

    .line 2903
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2904
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f0f0687

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f0f04b8

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2905
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2933
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "message":Ljava/lang/String;
    :pswitch_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    if-eqz v4, :cond_0

    .line 2934
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {v4, p3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->onStateResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 2947
    :pswitch_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEndListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

    if-eqz v4, :cond_0

    .line 2948
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEndListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;->onEnd()V

    goto :goto_0

    .line 2892
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3398
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    if-nez v0, :cond_0

    .line 3399
    const-string v0, "PhotoPage"

    const-string/jumbo v1, "onTouch mAppBridge is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    const/4 v0, 0x0

    .line 3402
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mAppBridge:Lcom/lenovo/scg/gallery3d/app/AppBridge;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/app/AppBridge;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3374
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3375
    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2790
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    if-nez v0, :cond_0

    .line 2806
    :goto_0
    return-void

    .line 2793
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->setFocusHintPath(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 2795
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsTimeSort:Z

    if-eqz v0, :cond_2

    .line 2796
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSetTimeSurper:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSetTimeSurper;->removeDeletion(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 2802
    :goto_1
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    .line 2804
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeleteBrushPath:Lcom/lenovo/scg/gallery3d/data/Path;

    goto :goto_0

    .line 2798
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMediaSet:Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDeletePath:Lcom/lenovo/scg/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/data/FilterDeleteSet;->removeDeletion(Lcom/lenovo/scg/gallery3d/data/Path;)V

    goto :goto_1
.end method

.method public pickAlbum(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p1}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 3325
    return-void
.end method

.method public playBurst(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2498
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "media-path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v1, "cluster-menu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2500
    const-string v1, "camera-data-key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2501
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 2502
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 2504
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->pickAlbum(Landroid/os/Bundle;)V

    .line 2506
    return-void
.end method

.method public playGif(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 2533
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsStartFromCamera()Z

    move-result v0

    .line 2534
    .local v0, "bIsFromCamera":Z
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lenovo/scg/gallery3d/app/GifPlayerActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2535
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2536
    const-string v3, "image/gif"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2537
    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2538
    const-string v3, "From_Camera"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2539
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2545
    .end local v0    # "bIsFromCamera":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2541
    :catch_0
    move-exception v1

    .line 2542
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const v3, 0x7f0f0671

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playPanorama()V
    .locals 1

    .prologue
    .line 2511
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 2512
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->startPanoramaAnimation()Z

    .line 2513
    :cond_0
    return-void
.end method

.method public playSpeech(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 2674
    return-void
.end method

.method public playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 2851
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "video/*"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TITLE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "treat-up-as-back"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 2853
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2857
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2854
    :catch_0
    move-exception v0

    .line 2855
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0f0677

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 0

    .prologue
    .line 3345
    return-void
.end method

.method public removeCameraOverlayGLView()V
    .locals 2

    .prologue
    .line 3583
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 3584
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->removeComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)Z

    .line 3585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 3587
    :cond_0
    return-void
.end method

.method public resetPhotoEditActionBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3495
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    if-eqz v1, :cond_1

    .line 3517
    :cond_0
    :goto_0
    return-void

    .line 3498
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v0

    .line 3500
    .local v0, "orientationCompensation":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    if-eqz v1, :cond_2

    .line 3501
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setSetasDialogOrientation(IZ)V

    .line 3502
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    invoke-virtual {v1, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setProgressDialogOrientation(IZ)V

    .line 3504
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setOrientationIndicator(IZ)V

    .line 3507
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-eqz v1, :cond_3

    .line 3508
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    invoke-virtual {v1, v0, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setOrientationIndicator(IZ)V

    .line 3512
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEditActionBarManager:Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getCurrentMediaItem()Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsCanSlidShow:Z

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/edit/PhotoEditActionBarManager;->resetLayout(Lcom/lenovo/scg/gallery3d/data/MediaItem;Z)V

    .line 3514
    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 3515
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showBars()V

    goto :goto_0
.end method

.method public resetToFullViewAnimation()V
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->resetToFullViewAnimation()V

    .line 893
    return-void
.end method

.method public restoreOrientationState()V
    .locals 4

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2710
    return-void
.end method

.method public returnToCamera()V
    .locals 0

    .prologue
    .line 1801
    return-void
.end method

.method public saveOrientationState()V
    .locals 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2704
    return-void
.end method

.method public setCameraBackgroundColor([F)V
    .locals 0
    .param p1, "color"    # [F

    .prologue
    .line 3329
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->setBackgroundColor([F)V

    .line 3330
    return-void
.end method

.method public setCameraOverlayGLView(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 5
    .param p1, "view"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 3574
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 3575
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 3576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 3577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraOverlayView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOverlayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/GLView;->layout(IIII)V

    .line 3579
    :cond_0
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setCameraRelativeFrame(Landroid/graphics/Rect;)V

    .line 1855
    return-void
.end method

.method public setCameraSourcePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "mediaSetPath"    # Ljava/lang/String;

    .prologue
    .line 3442
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    instance-of v0, v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3443
    :cond_0
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraSourcePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mCameraScreenNailSetPath:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoDataAdapter;->setSourcePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 3446
    return-void
.end method

.method public setContinuousBrowseEndListener(Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mEndListener:Lcom/lenovo/scg/gallery3d/app/PhotoPage$onContinuousBrowseEndListener;

    .line 489
    return-void
.end method

.method public setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;

    .prologue
    .line 3628
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    .line 3629
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setOnFilmModeChangeListener(Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;)V

    .line 3631
    :cond_0
    return-void
.end method

.method public setOpenFromOtherApp(Z)V
    .locals 0
    .param p1, "mOpenFromOtherApp"    # Z

    .prologue
    .line 3431
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOpenFromOtherApp:Z

    .line 3432
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V

    .line 1868
    return-void
.end method

.method public setas()V
    .locals 8

    .prologue
    .line 724
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v4, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 729
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v1

    .line 730
    .local v1, "current":Lcom/lenovo/scg/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v3

    .line 731
    .local v3, "path":Lcom/lenovo/scg/gallery3d/data/Path;
    const/4 v0, 0x0

    .line 732
    .local v0, "confirmMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 733
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/lenovo/scg/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/gallery3d/ui/SelectionManager;->toggle(Lcom/lenovo/scg/gallery3d/data/Path;)V

    .line 735
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const v5, 0x7f100b30

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mConfirmDialogListener:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/lenovo/scg/gallery3d/ui/MenuExecutor$ProgressListener;Landroid/app/Activity;)V

    .line 737
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    if-eqz v4, :cond_0

    .line 738
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v2

    .line 739
    .local v2, "orientationCompensation":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/lenovo/scg/gallery3d/ui/MenuExecutor;->setSetasDialogOrientation(IZ)V

    goto :goto_0
.end method

.method public showDetails()V
    .locals 5

    .prologue
    .line 2056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 2057
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 2059
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mRootPane:Lcom/lenovo/scg/gallery3d/ui/GLView;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;Lcom/lenovo/scg/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;-><init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Lcom/lenovo/scg/gallery3d/ui/GLView;Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    .line 2061
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/PhotoPage$12;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$12;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->setCloseListener(Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;)V

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mDetailsHelper:Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mOrientationManager:Lcom/lenovo/scg/gallery3d/app/OrientationManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/OrientationManager;->getCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsHelper;->showRotateDialog(I)V

    .line 2077
    return-void
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 763
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 766
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f0a13

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 767
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0653

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage$6;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$6;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 776
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0773

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage$7;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$7;-><init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 784
    return-void
.end method

.method public slideShow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 707
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    if-nez v1, :cond_0

    .line 720
    :goto_0
    return-void

    .line 710
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideBars()V

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "media-set-path"

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->getMediaSet()Lcom/lenovo/scg/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaSet;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string/jumbo v1, "media-item-path"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcom/lenovo/scg/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/MediaItem;->getPath()Lcom/lenovo/scg/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string/jumbo v1, "photo-index"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mModel:Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 715
    const-string/jumbo v1, "repeat"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 716
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/lenovo/scg/gallery3d/app/SlideshowPage;

    invoke-virtual {v1, v2, v4, v0}, Lcom/lenovo/scg/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 718
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mIsSlideShow:Z

    goto :goto_0
.end method

.method public startZoomInAnimation()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->isStartFromCameraOrContinuePics()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->startZoomInAnimation(Z)V

    .line 885
    return-void
.end method

.method public startZoomInAnimationDelay(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 888
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    return-void
.end method

.method public stopSpeechPicPlay()V
    .locals 0

    .prologue
    .line 2576
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->stopSpeechPic()V

    .line 2577
    return-void
.end method

.method public switchWithCaptureAnimation(IZ)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "isWatchBack"    # Z

    .prologue
    .line 1859
    const-string v0, "PhotoPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchWithCaptureAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mActivity:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mPhotoView:Lcom/lenovo/scg/gallery3d/ui/PhotoView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/PhotoView;->switchWithCaptureAnimation(IZ)Z

    move-result v0

    return v0
.end method

.method public syncExitPhotoPage(Landroid/os/Handler;I)V
    .locals 4
    .param p1, "handlerNotify"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    const-string/jumbo v1, "will exit PhotoPage"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 584
    sput-boolean v3, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mFinishFlag:Z

    .line 585
    sput-boolean v2, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mNewPicAdded:Z

    .line 587
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerExit:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 588
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->mHandlerExit:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    return-void
.end method
