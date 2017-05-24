.class public Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.super Ljava/lang/Object;
.source "SettingUI.java"

# interfaces
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;
.implements Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;
.implements Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$10;,
        Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;,
        Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;,
        Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;,
        Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_REMOVE_SETTING_MS:I = 0x12c

.field private static final HOVER_TIME_TRIGGER:J = 0x1f4L

.field private static final LOG:Z = true

.field private static final MSG_REMOVE_SETTING:I = 0x0

.field private static final MSG_ROTATION_VIEW:I = 0x4

.field private static final MSG_SHOW_CENTER_POPVIEW:I = 0x1100

.field private static final MSG_SHOW_FLASH_NAME_COMMENT:I = 0x1102

.field private static final RESET_EXPAND_STATE:I = 0x1122

.field private static final SHOW_ANIM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SettingUI"


# instance fields
.field bInShowAnim:Z

.field bInShowProWheel:Z

.field private bigWheelRootLayout:Landroid/view/ViewGroup;

.field endY:F

.field private isAnimed:Z

.field private isBigWheelShowed:Z

.field private isSettingViewShowed:Z

.field private lastPosition:I

.field private mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

.field mAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

.field private mAutoWheelBg:Landroid/widget/ImageView;

.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field public mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

.field private mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

.field private mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

.field mDelta:F

.field private mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

.field private mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field public mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

.field private mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

.field private mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

.field private mHandler:Landroid/os/Handler;

.field private mHoverStartTime:J

.field private mLastPosition:I

.field private mLittleWheelLayout:Landroid/view/View;

.field private mMainHandler:Landroid/os/Handler;

.field mOldX:F

.field mOldY:F

.field private mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

.field private mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

.field private mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

.field private mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

.field private mQuareMaskLayout:Landroid/widget/RelativeLayout;

.field mSettingItemHandler:Landroid/os/Handler;

.field private mSettingMore:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSettingPhoto:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mSettingVideo:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

.field private mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

.field private mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

.field private mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

.field private mWheelIsShowed:Z

.field private modifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

.field private selection:I

.field private shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

