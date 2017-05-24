.class public Lcom/lenovo/scg/camera/PhotoUI;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;
.implements Lcom/lenovo/scg/camera/focus/FocusOverlayManager$FocusUI;
.implements Lcom/lenovo/scg/camera/LocationManager$Listener;
.implements Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;
    }
.end annotation


# static fields
.field private static final DESTROY_CAMERA_MODE_MASK_FRAME:I = 0x2

.field private static final HIDE_ALERT_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CAM_UI"


# instance fields
.field private mAboutHorizonBg:Landroid/widget/RelativeLayout;

.field private mAboutRL:Landroid/widget/RelativeLayout;

.field private mAboutVerticalBg:Landroid/widget/RelativeLayout;

.field private mActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mAppView:Landroid/widget/RelativeLayout;

.field private mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

.field public mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

.field private mControlView:Landroid/widget/RelativeLayout;

.field private mExitDialog:Landroid/app/AlertDialog;

.field private mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

.field private mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

.field private mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

.field private mHandler:Landroid/os/Handler;

.field private mIsDuringVideoStartAnim:Z

.field private mIsDuringVideoStopAnim:Z

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

.field private mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

.field private mNotSelectableToast:Landroid/widget/Toast;

.field private mObjectRect:Lcom/lenovo/scg/camera/objtracking/ObjectRectView;

.field private mOrientation:I

.field private mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

.field private mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

.field private mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

.field public mReviewDoneButton:Landroid/view/View;

.field public mReviewImage:Landroid/widget/ImageView;

.field public mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field public mReviewRetakeButton:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mShowProTutorialView:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

.field private mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

.field private mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

.field private mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

.field private mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

.field private volatile mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Ljava/lang/Object;

.field private mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field protected mThumbnailViewWidth:I

.field private mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

.field private mZoomChangeListener:Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

.field private mZoomMax:I

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

.field private rlFrame:Lcom/lenovo/scg/camera/ui/RotateLayout;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/PhotoModule;Landroid/view/View;)V
    .locals 5
    .param p1, "activity"    # Lcom/lenovo/scg/camera/CameraActivity;
    .param p2, "controller"    # Lcom/lenovo/scg/camera/PhotoModule;
    .param p3, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I

    .line 167
    iput v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I

    .line 182
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    .line 188
    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    .line 208
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .line 210
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomChangeListener:Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

    .line 219
    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$1;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mHandler:Landroid/os/Handler;

    .line 289
    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$2;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2395
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    .line 2398
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutVerticalBg:Landroid/widget/RelativeLayout;

    .line 2401
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutHorizonBg:Landroid/widget/RelativeLayout;

    .line 254
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 255
    iput-object p2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    .line 256
    iput-object p3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    .line 257
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10015a

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    .line 258
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040121

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f100761

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    .line 261
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f1006f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    .line 264
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f1005a9

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->rlFrame:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 267
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->initIndicators()V

    .line 272
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f10075f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 274
    .local v0, "faceViewStub":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 276
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v2, 0x7f100760

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/FaceView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    .line 279
    .end local v0    # "faceViewStub":Landroid/view/ViewStub;
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->initStatusbar()V

    .line 280
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->isFirstShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v2, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f1007b0

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v1}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShowProTutorialView:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    .line 283
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/PhotoUI;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->exitCamera()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/PhotoUI;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/PieRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomBarCanver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->clickAboutView()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/PhotoUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/PhotoUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStopAnim:Z

    return p1
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/PhotoUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStartAnim:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/ui/ZoomRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/PhotoUI;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    return-object v0
.end method

.method private clickAboutView()V
    .locals 2

    .prologue
    .line 2475
    const-string v0, "CAM_UI"

    const-string v1, "clickAboutView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->removeAboutView()Z

    .line 2477
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->showSCAbout()V

    .line 2478
    return-void
.end method

.method private dismissPopup(Z)V
    .locals 2
    .param p1, "fullScreen"    # Z

    .prologue
    .line 1127
    if-eqz p1, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->showUI()V

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->setShowMenu(Z)V

    .line 1132
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->removeTouchReceiver(Landroid/view/View;)V

    .line 1134
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    .line 1137
    :cond_1
    return-void
.end method

.method private exitCamera()V
    .locals 1

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V

    .line 2269
    return-void
.end method

.method private getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    goto :goto_0
.end method

.method private getReviewImageMatrix(III)Landroid/graphics/Matrix;
    .locals 7
    .param p1, "bmpWidth"    # I
    .param p2, "bmpHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 2330
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2331
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v4

    .line 2332
    .local v3, "screenWidth":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v4

    .line 2333
    .local v2, "screenHeight":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2334
    .local v1, "scale":F
    if-le p1, p2, :cond_0

    .line 2335
    int-to-float v4, p2

    div-float v1, v3, v4

    .line 2336
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2341
    :goto_0
    int-to-float v4, p1

    mul-float/2addr v4, v1

    sub-float/2addr v4, v3

    neg-float v4, v4

    div-float/2addr v4, v6

    int-to-float v5, p2

    mul-float/2addr v5, v1

    sub-float/2addr v5, v2

    neg-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2343
    int-to-float v4, p3

    div-float v5, v3, v6

    div-float v6, v2, v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2345
    return-object v0

    .line 2338
    :cond_0
    int-to-float v4, p1

    div-float v1, v3, v4

    .line 2339
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method

.method private initIndicators()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method private initStatusbar()V
    .locals 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    const v1, 0x7f10015d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1748
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$7;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$7;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1756
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 1758
    return-void
.end method

.method private openMenu()V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->cancelAutoFocus()V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showInCenter()V

    .line 696
    :cond_1
    return-void
.end method