.field startY:F


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 5
    .param p1, "cameraSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    const/4 v4, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    .line 105
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 107
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingPhoto:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 109
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingVideo:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 111
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingMore:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 113
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 115
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    .line 117
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    .line 122
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    .line 132
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureDetector:Landroid/view/GestureDetector;

    .line 134
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureListener:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

    .line 157
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    .line 169
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    .line 171
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    .line 174
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    .line 176
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    .line 178
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    .line 254
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    .line 256
    iput v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    .line 258
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    .line 260
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z

    .line 364
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$1;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 397
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$2;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;

    .line 449
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowAnim:Z

    .line 588
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->modifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    .line 783
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed:Z

    .line 823
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$3;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    .line 892
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->selection:I

    .line 1163
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    .line 1446
    iput v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldX:F

    .line 1448
    iput v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldY:F

    .line 1450
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mDelta:F

    .line 1562
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$7;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHandler:Landroid/os/Handler;

    .line 1833
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    .line 2003
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->lastPosition:I

    .line 181
    invoke-interface {p1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 182
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 184
    const-string v0, "SettingUI-Create"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    .line 187
    const-string v0, "SettingUI-Create-ProSettingWheelUI"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureListener:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureListener:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_2

    .line 197
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureListener:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureDetector:Landroid/view/GestureDetector;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    .line 208
    :cond_3
    const-string v0, "SettingUI-Create end"

    invoke-static {v3, v0}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showProBigWheelSetting()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;[Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    .param p1, "x1"    # [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraSettingUI([Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeAutoLittleWheelPopView()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isNormalOrHDRMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProBigWheelSetting()Z

    move-result v0

    return v0
.end method

.method private getBaseAutoSettingUIBySettingItem(Lcom/lenovo/scg/camera/setting/view/SettingItem;)Lcom/lenovo/scg/camera/setting/uicontroll/BaseAutoSettingUI;
    .locals 2
    .param p1, "centerItem"    # Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .prologue
    .line 591
    sget-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$10;->$SwitchMap$com$lenovo$scg$camera$setting$view$SettingBaseItem$SettingType:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 620
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    :goto_0
    return-object v0

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    goto :goto_0

    .line 597
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    goto :goto_0

    .line 601
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    goto :goto_0

    .line 605
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    goto :goto_0

    .line 609
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    goto :goto_0

    .line 613
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    goto :goto_0

    .line 617
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getCurrentPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1596
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelection()I
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->selection:I

    return v0
.end method

.method private getSelectionByCenterView(Landroid/view/View;)I
    .locals 5
    .param p1, "centerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    .line 635
    if-nez p1, :cond_0

    move v2, v3

    .line 674
    :goto_0
    return v2

    .line 639
    :cond_0
    const v2, 0x7f100008

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 640
    .local v1, "position":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 643
    .local v0, "info":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    sget-object v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$10;->$SwitchMap$com$lenovo$scg$camera$setting$view$SettingBaseItem$SettingType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 674
    goto :goto_0

    .line 646
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 650
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 654
    :pswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    move v2, v3

    .line 658
    goto :goto_0

    .line 662
    :pswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 666
    :pswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 670
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static getSettingItemInfo(Landroid/view/View;Landroid/widget/BaseAdapter;)Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 1587
    const v1, 0x7f100008

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1588
    .local v0, "position":I
    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    return-object v1
.end method

.method private hideAutoSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 864
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    if-eqz v3, :cond_0

    .line 865
    const-string v3, "SettingUI-hideAutoSetting"

    const-string v4, " remove AutoSetting"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->ismPaused()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "hideAutoSetting-start"

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 889
    :cond_0
    :goto_0
    return v1

    .line 871
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->findViewAtCenter()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getSelectionByCenterView(Landroid/view/View;)I

    move-result v0

    .line 872
    .local v0, "laseSelection":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastSelection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 873
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setSelection(I)V

    .line 875
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v4, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v3, v4}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 881
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onAutoSettingShow(Z)V

    .line 882
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    .line 884
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemove(Landroid/content/Context;)V

    .line 886
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    move v1, v2

    .line 887
    goto :goto_0
.end method

.method private hideProBigWheelSetting()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 959
    const-string v1, "hideProBigWheelSetting_"

    const-string/jumbo v2, "out_________"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 964
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setBigWheelShowed(Z)V

    .line 967
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraLine()V

    .line 968
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraWaterLevel()V

    .line 975
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->shutterButtonHideBigWheel(Landroid/view/View;FF)V

    .line 976
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z

    .line 978
    const-string v1, "hideProBigWheelSetting_"

    const-string v2, "in_________"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 983
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->displayScreenExcept([I)V

    .line 985
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 986
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    .line 987
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->setBigWheelShow(Z)V

    .line 990
    const/4 v0, 0x1

    .line 992
    :cond_0
    return v0
.end method

.method private hideProSetting()Z
    .locals 4

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProBigWheelSetting()Z

    move-result v0

    .line 855
    .local v0, "mProBigWheelIsShowed":Z
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProExpandSetting()Z

    move-result v1

    .line 857
    .local v1, "mProExpandIsShowed":Z
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->onSettingUiRemove(Landroid/content/Context;)V

    .line 859
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initAutoCircleSetting()V
    .locals 2

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initAutoWheelIfNeed()V

    .line 570
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->updateLittleVheelItemImage()V

    .line 586
    return-void
.end method

.method private initAutoWheelIfNeed()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v1, 0x7f040058

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->addView2CameraCotrolLayout(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;-><init>(Lcom/lenovo/scg/camera/CameraActivity;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f100231

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f100232

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOnItemScrollListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemScrollListener;)V

    .line 238
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initLittleCircleListViewAdapter()V

    .line 240
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initLittleWheelSettingTypeUI()V

    .line 242
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initLittleWheelPopView()V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->modifier:Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setViewModifier(Lcom/lenovo/scg/camera/setting/view/CircularViewModifier;)V

    .line 247
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setFastScrollAlwaysVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setFastScrollEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 251
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->setOnItemCenteredListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListView$OnItemCenteredListener;)V

    .line 252
    return-void
.end method

.method private initLittleCircleListViewAdapter()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;-><init>(Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->setOnCircleItemClickListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->setOnCircleItemLongClickListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemLongClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->setOnCircleItemHoverListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverListener;)V

    .line 687
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->setOnCircleItemHoverButtonDownListener(Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter$OnCircleItemHoverButtonListener;)V

    .line 688
    return-void
.end method

.method private initLittleWheelPopView()V
    .locals 10

    .prologue
    .line 1002
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v0

    .line 1004
    .local v0, "mFlashItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1005
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f10021e

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1010
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v5

    .line 1012
    .local v5, "mTakePicType":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1013
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100233

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1018
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v2

    .line 1020
    .local v2, "mPictureSize":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1021
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100238

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1026
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1027
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v3

    .line 1029
    .local v3, "mShutterSound":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1030
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f10023b

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1036
    .end local v3    # "mShutterSound":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v4

    .line 1038
    .local v4, "mSmartItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_4

    .line 1039
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f10023a

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1044
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v7

    .line 1046
    .local v7, "mVideoType":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1047
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100236

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1063
    :cond_5
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1065
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v6

    .line 1067
    .local v6, "mVideoSize":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1068
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100235

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1086
    :cond_6
    :goto_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v1

    .line 1087
    .local v1, "mGpsItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1088
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100239

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    .line 1091
    :cond_7
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->updateLittleVheelItemImage()V

    .line 1093
    return-void

    .line 1073
    .end local v1    # "mGpsItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .end local v6    # "mVideoSize":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_8
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v6

    .line 1075
    .restart local v6    # "mVideoSize":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-nez v8, :cond_6

    .line 1076
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v9, 0x7f100234

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->setRadioButtonLayout(Landroid/widget/RelativeLayout;)V

    goto :goto_0
.end method

.method private initLittleWheelSettingTypeUI()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    if-nez v0, :cond_1

    .line 696
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    if-nez v0, :cond_2

    .line 700
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    if-nez v0, :cond_3

    .line 704
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    if-nez v0, :cond_4

    .line 708
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    .line 711
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    if-nez v0, :cond_5

    .line 712
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    .line 715
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    if-nez v0, :cond_6

    .line 716
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    if-nez v0, :cond_7

    .line 720
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    if-nez v0, :cond_8

    .line 724
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/setting/OnPopViewCheckChanged;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    .line 727
    :cond_8
    return-void
.end method

.method private isAutoFunction()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentFunction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalOrHDRMode()Z
    .locals 3

    .prologue
    .line 489
    const-string v0, "getCurrentMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProFunction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 485
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCurrentFunction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoRecording()Z
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ModeManager;->isVideoRecording()Z

    move-result v0

    return v0
.end method

.method private onCenterItemClicked(Landroid/view/View;I)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x1100

    .line 1705
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v2, p2}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 1708
    .local v0, "mItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    sget-object v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$10;->$SwitchMap$com$lenovo$scg$camera$setting$view$SettingBaseItem$SettingType:[I

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1825
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->updateAutoName(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1827
    return-void

    .line 1710
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onCameraAboutClicked()V

    goto :goto_0

    .line 1715
    :pswitch_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1716
    .local v1, "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1717
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1718
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1736
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1737
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1738
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1739
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1757
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1758
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1759
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1760
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1776
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_5
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1777
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1778
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1779
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1784
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_6
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1785
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1786
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1787
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1796
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1797
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1798
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1799
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1804
    .end local v1    # "message":Landroid/os/Message;
    :pswitch_8
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1805
    .restart local v1    # "message":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 1806
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1807
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1708
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private removeAutoLittleWheelPopView()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 1924
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v0

    .line 1926
    .local v0, "mFlashItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1927
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1930
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v5

    .line 1932
    .local v5, "mTakePicType":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1933
    invoke-virtual {v5}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1936
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v7

    .line 1938
    .local v7, "mVideoType":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1939
    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1942
    :cond_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v2

    .line 1944
    .local v2, "mPicSizeType":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1945
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1948
    :cond_3
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1949
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v3

    .line 1951
    .local v3, "mShutterSound":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1952
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1956
    .end local v3    # "mShutterSound":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v4

    .line 1958
    .local v4, "mSmartItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1959
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1970
    :cond_5
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v6

    .line 1972
    .local v6, "mVideoSizeItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1973
    invoke-virtual {v6}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1976
    :cond_6
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    sget-object v9, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v1

    .line 1977
    .local v1, "mGPSItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1978
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getRadioButtonLayout()Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1981
    :cond_7
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1983
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->updatePopViewNameVisibility(I)V

    .line 1985
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->updatePopViewNameVisibility(I)V

    .line 1987
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->updatePopViewNameVisibility(I)V

    .line 1989
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;->updatePopViewNameVisibility(I)V

    .line 1991
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->updatePopViewNameVisibility(I)V

    .line 1993
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->updatePopViewNameVisibility(I)V

    .line 1995
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;->updatePopViewNameVisibility(I)V

    .line 1997
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->updatePopViewNameVisibility(I)V

    .line 1999
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    invoke-virtual {v8, v10}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->updatePopViewNameVisibility(I)V

    .line 2001
    return-void
.end method

.method private setBigWheelShowed(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 789
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed:Z

    .line 790
    return-void
.end method

.method private setSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 894
    iput p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->selection:I

    .line 895
    return-void
.end method

.method private showAutoSetting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 546
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initAutoCircleSetting()V

    .line 549
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onAutoSettingShow(Z)V

    .line 551
    const-string v0, "SettingUI-showAutoSetting"

    const-string v1, " add AutoSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearScreenExcept([I)V

    .line 554
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 555
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mWheelIsShowed:Z

    .line 557
    return-void
.end method

.method private varargs showCameraSettingUI([Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V
    .locals 1
    .param p1, "mode"    # [Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAutoFunction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showAutoSetting()V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showProSetting(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V

    goto :goto_0
.end method

.method private showProBigWheelSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 793
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setBigWheelShowed(Z)V

    .line 795
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    if-nez v0, :cond_0

    .line 796
    new-instance v0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getRootRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    .line 801
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->addView2CameraCotrolLayout(Landroid/view/View;)V

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraLine()V

    .line 807
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraWaterLevel()V

    .line 810
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getFocusOverlayManager()Lcom/lenovo/scg/camera/focus/FocusOverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusOverlayManager;->onFullScreenChange()V

    .line 811
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    new-array v1, v4, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ShutterButton;->getId()I

    move-result v3

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearScreenExcept([I)V

    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAnimEnd:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->showWheelSeekBarViewWithAnim(Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI$OnBigWheelAnimEnd;)V

    .line 820
    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->setBigWheelShow(Z)V

    .line 821
    return-void
.end method

.method private showProSetting(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearAllPopupWindow()V

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->clearScreenExcept([I)V

    .line 527
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v1, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_POPUP:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 528
    sget-object v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$10;->$SwitchMap$com$lenovo$scg$camera$setting$uicontroll$SettingUI$ProSettingMode:[I

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ProSettingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 530
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showProBigWheelSetting()V

    .line 533
    :pswitch_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showExpandableSetting()V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addView2CameraAppRoot(Landroid/view/View;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 1491
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v4

    .line 1492
    .local v4, "mViewGroup":Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 1493
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1494
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 1495
    .local v5, "maskViewID":I
    const/4 v3, 0x0

    .line 1496
    .local v3, "isHaveMaskView":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1497
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v1

    .line 1498
    .local v1, "childID":I
    if-ne v1, v5, :cond_0

    .line 1499
    const/4 v3, 0x1

    .line 1496
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1502
    .end local v1    # "childID":I
    :cond_1
    if-nez v3, :cond_2

    .line 1503
    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1507
    .end local v0    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "isHaveMaskView":Z
    .end local v5    # "maskViewID":I
    :cond_2
    return-void
.end method

.method public hideCameraSettingUI()Z
    .locals 2

    .prologue
    .line 842
    const-string v0, "SettingUI"

    const-string v1, "hideCameraSettingUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAutoFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideAutoSetting()Z

    move-result v0

    .line 850
    :goto_0
    return v0

    .line 847
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProSetting()Z

    move-result v0

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideProExpandSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 911
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    if-eqz v1, :cond_0

    .line 912
    const-string v1, "hideProExpandSetting"

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v0

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraLine()V

    .line 917
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraWaterLevel()V

    .line 925
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    if-eqz v1, :cond_3

    .line 927
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    new-instance v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 933
    :cond_2
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    .line 934
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 936
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->UPDATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 938
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->onProSettingShow(Z)V

    .line 941
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    sget-object v2, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 943
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 945
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initExpandableSettingListLayoutPopup()V
    .locals 3

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v1, 0x7f040054

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    .line 1169
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->addView2CameraCotrolLayout(Landroid/view/View;)V

    .line 1171
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->setOnVideoSettingGroupClickedListener(Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout$OnVideoSettingGroupClickedListener;)V

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const v1, 0x7f10021c

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 1177
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const v1, 0x7f100217

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingPhoto:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1179
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const v1, 0x7f100219

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingVideo:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1181
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const v1, 0x7f10021b

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingMore:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1184
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 1187
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const/16 v1, 0x10e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setOrientation(Landroid/view/View;IZ)V

    .line 1192
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->setOrientation(I)V

    .line 1193
    return-void
.end method

.method public initializeControlByIntent()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getIsImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1389
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v1, 0x7f10028e

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 1392
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 1393
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$BackSettingbuttonOnClickListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1397
    :cond_0
    return-void
.end method

.method public isBigWheelShowed()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed:Z

    return v0
.end method

.method public isExpandableSettingShowed()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    .line 380
    const-string v0, "CameraSettingGestureListener"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 386
    const-string v0, "CameraSettingGestureListener"

    const-string/jumbo v1, "onAnimationRepeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 392
    const-string v0, "CameraSettingGestureListener"

    const-string/jumbo v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->dismissDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    const/4 v0, 0x1

    .line 1420
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraAboutClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1196
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    if-nez v0, :cond_0

    .line 1197
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    invoke-virtual {v0, v2, v2, v2}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1201
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->setOrientation(IZ)V

    .line 1204
    return-void
.end method

.method public onCameraEffectClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1208
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    invoke-virtual {v0, v2, v2, v2}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1213
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOrientation(IZ)V

    .line 1215
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$4;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$4;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOnBaoHeDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    .line 1225
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$5;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOnDuiBiDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    .line 1235
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$6;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOnRuiDuChangeListener(Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog$OnSCGSeekBarChangeListener;)V

    .line 1244
    return-void
.end method

.method public onCameraOnTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 1408
    const-string v0, "SettingUI"

    const-string/jumbo v1, "onCameraOnTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1410
    return-void
.end method

.method public onClick(Landroid/view/View;Landroid/widget/BaseAdapter;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 1685
    const v2, 0x7f100008

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1687
    .local v1, "position":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->findViewAtCenter()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1688
    invoke-direct {p0, p1, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->onCenterItemClicked(Landroid/view/View;I)V

    .line 1702
    :goto_0
    return-void

    .line 1690
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->smoothScrollToView(Landroid/view/View;)V

    .line 1691
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1692
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x1100

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1693
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1694
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingItemHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x258

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1626
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1637
    :sswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1628
    :sswitch_1
    const-string v0, "SettingUI"

    const-string/jumbo v1, "onDrag()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v0, 0x1

    goto :goto_0

    .line 1626
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onHover(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "eventTime"    # J

    .prologue
    .line 1658
    const v2, 0x7f100008

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1659
    .local v1, "position":I
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getSettingItemInfo(Landroid/view/View;Landroid/widget/BaseAdapter;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v0

    .line 1660
    .local v0, "info":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v2, "SettingUI&onHover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLastPosition:I

    if-ne v1, v2, :cond_1

    .line 1664
    iget-wide v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHoverStartTime:J

    sub-long v2, p3, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1673
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1669
    :cond_1
    iput-wide p3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHoverStartTime:J

    .line 1670
    iput v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLastPosition:I

    goto :goto_0
.end method

.method public onHoverButtonDown(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "eventTime"    # J

    .prologue
    .line 1650
    const-string v0, "SettingUI&onHoverButtonDown"

    const-string/jumbo v1, "onHoverButtonDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverButtonUp(Landroid/view/View;Landroid/widget/BaseAdapter;J)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "eventTime"    # J

    .prologue
    .line 1643
    const-string v0, "SettingUI&onHoverButtonUp"

    const-string/jumbo v1, "onHoverButtonUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v0, 0x0

    return v0
.end method

.method public onItemCentered(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1608
    if-eqz p1, :cond_0

    .line 1609
    const v2, 0x7f100008

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1610
    .local v1, "position":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 1612
    .local v0, "info":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v2, "SettingUI&onItemCentered"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    .end local v0    # "info":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .end local v1    # "position":I
    :cond_0
    return-void
.end method

.method public onItemScroll(Landroid/view/View;)V
    .locals 6
    .param p1, "centerItem"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 2008
    const-string v2, "SettingUI"

    const-string/jumbo v3, "onItemScroll"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    if-nez p1, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    const v2, 0x7f100008

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2014
    .local v1, "position":I
    iget v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->lastPosition:I

    if-eq v1, v2, :cond_0

    .line 2016
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 2018
    .local v0, "mItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v2, "SettingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onItemScroll"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->updateAutoName(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2022
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeAutoLittleWheelPopView()V

    .line 2024
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_3

    .line 2025
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2026
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2053
    :cond_2
    :goto_1
    iput v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->lastPosition:I

    goto :goto_0

    .line 2027
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_4

    .line 2028
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2029
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2030
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_5

    .line 2031
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2032
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2033
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_6

    .line 2034
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2035
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2036
    :cond_6
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_7

    .line 2037
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2038
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2039
    :cond_7
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_8

    .line 2040
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2041
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2042
    :cond_8
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_9

    .line 2043
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2044
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 2045
    :cond_9
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_a

    .line 2046
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2047
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_1

    .line 2048
    :cond_a
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_2

    .line 2049
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 2050
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;Landroid/widget/BaseAdapter;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 1679
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1382
    const-string v0, "SettingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOrientationChanged()   orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const/16 v1, 0x10e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setOrientation(Landroid/view/View;IZ)V

    .line 1385
    return-void
.end method

.method public onOtherSettingGroupClicked()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 1370
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1373
    .local v1, "width":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1377
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    return-void

    .line 1370
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .restart local v1    # "width":I
    :cond_1
    move v0, v2

    .line 1373
    goto :goto_1
.end method

.method public onPictureSettingGroupClicked()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 1356
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1359
    .local v1, "width":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1363
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    return-void

    .line 1356
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .restart local v1    # "width":I
    :cond_1
    move v0, v2

    .line 1359
    goto :goto_1
.end method

.method public onPopViewCheckedChanged(II)V
    .locals 1
    .param p1, "iconID"    # I
    .param p2, "commonID"    # I

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->updateLittleVheelItemImage()V

    .line 2062
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->notifyDataSetChanged()V

    .line 2064
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCommentsUI:Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/setting/uicontroll/AutoSettingCommentsUI;->updateCommon(II)V

    .line 2066
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideAutoSetting()Z

    .line 2067
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideProBigWheelSetting()Z

    .line 998
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2072
    const-string v0, "SettingUI"

    const-string/jumbo v1, "onCameraOnTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onVideoSettingGroupClicked()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 1336
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1339
    .local v1, "width":I
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getOrientation()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1349
    .local v0, "height":I
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    return-void

    .line 1336
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .restart local v1    # "width":I
    :cond_1
    move v0, v2

    .line 1339
    goto :goto_1
.end method

.method public removeCameraLine()V
    .locals 3

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    if-nez v0, :cond_0

    .line 2096
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    .line 2099
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->closeLine()V

    .line 2100
    return-void
.end method

.method public removeCameraWaterLevel()V
    .locals 3

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    if-nez v0, :cond_0

    .line 2120
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    .line 2123
    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "removeCameraWaterLevel=============================="

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->closeLevel()V

    .line 2125
    return-void
.end method

.method public varargs removeSettingUI([Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "motionEvent"    # [Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 1457
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1458
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    move-result v4

    .line 1484
    :cond_0
    :goto_0
    return v4

    .line 1460
    :cond_1
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 1463
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v1, v5

    .line 1464
    .local v1, "touchY":I
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1465
    .local v0, "mScreenHeight":I
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 1466
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldX:F

    .line 1467
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldY:F

    .line 1469
    :cond_2
    int-to-float v5, v1

    int-to-float v6, v0

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1470
    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mLittleWheelLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1472
    const/4 v4, 0x1

    goto :goto_0

    .line 1479
    :cond_3
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1480
    .local v2, "x":F
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1481
    .local v3, "y":F
    iget v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldX:F

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mDelta:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget v5, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mOldY:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mDelta:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 1482
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->hideCameraSettingUI()Z

    move-result v4

    goto :goto_0
.end method

.method public removeSquareMaskView()V
    .locals 3

    .prologue
    .line 1541
    const-string v0, "SettingUI"

    const-string/jumbo v1, "removeSquareMaskView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v0, 0x1

    const-string/jumbo v1, "removeSquareMaskView_"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGLog;->PrintStackTraces(ZLjava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v1, 0x7f04005d

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeViewFromCameraAppRoot(Landroid/view/View;)V

    .line 1550
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_goutu_line_key"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraLine()V

    .line 1560
    :goto_0
    return-void

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->showCameraLine()V

    goto :goto_0
.end method

.method public removeViewFromCameraAppRoot(Landroid/view/View;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 1511
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1513
    .local v0, "mViewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1514
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1516
    :cond_0
    return-void
.end method

.method public rotationBigWheelView()V
    .locals 2

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed:Z

    if-nez v0, :cond_0

    .line 1583
    :goto_0
    return-void

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 8
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, -0x1

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1259
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    if-eqz v2, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->setOrientation(I)V

    .line 1264
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    if-eqz v2, :cond_1

    .line 1265
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAboutDialog:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    invoke-virtual {v2, p1, v5}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->setOrientation(IZ)V

    .line 1268
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    if-eqz v2, :cond_2

    .line 1269
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mEffectDialog:Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;

    invoke-virtual {v2, p1, v5}, Lcom/lenovo/scg/camera/setting/view/RotateEffectDialog;->setOrientation(IZ)V

    .line 1272
    :cond_2
    const/16 v2, 0xb4

    if-eq p1, v2, :cond_3

    if-ne p1, v3, :cond_4

    .line 1331
    :cond_3
    :goto_0
    return-void

    .line 1276
    :cond_4
    const-string v2, "SettingUI-setOrientation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v2, :cond_5

    .line 1278
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-static {v2, p1, v5}, Lcom/lenovo/scg/camera/setting/SettingUtils;->setOrientation(Landroid/view/View;IZ)V

    .line 1282
    :cond_5
    const-string v2, "SettingUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current rotation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-eqz v2, :cond_b

    .line 1285
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-nez p1, :cond_a

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 1291
    :goto_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingPhoto:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v2, :cond_6

    .line 1292
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingPhoto:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez p1, :cond_d

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1295
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingVideo:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v2, :cond_7

    .line 1296
    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingVideo:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez p1, :cond_e

    move v2, v3

    :goto_4
    invoke-virtual {v6, v2, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1299
    :cond_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingMore:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v2, :cond_8

    .line 1300
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSettingMore:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez p1, :cond_f

    :goto_5
    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 1303
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_3

    .line 1304
    if-nez p1, :cond_10

    move v1, v0

    .line 1307
    .local v1, "width":I
    :goto_6
    if-nez p1, :cond_9

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1325
    .local v0, "height":I
    :cond_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableListView:Landroid/widget/ExpandableListView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_a
    move v2, v4

    .line 1285
    goto :goto_1

    .line 1287
    :cond_b
    const-string v6, "SettingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mExpandListViewLayout is null ?  "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandListViewLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    if-nez v2, :cond_c

    move v2, v5

    :goto_7
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    move v2, v4

    goto :goto_7

    :cond_d
    move v2, v4

    .line 1292
    goto :goto_3

    :cond_e
    move v2, v4

    .line 1296
    goto :goto_4

    :cond_f
    move v3, v4

    .line 1300
    goto :goto_5

    .line 1304
    :cond_10
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6
.end method

.method public setSettingButtonEnable()V
    .locals 4

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraBackSettingbutton:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 2131
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$9;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$9;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2140
    :cond_0
    return-void
.end method

.method public showCameraLine()V
    .locals 3

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    :cond_0
    :goto_0
    return-void

    .line 2083
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isInProFuncton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    if-nez v0, :cond_2

    .line 2088
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    .line 2091
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->openLine()V

    goto :goto_0
.end method

.method public showCameraWaterLevel()V
    .locals 3

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSettingStatusReader()Lcom/lenovo/scg/camera/setting/SettingStatusReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/SettingStatusReader;->isSquarePicOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isInProFuncton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    if-nez v0, :cond_2

    .line 2112
    new-instance v0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;-><init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    .line 2115
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraLineWaterLevelUI:Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->openLevel()V

    goto :goto_0
.end method

.method public showExpandableSetting()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mProSettingWheelUI:Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ProSettingWheelUI;->getRootRelativeLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    .line 732
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bigWheelRootLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->addView2CameraCotrolLayout(Landroid/view/View;)V

    .line 737
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraLine()V

    .line 738
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraWaterLevel()V

    .line 741
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->initExpandableSettingListLayoutPopup()V

    .line 742
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mExpandableSettingListLayout:Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    new-instance v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$ExpandAnimListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/ExpandableSettingListLayout;->init(Lcom/lenovo/scg/camera/setting/CameraSettingController;Landroid/view/animation/Animation$AnimationListener;)V

    .line 745
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getPreferenceGroup()Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/preference/CameraSettingPreferenceGroup;->reloadValue()V

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isSettingViewShowed:Z

    .line 747
    return-void
.end method

.method public showSquareMaskView()Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    .locals 3

    .prologue
    .line 1521
    const-string v1, "SettingUI"

    const-string/jumbo v2, "showSquareMaskView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    const v2, 0x7f04005d

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->inflate(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    .line 1525
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->addView2CameraAppRoot(Landroid/view/View;)V

    .line 1527
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mQuareMaskLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f10028b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;

    .line 1530
    .local v0, "maskView":Lcom/lenovo/scg/camera/setting/view/SquareMaskView;
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraLine()V

    .line 1531
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeCameraWaterLevel()V

    .line 1533
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1534
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SquareMaskView;->resetMaskColor()V

    .line 1537
    :cond_1
    return-object v0
.end method

.method public updateLittleVheelItemImage()V
    .locals 22

    .prologue
    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1101
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v7

    .line 1102
    .local v7, "mPicSizeItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_picture_size_key"

    const-string v20, "16x9"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1104
    .local v18, "picSizeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v14

    .line 1117
    .local v14, "mVideoSizeItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_video_quality_key"

    const-string v20, "6"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1118
    .local v15, "mVideoSizeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v10

    .line 1123
    .local v10, "mSmartItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_smart_auto_key"

    const-string/jumbo v20, "on"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1124
    .local v11, "mSmartItemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v5

    .line 1129
    .local v5, "mGPSSettingItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_location_key"

    const-string/jumbo v20, "on"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1130
    .local v6, "mGPSStatusString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v3

    .line 1135
    .local v3, "mFlashSettingItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_flash_key"

    const-string v20, "auto"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, "mFlashString":Ljava/lang/String;
    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "auto_flash : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/lenovo/scg/camera/setting/SettingUtils;->isCanDisableShutterSound()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v8

    .line 1143
    .local v8, "mShutterItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_shutter_voice_key"

    const-string/jumbo v20, "on"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1144
    .local v9, "mShutterString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1149
    .end local v8    # "mShutterItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    .end local v9    # "mShutterString":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v12

    .line 1150
    .local v12, "mTakePicTypeItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_takepicture_type_key"

    const-string v20, "0"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1151
    .local v13, "mTakePicTypeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    sget-object v20, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    invoke-virtual/range {v19 .. v20}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->getSettingItem(Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;)Lcom/lenovo/scg/camera/setting/view/SettingItem;

    move-result-object v16

    .line 1156
    .local v16, "mVideoTypeItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    const-string v19, "camera_setting_video_type_key"

    const-string/jumbo v20, "normal"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->getCurrentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1157
    .local v17, "mVideoTypeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->selectRadioButton(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->setSettingItemResID(Lcom/lenovo/scg/camera/setting/view/SettingItem;Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListViewAdapter:Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