.method private setShowMenu(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1152
    return-void
.end method

.method private showAboutViewOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 2482
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 2496
    :goto_0
    return-void

    .line 2486
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->onPause()V

    .line 2488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoUI;->clearScreen([I)V

    .line 2489
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutVerticalBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2491
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutHorizonBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2493
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutHorizonBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2494
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutVerticalBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSeriousLowBatteryDialog()V
    .locals 4

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2256
    :goto_0
    return-void

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f0f010d

    const v2, 0x7f0f0653

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->showExitDialog(Landroid/app/Activity;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    .line 2254
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2255
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showSeriousLowStorageDialog()V
    .locals 4

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2265
    :goto_0
    return-void

    .line 2262
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f0f0547

    const v2, 0x7f0f0653

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/CameraUtil;->showExitDialog(Landroid/app/Activity;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    .line 2263
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mExitDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2264
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startAnimatorShutterBtnVideo(Z)V
    .locals 11
    .param p1, "reverse"    # Z

    .prologue
    .line 382
    const-string v7, "CAM_UI"

    const-string/jumbo v8, "startAnimatorShutterBtnVideo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v5, 0x0

    .line 386
    .local v5, "translationXFrom":F
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 387
    .local v1, "mVideoOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02039b

    invoke-static {v7, v8, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 388
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 389
    .local v2, "mVideoStopOptions":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0203a1

    invoke-static {v7, v8, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 391
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ShutterButton;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/ShutterButton;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    int-to-float v0, v7

    .line 392
    .local v0, "currentCenterX":F
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    sub-float/2addr v7, v0

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 396
    .local v6, "translationXTo":F
    if-eqz p1, :cond_0

    .line 397
    move v3, v5

    .line 398
    .local v3, "swap":F
    move v5, v6

    .line 399
    move v6, v3

    .line 402
    .end local v3    # "swap":F
    :cond_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const-string/jumbo v8, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 403
    .local v4, "translateX":Landroid/animation/ObjectAnimator;
    new-instance v7, Lcom/lenovo/scg/camera/PhotoUI$3;

    invoke-direct {v7, p0, p1}, Lcom/lenovo/scg/camera/PhotoUI$3;-><init>(Lcom/lenovo/scg/camera/PhotoUI;Z)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 421
    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 423
    if-eqz p1, :cond_1

    .line 424
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const v8, 0x7f020102

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 428
    :goto_0
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 437
    return-void

    .line 426
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const v8, 0x7f020105

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private startAnimatorShutterBtnVideoPause(Z)V
    .locals 9
    .param p1, "reverse"    # Z

    .prologue
    const/4 v8, 0x0

    .line 440
    const/4 v1, 0x0

    .local v1, "alphaFrom":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 441
    .local v2, "alphaTo":F
    const/4 v4, 0x0

    .line 442
    .local v4, "visibility":I
    if-eqz p1, :cond_0

    .line 443
    move v3, v1

    .line 444
    .local v3, "swap":F
    move v1, v2

    .line 445
    move v2, v3

    .line 447
    const/16 v4, 0x8

    .line 448
    const-string v5, "CAM_UI"

    const-string v6, "View.GONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v3    # "swap":F
    :cond_0
    const-string v5, "CAM_UI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mShutterBtnVideoPause.setVisibility "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v5, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 452
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/PhotoUI;->setVideoPauseBtnDrawable(Z)V

    .line 453
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v1, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 454
    .local v0, "alpha":Landroid/animation/ObjectAnimator;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 455
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 456
    return-void
.end method

.method private startAnimatorShutterButton(Z)V
    .locals 13
    .param p1, "reverse"    # Z

    .prologue
    .line 353
    const/4 v7, 0x0

    .local v7, "translationXFrom":F
    const/high16 v8, -0x3c6d0000    # -294.0f

    .line 354
    .local v8, "translationXTo":F
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "scaleFrom":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 356
    .local v1, "scaleTo":F
    if-eqz p1, :cond_0

    .line 357
    move v5, v7

    .line 358
    .local v5, "swap":F
    move v7, v8

    .line 359
    move v8, v5

    .line 361
    move v5, v0

    .line 362
    move v0, v1

    .line 363
    move v1, v5

    .line 366
    .end local v5    # "swap":F
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const-string/jumbo v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v7, v11, v12

    const/4 v12, 0x1

    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 367
    .local v6, "translateX":Landroid/animation/ObjectAnimator;
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const-string/jumbo v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v0, v11, v12

    const/4 v12, 0x1

    aput v1, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 368
    .local v2, "scaleX":Landroid/animation/ObjectAnimator;
    iget-object v9, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const-string/jumbo v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput v0, v11, v12

    const/4 v12, 0x1

    aput v1, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 369
    .local v3, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 370
    .local v4, "set":Landroid/animation/AnimatorSet;
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 371
    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 373
    return-void
.end method


# virtual methods
.method public addAboutView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2408
    const-string v0, "CAM_UI"

    const-string v1, "addAboutView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2410
    const-string v0, "CAM_UI"

    const-string v1, "addAboutView, mAboutRL != null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :goto_0
    return-void

    .line 2414
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearScreenExceptWithoutAnim([I)V

    .line 2415
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->hideUISetting()Z

    .line 2416
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->pause()V

    .line 2418
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 2420
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    .line 2421
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2422
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$8;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$8;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2435
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    const v1, 0x7f100066

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutVerticalBg:Landroid/widget/RelativeLayout;

    .line 2436
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutVerticalBg:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$9;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2445
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutHorizonBg:Landroid/widget/RelativeLayout;

    .line 2446
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutHorizonBg:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/lenovo/scg/camera/PhotoUI$10;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/PhotoUI$10;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2454
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoUI;->showAboutViewOrientation(I)V

    goto :goto_0
.end method

.method public addGesturesUnclickableArea(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 664
    const-string/jumbo v0, "panhui7"

    const-string/jumbo v1, "photoui addGesturesUnclickableArea, mGestures != null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 670
    :goto_0
    return-void

    .line 667
    :cond_0
    const-string/jumbo v0, "panhui7"

    const-string/jumbo v1, "photoui addGesturesUnclickableArea, mGestures = null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addModeRetButton()V
    .locals 9

    .prologue
    const v8, 0x7f1001b8

    const/4 v7, -0x1

    .line 1936
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v4, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v5, 0x7f10015b

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1939
    .local v2, "rlLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1940
    .local v0, "btn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    if-nez v0, :cond_0

    .line 1941
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040047

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1942
    .local v3, "vBtnRet":Landroid/view/View;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1943
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1944
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "btn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1945
    .restart local v0    # "btn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    goto :goto_0
.end method

.method public cleanVideoScreen()V
    .locals 2

    .prologue
    .line 1323
    const-string v0, "CAM_UI"

    const-string v1, "3rdVideo cleanVideoScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1327
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1328
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1330
    :cond_0
    return-void
.end method

.method public clearFaces()V
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->clear()V

    .line 1528
    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .prologue
    .line 1532
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;

    move-result-object v0

    .line 1533
    .local v0, "indicator":Lcom/lenovo/scg/camera/focus/FocusIndicator;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->clear()V

    .line 1534
    :cond_0
    return-void
.end method

.method public clearScreen([I)V
    .locals 13
    .param p1, "exclude"    # [I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 478
    const-string v6, "CAM_UI"

    const-string v7, "clearScreen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v7, 0x7f1008f2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 481
    .local v3, "smartView":Landroid/view/View;
    const/4 v6, 0x7

    new-array v5, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object v3, v5, v6

    .line 483
    .local v5, "views":[Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_0

    .line 484
    const/16 v6, 0x8

    new-array v5, v6, [Landroid/view/View;

    .end local v5    # "views":[Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object v3, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    .line 488
    .restart local v5    # "views":[Landroid/view/View;
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 489
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 490
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 488
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    :cond_2
    if-eqz v4, :cond_1

    .line 492
    invoke-static {v4}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    goto :goto_1

    .line 496
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->removeZoomBar()V

    .line 499
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v6, :cond_4

    .line 500
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->hideAutoCameraDisplay()V

    .line 503
    :cond_4
    return-void
.end method

.method public clearScreenWithoutAnim([I)V
    .locals 13
    .param p1, "exclude"    # [I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 512
    const-string v6, "CAM_UI"

    const-string v7, "clearScreenWithoutAnim"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    const v7, 0x7f1008f2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 515
    .local v3, "smartView":Landroid/view/View;
    const/4 v6, 0x7

    new-array v5, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object v3, v5, v6

    .line 517
    .local v5, "views":[Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_0

    .line 518
    const/16 v6, 0x8

    new-array v5, v6, [Landroid/view/View;

    .end local v5    # "views":[Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v5, v12

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    aput-object v3, v5, v6

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->getRootView()Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    .line 522
    .restart local v5    # "views":[Landroid/view/View;
    :cond_0
    move-object v0, v5

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 523
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 524
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_2
    if-eqz v4, :cond_1

    .line 526
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 530
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->removeZoomBar()V

    .line 533
    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v6, :cond_4

    .line 534
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->hideAutoCameraDisplay()V

    .line 537
    :cond_4
    return-void
.end method

.method public collapseCameraControls()Z
    .locals 2

    .prologue
    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->dismissPopup()V

    .line 1159
    const/4 v0, 0x1

    .line 1161
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->onShowSwitcherPopup()V

    .line 1162
    return v0
.end method

.method public destroyCameraModeMaskFrame()V
    .locals 2

    .prologue
    .line 2305
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->setVisibility(I)V

    .line 2307
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->clearAnimation()V

    .line 2308
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    .line 2311
    :cond_0
    return-void
.end method

.method public destroyLe3dWindow()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->isLe3dFrameVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onBackPressed()V

    .line 1034
    :cond_0
    return-void
.end method

.method public dismissPopup()V
    .locals 1

    .prologue
    .line 1123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/PhotoUI;->dismissPopup(Z)V

    .line 1124
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->dispatchTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1024
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayScreen([I)V
    .locals 12
    .param p1, "exclude"    # [I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 546
    const-string v5, "CAM_UI"

    const-string v6, "displayScreen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v5, 0x6

    new-array v4, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v4, v5

    .line 549
    .local v4, "views":[Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 550
    new-array v4, v9, [Landroid/view/View;

    .end local v4    # "views":[Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v5, v4, v8

    .line 554
    .restart local v4    # "views":[Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 555
    const/4 v5, 0x7

    new-array v4, v5, [Landroid/view/View;

    .end local v4    # "views":[Landroid/view/View;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->getRootView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    .line 559
    .restart local v4    # "views":[Landroid/view/View;
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 560
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 562
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 559
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 551
    .end local v0    # "arr$":[Landroid/view/View;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 552
    new-array v4, v7, [Landroid/view/View;

    goto :goto_0

    .line 563
    .restart local v0    # "arr$":[Landroid/view/View;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_4
    if-eqz v3, :cond_2

    .line 564
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    goto :goto_2

    .line 568
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->showAutoCameraDisplay()V

    .line 570
    return-void
.end method

.method public enableGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 976
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->setEnabled(Z)V

    .line 979
    :cond_0
    return-void
.end method

.method public enablePreviewThumb(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1099
    return-void
.end method

.method public enableShutter(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ShutterButton;->setEnabled(Z)V

    .line 1490
    :cond_0
    return-void
.end method

.method public getAppView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method public getControlView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getController()Lcom/lenovo/scg/camera/PhotoController;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    return-object v0
.end method

.method public getFaceView()Lcom/lenovo/scg/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashStatusByModeBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getFlashStatusByModeBar()Ljava/lang/String;

    move-result-object v0

    .line 2002
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusResultScreenHint()Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;
    .locals 1

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    return-object v0
.end method

.method public getFrameManager()Lcom/lenovo/scg/common/le3d/Le3dFrameManager;
    .locals 1

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 1897
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 970
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomMax:I

    return v0
.end method

.method public getModeButton()Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getModeRetButton()Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getModeStatusBar()Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 2375
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceTexture()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    return-object v0
.end method

.method public getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/lenovo/scg/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getThumbnailViewWidth()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailViewWidth:I

    return v0
.end method

.method public getmRecordingTimeView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRecordingTimeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasCameraModeMaskFrame()Z
    .locals 1

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnail()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2321
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return v0

    .line 2323
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getThumb()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2326
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAutoCameraDisplay()V
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->hide()V

    .line 2369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    .line 2371
    :cond_0
    return-void
.end method

.method public hideBatteryChargImg()V
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->hideBatteryChargImg()V

    .line 2150
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2153
    :cond_1
    return-void
.end method

.method public hideCameraModeMaskFrame(Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->setListener(Lcom/lenovo/scg/common/ui/CameraModeMaskFrame$AnimListener;)V

    .line 2300
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->startHideAnim()V

    .line 2302
    :cond_0
    return-void
.end method

.method public hideGpsOnScreenIndicator()V
    .locals 0

    .prologue
    .line 987
    return-void
.end method

.method public hideLowBatteryImg()V
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->hideLowBatteryImg()V

    .line 2175
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2176
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2178
    :cond_1
    return-void
.end method

.method public hideLowStorageImg()V
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->hideLowStorageImg()V

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2236
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2238
    :cond_1
    return-void
.end method

.method protected hidePostCaptureAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1211
    const-string v0, "CAM_UI"

    const-string v1, "hidePostCaptureAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1217
    const-string v0, "CAM_UI"

    const-string v1, "hidePostCaptureAlert, mReviewImage is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 1220
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1221
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1225
    const-string v0, "CAM_UI"

    const-string v1, "Video intent hidePostCaptureAlert mShutterButton.setVisibility VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1228
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->resumeFaceDetection()V

    .line 1233
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-ne v0, v4, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getId()I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    .line 1240
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    new-array v1, v5, [I

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    aput v2, v1, v3

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->displayScreenExcept([I)V

    goto :goto_0
.end method

.method public hideSeriousLowBatteryImg()V
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->hideSeriousLowBatteryImg()V

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2201
    :cond_1
    return-void
.end method

.method public hideSeriousLowStorageImg()V
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->hideSeriousLowStorageImg()V

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2245
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2247
    :cond_1
    return-void
.end method

.method public initButtonForCaptureIntent()V
    .locals 10

    .prologue
    const v9, 0x7f100764

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    const/16 v5, 0x8

    .line 843
    const-string v3, "CAM_UI"

    const-string/jumbo v4, "wangsm3 initButtonForCaptureIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->init()V

    .line 845
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f10015c

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 847
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 848
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v3, :cond_1

    .line 849
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 850
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v4, 0x7f10015b

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 851
    .local v2, "rlLayout":Landroid/widget/RelativeLayout;
    if-eqz v2, :cond_1

    .line 852
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 856
    .end local v2    # "rlLayout":Landroid/widget/RelativeLayout;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 857
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 863
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    .line 865
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v4, 0x7f0200db

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    .line 867
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    .line 868
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterBtnVideoPause()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    .line 870
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 871
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 872
    const-string v3, "CAM_UI"

    const-string v4, "mShutterBtnVideoPause.setVisibility View.GONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 891
    :cond_3
    :goto_0
    return-void

    .line 874
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 875
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 876
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const v4, 0x7f020100

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 877
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 878
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 879
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 881
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 882
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    .line 883
    .local v0, "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    instance-of v3, v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    if-eqz v3, :cond_5

    .line 884
    check-cast v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .end local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->setSwitchBackButton(Z)V

    goto :goto_0

    .line 886
    .restart local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 887
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public initFocusResultHint()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2034
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    const v2, 0x7f100170

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    .line 2035
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    if-nez v1, :cond_0

    .line 2036
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040034

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    .line 2037
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2038
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2041
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setVisibility(I)V

    .line 2042
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 714
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10015a

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 718
    .local v0, "cameraControls":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040160

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 720
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f100762

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    .line 721
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f100763

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 722
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f100838

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f100839

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    .line 731
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    new-instance v2, Lcom/lenovo/scg/camera/PhotoUI$4;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PhotoUI$4;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    new-instance v2, Lcom/lenovo/scg/camera/PhotoUI$5;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PhotoUI$5;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v2, Lcom/lenovo/scg/camera/PhotoUI$6;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/PhotoUI$6;-><init>(Lcom/lenovo/scg/camera/PhotoUI;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    .end local v0    # "cameraControls":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10015c

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 784
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->loadModeButtonImage()V

    .line 786
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f100764

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 787
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailViewWidth:I

    .line 788
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f10028e

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 791
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setIsUserDefineAnimationFlag(Z)V

    .line 793
    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    if-gez v1, :cond_3

    .line 794
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 795
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 796
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    goto :goto_0

    .line 798
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 799
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 800
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 895
    const-string v0, "CAM_UI"

    const-string/jumbo v1, "wangsm3 initializeFirstTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    .line 898
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButtonVideo()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    .line 899
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterBtnVideoPause()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    .line 901
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setOnShutterButtonListener(Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;)V

    .line 902
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setOnShutterButtonListener(Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;)V

    .line 903
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setOnShutterButtonListener(Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;)V

    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 905
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setOrientation(IZ)V

    .line 906
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setOrientation(IZ)V

    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setOrientation(IZ)V

    .line 909
    iget v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    if-gez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 919
    :cond_1
    return-void
.end method

.method public initializeSecondTime(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 923
    const-string v1, "CAM_UI"

    const-string/jumbo v2, "wangsm3 initializeSecondTime"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 925
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    .line 927
    .local v0, "pm":Lcom/lenovo/scg/camera/PhotoModule;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->getJpegDataFor3rd()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 931
    .end local v0    # "pm":Lcom/lenovo/scg/camera/PhotoModule;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 932
    return-void
.end method

.method public initializeZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 935
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomMax:I

    .line 937
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    .line 941
    new-instance v0, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;-><init>(Lcom/lenovo/scg/camera/PhotoUI;Lcom/lenovo/scg/camera/PhotoUI$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomChangeListener:Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setZoomMax(I)V

    .line 944
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setZoom(I)V

    .line 945
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setZoomValue(I)V

    .line 946
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomChangeListener:Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;->setOnZoomChangeListener(Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    .line 948
    :cond_2
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":zoom: initializeZoom: CameraUtil.CameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomMax:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRatios:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->init(Landroid/app/Activity;IILjava/util/List;)V

    .line 952
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomChangeListener:Lcom/lenovo/scg/camera/PhotoUI$ZoomChangeListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setZoomChangedListener(Lcom/lenovo/scg/camera/ui/ZoomRenderer$OnZoomChangedListener;)V

    .line 953
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    goto :goto_0

    .line 955
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 956
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    goto/16 :goto_0
.end method

.method public isAboutViewShow()Z
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInAE(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1652
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInAE: mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isInAeLockIndicator(II)Z

    move-result v0

    .line 1656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInAF(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1661
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInAF: mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isInAfLockIndicator(II)Z

    move-result v0

    .line 1665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1643
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInside: mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->isInsideFocusIndicator(II)Z

    move-result v0

    .line 1647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLe3dFrameVisible()Z
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->isLe3dFrameVisible()Z

    move-result v0

    .line 2383
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->isPressed()Z

    move-result v0

    return v0
.end method

.method public loadModeButtonImage()V
    .locals 2

    .prologue
    .line 808
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 809
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02020f

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 821
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02020e

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->isChineseLanguage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public loadModeStatusBar(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 7
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    const/4 v6, -0x1

    .line 1961
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 1962
    .local v1, "mc":Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    .line 1963
    .local v2, "vg":Landroid/view/ViewGroup;
    const v3, 0x7f1001b9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    .line 1964
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-nez v3, :cond_0

    .line 1965
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040048

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    .line 1966
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1967
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1968
    const-string v3, "add mode status bar"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1970
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v3, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 1972
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v3, p1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 1974
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setVisibility(I)V

    .line 1975
    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v3, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setOrientation(I)V

    .line 1977
    const-string v3, "loadModeStatusBar"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1040
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->isLe3dFrameVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1041
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onBackPressed()V

    .line 1042
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 1048
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showsItems()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1049
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hide()V

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->onCaptureCancelled()V

    goto :goto_0

    .line 1061
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/PhotoController;->isCameraIdleWhenBackpressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->removeTopLevelPopup()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraOpened(Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;Landroid/hardware/Camera$Parameters;Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;)V
    .locals 8
    .param p1, "prefGroup"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;
    .param p2, "prefs"    # Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;
    .param p4, "listener"    # Lcom/lenovo/scg/camera/setting/preference/CameraSettingBasePreference$OnCameraPreferenceChangedListener;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-nez v0, :cond_0

    .line 585
    new-instance v0, Lcom/lenovo/scg/camera/ui/PieRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    .line 586
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setPieListener(Lcom/lenovo/scg/camera/ui/PieRenderer$PieListener;)V

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->addRenderer(Lcom/lenovo/scg/camera/ui/RenderOverlay$Renderer;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    if-nez v0, :cond_1

    .line 591
    new-instance v0, Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/ui/ZoomRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-nez v0, :cond_2

    .line 596
    new-instance v0, Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomRenderer:Lcom/lenovo/scg/camera/ui/ZoomRenderer;

    iget-object v4, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    move-object v2, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/camera/PreviewGestures;-><init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/PreviewGestures$SingleTapListener;Lcom/lenovo/scg/camera/ui/ZoomRenderer;Lcom/lenovo/scg/camera/ui/PieRenderer;Lcom/lenovo/scg/camera/PreviewGestures$SwipeListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PreviewGestures;->reset()V

    .line 599
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->setRenderOverlay(Lcom/lenovo/scg/camera/ui/RenderOverlay;)V

    .line 606
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f1002a2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->addUnclickableArea(Landroid/view/View;)V

    .line 612
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 613
    const/4 v7, 0x0

    .line 615
    .local v7, "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 620
    :goto_0
    if-eqz v7, :cond_3

    .line 621
    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->addGesturesUnclickableArea()V

    .line 626
    .end local v7    # "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/PhotoUI;->enablePreviewThumb(Z)V

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz v0, :cond_5

    .line 640
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->requestLayout()V

    .line 643
    :cond_5
    invoke-virtual {p0, p3}, Lcom/lenovo/scg/camera/PhotoUI;->initializeZoom(Landroid/hardware/Camera$Parameters;)V

    .line 646
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isSupportFocusResultDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->initFocusResultHint()V

    .line 651
    :cond_6
    return-void

    .line 616
    .restart local v7    # "sv":Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    :catch_0
    move-exception v6

    .line 617
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraOpened error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->destroyWindow()V

    .line 1876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 1883
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->removeMessage()V

    .line 1887
    :cond_1
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 1
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 1724
    return-void
.end method

.method public onFocusFailed(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;

    move-result-object v0

    .line 1589
    .local v0, "indicator":Lcom/lenovo/scg/camera/focus/FocusIndicator;
    if-nez v0, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-ne v0, v1, :cond_2

    .line 1595
    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->showFail(Z)V

    .line 1596
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v1, :cond_0

    .line 1597
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->clear()V

    goto :goto_0

    .line 1600
    :cond_2
    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->showFail(Z)V

    goto :goto_0
.end method

.method public onFocusStarted(Z)V
    .locals 2
    .param p1, "isTF"    # Z

    .prologue
    .line 1548
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;

    move-result-object v0

    .line 1549
    .local v0, "indicator":Lcom/lenovo/scg/camera/focus/FocusIndicator;
    if-nez v0, :cond_0

    .line 1559
    :goto_0
    return-void

    .line 1552
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->showStart(Z)V

    goto :goto_0
.end method

.method public onFocusSucceeded(Z)V
    .locals 2
    .param p1, "timeout"    # Z

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getFocusIndicator()Lcom/lenovo/scg/camera/focus/FocusIndicator;

    move-result-object v0

    .line 1564
    .local v0, "indicator":Lcom/lenovo/scg/camera/focus/FocusIndicator;
    if-nez v0, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1569
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-ne v0, v1, :cond_2

    .line 1570
    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->showSuccess(Z)V

    .line 1571
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v1, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->clear()V

    goto :goto_0

    .line 1575
    :cond_2
    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusIndicator;->showSuccess(Z)V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 4
    .param p1, "full"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1070
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-nez p1, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 1074
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->dismissPopup(Z)V

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->setEnabled(Z)V

    .line 1079
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz v0, :cond_3

    .line 1081
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRenderOverlay:Lcom/lenovo/scg/camera/ui/RenderOverlay;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/RenderOverlay;->setVisibility(I)V

    .line 1083
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_4

    .line 1084
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-nez p1, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setBlockFocus(Z)V

    .line 1086
    :cond_4
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->setShowMenu(Z)V

    .line 1089
    return-void

    :cond_5
    move v0, v2

    .line 1071
    goto :goto_0

    .line 1081
    :cond_6
    const/16 v0, 0x8

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1084
    goto :goto_2
.end method

.method public onInfinityStarted()V
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showInfinity()V

    .line 1673
    :cond_0
    return-void
.end method

.method public onKeyCodeVolumeClick()V
    .locals 1

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->isLe3dFrameVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onKeyCodeVolumeClick()V

    .line 2390
    :cond_0
    return-void
.end method

.method public onMeteringStarted()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showMetering()V

    .line 1616
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1467
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->destroyLe3dWindow()V

    .line 1471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    .line 1474
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->collapseCameraControls()Z

    .line 1475
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->clear()V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1478
    iput v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewWidth:I

    .line 1479
    iput v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPreviewHeight:I

    .line 1482
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 1484
    return-void
.end method

.method public onPieClosed()V
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1404
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1407
    :cond_0
    return-void
.end method

.method public onPieOpened(II)V
    .locals 2
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->dismissPopup()V

    .line 1394
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->cancelActivityTouchHandling()V

    .line 1395
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->setSwipingEnabled(Z)V

    .line 1396
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/FaceView;->setBlockDraw(Z)V

    .line 1399
    :cond_0
    return-void
.end method

.method public onShowSwitcherPopup()V
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showsItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->hide()V

    .line 1143
    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/scg/camera/PhotoController;->onSingleTapUp(Landroid/view/View;II)V

    .line 1513
    return-void
.end method

.method public onStartFaceDetection(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "mirror"    # Z

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->clear()V

    .line 1716
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/FaceView;->setVisibility(I)V

    .line 1717
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1718
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/ui/FaceView;->setMirror(Z)V

    .line 1719
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->resume()V

    .line 1720
    return-void
.end method

.method public onSwipe(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 1728
    if-nez p1, :cond_0

    .line 1729
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->openMenu()V

    .line 1731
    :cond_0
    return-void
.end method

.method public onVideoIntentRecording()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1258
    const-string v1, "CAM_UI"

    const-string v2, "3rdVideo recording start UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 1260
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1261
    const-string v1, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3rdVideo mShutterBtnVideoPause visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ShutterButton;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    .line 1264
    .local v0, "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    instance-of v1, v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    if-eqz v1, :cond_1

    .line 1265
    check-cast v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .end local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->setSwitchBackButton(Z)V

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1268
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v1, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/PhotoModule;->isLowQualityVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    goto :goto_0
.end method

.method public onVideoRetake()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1301
    const-string v1, "CAM_UI"

    const-string v2, "3rdVideo onVideoRetake"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1303
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1304
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 1305
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1307
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1308
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 1309
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    .line 1310
    .local v0, "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    instance-of v1, v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    if-eqz v1, :cond_0

    .line 1311
    check-cast v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .end local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->setSwitchBackButton(Z)V

    .line 1312
    const/4 v1, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    .line 1319
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 1320
    return-void

    .line 1314
    .restart local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1315
    const/16 v1, 0x49

    invoke-virtual {p0, v4, v1}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    goto :goto_0
.end method

.method public pauseFaceDetection()V
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->pause()V

    .line 1680
    :cond_0
    return-void
.end method

.method public pressShutterButton()V
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1498
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 1499
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ShutterButton;->requestFocus()Z

    goto :goto_0
.end method

.method public removeAboutView()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2458
    const-string v0, "CAM_UI"

    const-string/jumbo v1, "removeAboutView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 2461
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mControlView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2463
    iput-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAboutRL:Landroid/widget/RelativeLayout;

    .line 2466
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/CaptureMode;->resume()V

    .line 2467
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->displayScreenExcept([I)V

    .line 2468
    const/4 v0, 0x1

    .line 2470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFocusResultHint()V
    .locals 4

    .prologue
    .line 2056
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    const v2, 0x7f100170

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    .line 2057
    .local v0, "focuHint":Landroid/view/View;
    const-string/jumbo v1, "panhui17"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeFocusResultHint, focuHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    if-eqz v0, :cond_0

    .line 2059
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2060
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAppView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2062
    :cond_0
    return-void
.end method

.method public removeModeStatusBar()V
    .locals 4

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    .line 1984
    .local v0, "mc":Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;
    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v2

    .line 1986
    .local v2, "vg":Landroid/view/ViewGroup;
    const v3, 0x7f1001b9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1987
    .local v1, "vStatusBar":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1988
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1989
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1990
    const-string/jumbo v3, "removeModeStatusBar"

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 1992
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-eqz v3, :cond_1

    .line 1993
    iget-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->clear()V

    .line 1994
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    .line 1996
    :cond_1
    return-void
.end method

.method public removeTopLevelPopup()Z
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->dismissPopup()V

    .line 1105
    const/4 v0, 0x1

    .line 1107
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeZoomBar()V
    .locals 1

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mZoomBar:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->destory()V

    .line 2277
    :cond_0
    return-void
.end method

.method public resumeFaceDetection()V
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/FaceView;->resume()V

    .line 1685
    :cond_0
    return-void
.end method

.method public set3rdVideoFlashBtn(ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "marginTop"    # I

    .prologue
    .line 1338
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ModeManager;->set3rdVideoFlashBtn(ZI)V

    .line 1339
    return-void
.end method

.method public setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1018
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 1345
    :cond_0
    return-void
.end method

.method public setFaceIndicatorVisable(Z)V
    .locals 3
    .param p1, "visable"    # Z

    .prologue
    .line 2108
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFaceIndicatorVisable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setCanVisible(Z)V

    .line 2112
    :cond_0
    return-void
.end method

.method public setFacePositionListener(Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setFacePositionListener(Lcom/lenovo/scg/camera/ui/FaceView$FacePositionListener;)V

    .line 1861
    :cond_0
    return-void
.end method

.method public setFocusAndFaceCanVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    .line 1624
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusAndFaceCanVisible  ---  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFaceView:Lcom/lenovo/scg/camera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/FaceView;->setCanVisible(Z)V

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setCanVisible(Z)V

    .line 1632
    :cond_1
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setFocus(II)V

    .line 1539
    return-void
.end method

.method public setFocusPosition2(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setFoucs2(II)V

    .line 1544
    return-void
.end method

.method public setOrientation(I)V
    .locals 9
    .param p1, "rotation"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 1762
    new-array v3, v8, [Lcom/lenovo/scg/camera/ui/Rotatable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeRetButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v5, v3, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    aput-object v6, v3, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    aput-object v6, v3, v5

    .line 1764
    .local v3, "indicators":[Lcom/lenovo/scg/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, "arr$":[Lcom/lenovo/scg/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1765
    .local v2, "indicator":Lcom/lenovo/scg/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    .line 1766
    invoke-interface {v2, p1, v7}, Lcom/lenovo/scg/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1768
    instance-of v5, v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v5, :cond_0

    .line 1769
    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local v2    # "indicator":Lcom/lenovo/scg/camera/ui/Rotatable;
    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setInitStatus(Z)V

    .line 1764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1778
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1781
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    if-eqz v5, :cond_2

    .line 1784
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1791
    :cond_2
    :goto_1
    iput p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    .line 1792
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-eqz v5, :cond_3

    .line 1793
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onOrientationChanged(I)V

    .line 1798
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-eqz v5, :cond_4

    .line 1799
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setOrientation(I)V

    .line 1804
    :cond_4
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    if-eqz v5, :cond_5

    .line 1805
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setOrientation(I)V

    .line 1810
    :cond_5
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v5, :cond_6

    .line 1811
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v5, p1, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1815
    :cond_6
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-eqz v5, :cond_7

    .line 1816
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v5, p1, v7}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 1821
    :cond_7
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v5, :cond_8

    .line 1822
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v5, p1}, Lcom/lenovo/scg/camera/ui/PieRenderer;->setOrientation(I)V

    .line 1827
    :cond_8
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->rlFrame:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v5, :cond_9

    .line 1828
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->rlFrame:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v5, p1, v7}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1832
    :cond_9
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v5, :cond_a

    .line 1833
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v5, p1, v7}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->setOrientation(IZ)V

    .line 1837
    :cond_a
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->showAboutViewOrientation(I)V

    .line 1838
    return-void

    .line 1786
    :cond_b
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1787
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public setScaleSupported(Z)V
    .locals 1
    .param p1, "supported"    # Z

    .prologue
    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/PreviewGestures;->setScaleSupported(Z)V

    .line 683
    :cond_0
    return-void
.end method

.method public setSurfaceTexture(Ljava/lang/Object;)V
    .locals 0
    .param p1, "st"    # Ljava/lang/Object;

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceTexture:Ljava/lang/Object;

    .line 1436
    return-void
.end method

.method public setVideoPauseBtnDrawable(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 459
    const-string v1, "CAM_UI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoPauseBtnDrawable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "paused"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 466
    :goto_1
    return-void

    .line 459
    :cond_0
    const-string/jumbo v0, "waiting"

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public showAeAfDifferLockAnim()V
    .locals 3

    .prologue
    .line 1708
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAeAfLockAnim() mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAeAfDifferLockAnim()V

    .line 1712
    :cond_0
    return-void
.end method

.method public showAeAfLockAnim()V
    .locals 3

    .prologue
    .line 1700
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAeAfLockAnim() mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAeAfLockAnim()V

    .line 1704
    :cond_0
    return-void
.end method

.method public showAutoCameraDisplay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2351
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    if-nez v0, :cond_1

    .line 2352
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-nez v0, :cond_0

    .line 2353
    new-instance v0, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    .line 2354
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getController()Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 2356
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isSmart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2357
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->setIsChangeFlashMode(Z)V

    .line 2361
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->show()V

    .line 2362
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->setOrientation(IZ)V

    .line 2364
    :cond_1
    return-void

    .line 2359
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->setIsChangeFlashMode(Z)V

    goto :goto_0
.end method

.method public showBatteryChargImg()V
    .locals 3

    .prologue
    .line 2131
    const-string v0, "jiaxiaowei"

    const-string/jumbo v1, "showBatteryChargImg-------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-nez v0, :cond_2

    .line 2136
    new-instance v0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .line 2138
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 2139
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->showBatteryChargImg()V

    .line 2140
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    goto :goto_0
.end method

.method public showCameraModeMaskFrame()V
    .locals 2

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    if-nez v0, :cond_0

    .line 2283
    new-instance v0, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    .line 2292
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2293
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2294
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraModeMaskFrame:Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/CameraModeMaskFrame;->show()V

    .line 2295
    return-void
.end method

.method public showFocusResultHint(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    if-nez v0, :cond_0

    .line 2053
    .end local p1    # "hint":Ljava/lang/String;
    :goto_0
    return-void

    .line 2050
    .restart local p1    # "hint":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    if-eqz p1, :cond_1

    .end local p1    # "hint":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setHint(Ljava/lang/String;)V

    .line 2051
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setHintColor(I)V

    .line 2052
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mFocusResultScreenHint:Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v0, Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/focus/FocusResultScreenHint;->setOrientation(I)V

    goto :goto_0

    .line 2050
    .restart local p1    # "hint":Ljava/lang/String;
    :cond_1
    const-string p1, ""

    goto :goto_1
.end method

.method public showGpsOnScreenIndicator(Z)V
    .locals 0
    .param p1, "hasSignal"    # Z

    .prologue
    .line 983
    return-void
.end method

.method public showLowBatteryImg()V
    .locals 3

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-nez v0, :cond_2

    .line 2161
    new-instance v0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .line 2163
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 2164
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->showLowBatteryImg()V

    .line 2165
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    goto :goto_0
.end method

.method public showLowStorageImg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2218
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-nez v0, :cond_0

    .line 2219
    new-instance v0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 2222
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->showLowStorageImg()V

    .line 2224
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f0f01ea

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2226
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2227
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2229
    :cond_1
    return-void
.end method

.method public showModeFlash(Z)V
    .locals 1
    .param p1, "bShow"    # Z

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-nez v0, :cond_0

    .line 2016
    const-string/jumbo v0, "showModeFlash return , because [mModeStatusBar==null] "

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2021
    :goto_0
    return-void

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->showModeFlash(Z)V

    goto :goto_0
.end method

.method public showModeOrReturnButton()V
    .locals 3

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getModeRetButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v1

    .line 2091
    .local v1, "modeRetBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getModeButton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    .line 2094
    .local v0, "modeBtn":Lcom/lenovo/scg/camera/ui/RotateImageView;
    sget-boolean v2, Lcom/lenovo/scg/camera/CameraUtil;->mIsModeButton:Z

    if-eqz v2, :cond_1

    .line 2095
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2096
    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2099
    :cond_1
    if-eqz v1, :cond_0

    .line 2100
    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 2101
    :cond_2
    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showModeStatusBar(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-nez v1, :cond_0

    .line 2025
    const-string/jumbo v1, "showModeStatusBar return , because [mModeStatusBar==null] "

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2030
    :goto_0
    return-void

    .line 2028
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2029
    .local v0, "visibility":I
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setVisibility(I)V

    goto :goto_0

    .line 2028
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showModeView(I)V
    .locals 2
    .param p1, "function"    # I

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    if-nez v0, :cond_0

    .line 1849
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getCurrentModule()Lcom/lenovo/scg/camera/CameraModule;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/cameramode/CameraModeController;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;-><init>(Lcom/lenovo/scg/camera/PhotoUI;Lcom/lenovo/scg/camera/cameramode/CameraModeController;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    .line 1850
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->onOrientationChanged(I)V

    .line 1852
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mLe3dFrameManager:Lcom/lenovo/scg/common/le3d/Le3dFrameManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/common/le3d/Le3dFrameManager;->showCameraModeWindow(IZ)V

    .line 1854
    return-void
.end method

.method public showOrHideBackCameraSettingButton(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1739
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1741
    :cond_0
    return-void

    .line 1739
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showOrHideWhiteView(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraUtil;->getFillInLightFlag(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    :cond_0
    return-void
.end method

.method public showPopup(Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;)V
    .locals 4
    .param p1, "popup"    # Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 1111
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->hideUI()V

    .line 1113
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/PhotoUI;->setShowMenu(Z)V

    .line 1114
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    .line 1115
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 1116
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1117
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1118
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1119
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mGestures:Lcom/lenovo/scg/camera/PreviewGestures;

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPopup:Lcom/lenovo/scg/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/PreviewGestures;->addTouchReceiver(Landroid/view/View;)V

    .line 1120
    return-void
.end method

.method public showPorTutorialView()V
    .locals 1

    .prologue
    .line 2500
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShowProTutorialView:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShowProTutorialView:Lcom/lenovo/scg/camera/ui/ShowProTutorialView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/ShowProTutorialView;->showProTutorialAnim()V

    .line 2503
    :cond_0
    return-void
.end method

.method protected showPostCaptureAlert([B)V
    .locals 9
    .param p1, "jpgData"    # [B

    .prologue
    const/4 v8, 0x0

    .line 1170
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 1171
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1173
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 1174
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    :cond_1
    const-string/jumbo v6, "panhui"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhotoController.isImageCaptureIntent() = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", getZSDStatus = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v5, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->getZSDStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/PhotoController;->isImageCaptureIntent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1181
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 1182
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1183
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1184
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-static {v5, p1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->imageBytes2Bitmap(Landroid/content/Context;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 1186
    invoke-static {p1}, Lcom/lenovo/scg/camera/Exif;->getExif([B)Lcom/lenovo/scg/gallery3d/exif/ExifInterface;

    move-result-object v2

    .line 1187
    .local v2, "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    invoke-static {v2}, Lcom/lenovo/scg/camera/Exif;->getOrientation(Lcom/lenovo/scg/gallery3d/exif/ExifInterface;)I

    move-result v4

    .line 1189
    .local v4, "orientation":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6, v4}, Lcom/lenovo/scg/camera/PhotoUI;->getReviewImageMatrix(III)Landroid/graphics/Matrix;

    move-result-object v3

    .line 1190
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1191
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1196
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "exif":Lcom/lenovo/scg/gallery3d/exif/ExifInterface;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    .end local v4    # "orientation":I
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1197
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1198
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v5}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1199
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->pauseFaceDetection()V

    .line 1202
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v5, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->clearScreenExcept([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v1

    .line 1204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showPreferencesToast()V
    .locals 3

    .prologue
    .line 1456
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mNotSelectableToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f053e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mNotSelectableToast:Landroid/widget/Toast;

    .line 1460
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mNotSelectableToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1461
    return-void
.end method

.method public showSeriousLowBatteryImg()V
    .locals 3

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-nez v0, :cond_0

    .line 2183
    new-instance v0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 2186
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->showSeriousLowBatteryImg()V

    .line 2188
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2189
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2191
    :cond_1
    return-void
.end method

.method public showSeriousLowStorageImg()V
    .locals 3

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    if-nez v0, :cond_0

    .line 2205
    new-instance v0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    .line 2207
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    iget v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mOrientation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->setOrientation(IZ)V

    .line 2208
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mStorageBatteryLayout:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->showSeriousLowStorageImg()V

    .line 2210
    invoke-direct {p0}, Lcom/lenovo/scg/camera/PhotoUI;->showSeriousLowStorageDialog()V

    .line 2212
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mAutoCameraDisplay:Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/AutoCameraDisplay;->updateLayout()V

    .line 2215
    :cond_1
    return-void
.end method

.method public showTouchCaptureAnim()V
    .locals 3

    .prologue
    .line 1692
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTouchCaptureAnim() mPieRenderer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showTouchCaptureAnim()V

    .line 1696
    :cond_0
    return-void
.end method

.method public showVideoResultUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1279
    const-string v1, "CAM_UI"

    const-string v2, "3rdVideo showVideoResultUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButtonVideo:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1281
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterBtnVideoPause:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setVisibility(I)V

    .line 1282
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    .line 1283
    .local v0, "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    instance-of v1, v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    if-eqz v1, :cond_0

    .line 1284
    check-cast v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    .end local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->setSwitchBackButton(Z)V

    .line 1289
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewDoneButton:Landroid/view/View;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1290
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewRetakeButton:Landroid/view/View;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1291
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mReviewPlayButton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-static {v1}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 1294
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 1295
    return-void

    .line 1286
    .restart local v0    # "currentFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSwitchToFrontBotton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startFocusAnimation()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPieRenderer:Lcom/lenovo/scg/camera/ui/PieRenderer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/PieRenderer;->showAnimation()V

    .line 1639
    :cond_0
    return-void
.end method

.method protected startVideoIntentUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1246
    const-string v0, "CAM_UI"

    const-string v1, "3rdVideo Enter startVideoIntentUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/16 v0, 0x49

    invoke-virtual {p0, v2, v0}, Lcom/lenovo/scg/camera/PhotoUI;->set3rdVideoFlashBtn(ZI)V

    .line 1248
    const-string v0, "CAM_UI"

    const-string v1, "3rdVideo startVideoIntentUI done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setEnable(Z)V

    .line 1252
    return-void
.end method

.method public startVideoShutterAnimation(Z)V
    .locals 7
    .param p1, "reverse"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 317
    const-string v2, "CAM_UI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startVideoShutterAnimation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStartAnim:Z

    if-nez v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStopAnim:Z

    if-eqz v2, :cond_2

    .line 320
    :cond_1
    const-string v2, "CAM_UI"

    const-string v3, "Don\'t restart VideoShutterAnimation when unfinished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    .local v0, "now":J
    if-nez p1, :cond_4

    .line 326
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v3, 0x7f020265

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 327
    const-string v2, "CAM_UI"

    const-string/jumbo v3, "setImageResource camera_picture_shutter_for_video"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    sget-object v3, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_BACKGROUND_BLUR:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 340
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->startAnimatorShutterButton(Z)V

    .line 341
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->startAnimatorShutterBtnVideo(Z)V

    .line 342
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/PhotoUI;->startAnimatorShutterBtnVideoPause(Z)V

    .line 344
    if-eqz p1, :cond_6

    .line 345
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStopAnim:Z

    .line 349
    :goto_2
    const-string v2, "CAM_UI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoStartTime startVideoShutterAnimation costs "

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

    .line 331
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 332
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v3, 0x7f0200ec

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 333
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 334
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    if-nez v2, :cond_3

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v3, 0x7f0200da

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 336
    iget-object v2, p0, Lcom/lenovo/scg/camera/PhotoUI;->mShutterButton:Lcom/lenovo/scg/camera/ShutterButton;

    const v3, 0x7f0200db

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 347
    :cond_6
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/PhotoUI;->mIsDuringVideoStartAnim:Z

    goto :goto_2
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1413
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1418
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1420
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/PhotoController;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1421
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1425
    const-string v0, "CAM_UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1427
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/PhotoController;->stopPreview()V

    .line 1428
    return-void
.end method

.method public updateNightFlash(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "oldFlashStatus"    # Ljava/lang/String;
    .param p2, "bFlash"    # Z

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    if-nez v0, :cond_0

    .line 2007
    const-string/jumbo v0, "updateNightFlash return , because [mModeStatusBar==null] "

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2012
    :goto_0
    return-void

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI;->mModeStatusBar:Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateNightFlash(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateThumbnailView(Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 4
    .param p1, "thumbnail"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 991
    const-string v1, "CAM_UI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThumbnailView() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v1, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 997
    :cond_0
    if-eqz p1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 999
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "mAnimation":Landroid/view/animation/Animation;
    if-nez v0, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v2, 0x7f050010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1005
    :cond_1
    if-eqz v0, :cond_2

    .line 1006
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1008
    :cond_2
    const-string/jumbo v1, "update thumbnail: visible "

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    .end local v0    # "mAnimation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1012
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoUI;->mThumbnailView:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1013
    const-string/jumbo v1, "thumbnail=null, update thumbnail: gone "

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method
