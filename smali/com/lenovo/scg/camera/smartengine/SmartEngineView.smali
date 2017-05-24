.class public Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
.super Landroid/widget/RelativeLayout;
.source "SmartEngineView.java"

# interfaces
.implements Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;
.implements Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HANDLE_MESSAGE_HIDE_QRCODE:I = 0x4

.field private static final HANDLE_MESSAGE_JITTERING_CHANGE:I = 0x6

.field private static final HANDLE_MESSAGE_QRCODE:I = 0x0

.field private static final HANDLE_MESSAGE_QRCODE_WITH_CLIP:I = 0x2

.field private static final HANDLE_MESSAGE_SCENE_CHANGE:I = 0x5

.field private static final HANDLE_MESSAGE_SHOW_QRCODE:I = 0x3

.field private static final HANDLE_MESSAGE_UPDATE_SMART_PRO_INFO:I = 0x1

.field private static final INIT_TIMEOUT_TIMES:I = 0x14

.field private static final QRCODE_COMPRESS_RATE_MIN:F = 0.25f

.field private static final QRCODE_DEBUG:Z = false

.field private static final QRCODE_MAX_SIZE:I = 0x89800

.field private static final TAG:Ljava/lang/String; = "[smart_app]SmartEngineView"

.field private static mLock:Ljava/lang/Object;

.field private static mQrcOffset:I


# instance fields
.field private mArrow:Landroid/widget/RelativeLayout;

.field private mColorTemperatureInfoNumberLL:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideJittering:Z

.field private mISOInfoNumberLL:Landroid/widget/LinearLayout;

.field private mISOValue:I

.field private mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

.field private mISavePreviewWithClip:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

.field private mIsEnter:Z

.field private mIsProMode:Z

.field private mIsSupportQRC:Z

.field private mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mLuxInfoNumberLL:Landroid/widget/LinearLayout;

.field private mLuxValue:F

.field private mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mPaint1:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPaint3:Landroid/graphics/Paint;

.field private mPaint4:Landroid/graphics/Paint;

.field private mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

.field private mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mRgbCct:I

.field private mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private mSceneChangeTimeoutTimes:I

.field private mShutterInfoNumberLL:Landroid/widget/LinearLayout;

.field private mShutterSpeed:I

.field private mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

.field private mSmartOIS:Landroid/widget/ImageView;

.field private mTimer:Ljava/util/Timer;

.field private mVisible:Z

.field private m_nOrientation:I

.field private mjitteringChangeTimeoutTimes:I

.field private mtxSmartPlus:Landroid/widget/TextView;

.field private mtxSmartPlusJittering:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcOffset:I

    .line 1085
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v0, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .line 56
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 59
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    .line 62
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 65
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    .line 68
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlusJittering:Landroid/widget/TextView;

    .line 86
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 89
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 103
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mArrow:Landroid/widget/RelativeLayout;

    .line 105
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    .line 136
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsEnter:Z

    .line 138
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    .line 140
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsProMode:Z

    .line 144
    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSceneChangeTimeoutTimes:I

    .line 146
    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mjitteringChangeTimeoutTimes:I

    .line 297
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxValue:F

    .line 676
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mRgbCct:I

    .line 678
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    .line 680
    iput v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOValue:I

    .line 682
    iput-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    .line 684
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHideJittering:Z

    .line 891
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$2;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 903
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$3;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISavePreviewWithClip:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 916
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$4;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    .line 1126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint1:Landroid/graphics/Paint;

    .line 1128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint2:Landroid/graphics/Paint;

    .line 1130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint3:Landroid/graphics/Paint;

    .line 1132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint4:Landroid/graphics/Paint;

    .line 150
    const-string v0, "[smart_app]SmartEngineView"

    const-string v1, "SmartEngineView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->setContext(Landroid/content/Context;)V

    .line 154
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isQRCodeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    .line 157
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsProMode:Z

    .line 158
    const-string v0, "[smart_app]SmartEngineView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, mIsSupportQRC:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsProMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsProMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsProMode:Z

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->enableQRCodeDetection(Z)V

    .line 165
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setWillNotDraw(Z)V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->updateProSmartInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showQrcView(Z)V

    return-void
.end method

.method static synthetic access$406(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .prologue
    .line 49
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mjitteringChangeTimeoutTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mjitteringChangeTimeoutTimes:I

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onUIPreviewJitteringChange(I)V

    return-void
.end method

.method static synthetic access$606(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .prologue
    .line 49
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSceneChangeTimeoutTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSceneChangeTimeoutTimes:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/smartengine/SmartEngineView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onUIPreviewSceneChange(I)V

    return-void
.end method

.method private clickQrcRect(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 885
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    .line 886
    .local v0, "stcn":Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISavePreviewWithClip:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setSavePreviewCbWithClip(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;)V

    .line 888
    return-void
.end method

.method private getMaxPosition(Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "qrcPos"    # Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .prologue
    .line 512
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 513
    .local v0, "rc":Landroid/graphics/Rect;
    iget v1, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    iget v3, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 514
    iget v1, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    iget v3, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 515
    iget v1, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    iget v3, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 516
    iget v1, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    iget v3, p1, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 518
    return-object v0
.end method

.method private isProMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1061
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v0

    .line 1062
    .local v0, "mode":I
    if-ne v1, v0, :cond_0

    .line 1065
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onUIPreviewJitteringChange(I)V
    .locals 6
    .param p1, "nFlag"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 362
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlusJittering:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "[smart_app]SmartEngineView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreviewJitteringChange nFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHideJittering:Z

    if-eqz v1, :cond_2

    .line 372
    const-string v1, "[smart_app]SmartEngineView"

    const-string v2, "mHideJittering == true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    const v0, 0x7f0f00ab

    .line 382
    .local v0, "idString":I
    packed-switch p1, :pswitch_data_0

    .line 396
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 397
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlusJittering:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 384
    :pswitch_0
    const v0, 0x7f0f00ac

    .line 385
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 390
    :pswitch_1
    const v0, 0x7f0f00ad

    .line 391
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 392
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 393
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onUIPreviewSceneChange(I)V
    .locals 11
    .param p1, "nFlag"    # I

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 706
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 707
    const-string/jumbo v3, "onPreviewSceneChange return : null == mtxSmartPlus "

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    if-nez v3, :cond_2

    .line 712
    const-string/jumbo v3, "onPreviewSceneChange return : ! mVisible "

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_2
    const-string v3, "[smart_app]SmartEngineView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreviewSceneChange nFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const v2, 0x7f0f00a4

    .line 725
    .local v2, "idString":I
    const/4 v0, 0x0

    .line 726
    .local v0, "bgString":I
    packed-switch p1, :pswitch_data_0

    .line 778
    :goto_1
    :pswitch_0
    if-ne p1, v10, :cond_6

    .line 779
    invoke-virtual {p0, v8}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onPreviewJitteringChange(I)V

    .line 780
    iput-boolean v8, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHideJittering:Z

    .line 795
    :cond_3
    :goto_2
    if-lez v0, :cond_8

    .line 796
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 800
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 801
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 802
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 804
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    invoke-virtual {v3, v4, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 806
    const/16 v3, 0xc

    if-eq p1, v3, :cond_4

    if-eq p1, v10, :cond_4

    if-ne p1, v7, :cond_7

    .line 808
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 728
    :pswitch_1
    const v2, 0x7f0f00b4

    .line 729
    const v0, 0x7f0203b3

    .line 730
    goto :goto_1

    .line 744
    :pswitch_2
    const v2, 0x7f0f00af

    .line 745
    const v0, 0x7f0203ab

    .line 746
    goto :goto_1

    .line 748
    :pswitch_3
    const v2, 0x7f0f00b0

    .line 749
    const v0, 0x7f0203b0

    .line 750
    goto :goto_1

    .line 752
    :pswitch_4
    invoke-static {v6}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "camera_setting_flash_key"

    const-string v5, "auto"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "flashStatus":Ljava/lang/String;
    const-string v3, "[smart_app]SmartEngineView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kbg374, flashStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string/jumbo v3, "off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 756
    const v2, 0x7f0f00b3

    .line 760
    :goto_3
    const v0, 0x7f0203b5

    .line 761
    goto :goto_1

    .line 758
    :cond_5
    const v2, 0x7f0f00b2

    goto :goto_3

    .line 763
    .end local v1    # "flashStatus":Ljava/lang/String;
    :pswitch_5
    const v2, 0x7f0f00b1

    .line 764
    const v0, 0x7f0203b0

    .line 765
    goto/16 :goto_1

    .line 767
    :pswitch_6
    const v2, 0x7f0f00b7

    .line 768
    const v0, 0x7f0203af

    .line 769
    goto/16 :goto_1

    .line 771
    :pswitch_7
    const v2, 0x7f0f00a7

    .line 772
    goto/16 :goto_1

    .line 781
    :cond_6
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHideJittering:Z

    if-eqz v3, :cond_3

    .line 782
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHideJittering:Z

    .line 783
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->onPreviewJitteringChange(I)V

    goto/16 :goto_2

    .line 810
    :cond_7
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 814
    :cond_8
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 819
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static setScreenQrcOffset(I)V
    .locals 3
    .param p0, "offset"    # I

    .prologue
    .line 445
    const-string v0, "[smart_app]SmartEngineView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sput p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcOffset:I

    .line 447
    return-void
.end method

.method private showProSmartInfo(Z)V
    .locals 4
    .param p1, "v"    # Z

    .prologue
    const/16 v3, 0xb

    .line 522
    if-eqz p1, :cond_1

    .line 523
    iget v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_0

    .line 524
    const-string v1, "[smart_app]SmartEngineView"

    const-string v2, "kbg374, showProSmartInfo, 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 526
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 527
    const/16 v1, 0x12c

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 529
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 543
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 531
    :cond_0
    const-string v1, "[smart_app]SmartEngineView"

    const-string v2, "kbg374, showProSmartInfo, 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 533
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x42

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 534
    const/16 v1, 0x10b

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 535
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 536
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 541
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showQrcView(Z)V
    .locals 10
    .param p1, "v"    # Z

    .prologue
    const/4 v7, 0x0

    .line 451
    const-string v4, "[smart_app]SmartEngineView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "kbg374, showQrcView, v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz p1, :cond_6

    .line 453
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v4, v7}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 454
    sget-object v5, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 455
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    if-nez v4, :cond_1

    .line 456
    :cond_0
    const-string v4, "[smart_app]SmartEngineView"

    const-string v6, "kbg374, showQrcView,, mQrCoordPosition == null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v5

    .line 509
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    sub-int/2addr v6, v7

    mul-int/2addr v4, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget-object v8, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 473
    .local v3, "width":I
    move v0, v3

    .line 474
    .local v0, "height":I
    const/4 v2, 0x0

    .line 476
    .local v2, "rotation":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 477
    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kbg374, showQrcView, rotation:-------------->rotation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    const/16 v6, 0x10e

    if-ne v4, v6, :cond_3

    .line 480
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    if-le v4, v6, :cond_2

    .line 481
    rsub-int v2, v2, 0xb4

    .line 496
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setX(F)V

    .line 497
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    sget v7, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setY(F)V

    .line 498
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setPivotX(F)V

    .line 499
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setPivotY(F)V

    .line 500
    const-string v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kbg374, showQrcView, width:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rotation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    int-to-float v6, v2

    invoke-virtual {v4, v6}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setRotation(F)V

    .line 503
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rotation":I
    .end local v3    # "width":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 483
    .restart local v0    # "height":I
    .restart local v2    # "rotation":I
    .restart local v3    # "width":I
    :cond_3
    :try_start_1
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    if-nez v4, :cond_4

    .line 484
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    if-le v4, v6, :cond_2

    .line 485
    rsub-int v2, v2, -0xb4

    goto/16 :goto_1

    .line 487
    :cond_4
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_5

    .line 488
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    if-le v4, v6, :cond_2

    .line 489
    rsub-int v2, v2, -0xb4

    goto/16 :goto_1

    .line 491
    :cond_5
    iget v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_2

    .line 492
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    iget v4, v4, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    iget-object v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-le v4, v6, :cond_2

    .line 493
    rsub-int v2, v2, -0xb4

    goto/16 :goto_1

    .line 507
    .end local v0    # "height":I
    .end local v2    # "rotation":I
    .end local v3    # "width":I
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private switchKey2ResourceId(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const v0, 0x7f020945

    .line 670
    :goto_0
    return v0

    .line 648
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 670
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    :pswitch_0
    const v0, 0x7f02093b

    goto :goto_0

    .line 652
    :pswitch_1
    const v0, 0x7f02093c

    goto :goto_0

    .line 654
    :pswitch_2
    const v0, 0x7f02093d

    goto :goto_0

    .line 656
    :pswitch_3
    const v0, 0x7f02093e

    goto :goto_0

    .line 658
    :pswitch_4
    const v0, 0x7f02093f

    goto :goto_0

    .line 660
    :pswitch_5
    const v0, 0x7f020940

    goto :goto_0

    .line 662
    :pswitch_6
    const v0, 0x7f020941

    goto :goto_0

    .line 664
    :pswitch_7
    const v0, 0x7f020942

    goto :goto_0

    .line 666
    :pswitch_8
    const v0, 0x7f020943

    goto :goto_0

    .line 668
    :pswitch_9
    const v0, 0x7f020944

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateProSmartInfo()V
    .locals 17

    .prologue
    .line 547
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->getCctLux()[I

    move-result-object v13

    .line 549
    .local v13, "temp":[I
    if-eqz v13, :cond_0

    .line 550
    const/4 v14, 0x1

    aget v14, v13, v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxValue:F

    .line 551
    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mRgbCct:I

    .line 552
    const-string v14, "[smart_app]SmartEngineView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "kbg374, lux:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxValue:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", \u8272\u6e29:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mRgbCct:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->getISPInfo()[I

    move-result-object v13

    .line 556
    if-eqz v13, :cond_1

    .line 557
    const-string v14, "[smart_app]SmartEngineView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "kbg374, ISO:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",  shutter speed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    .line 559
    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOValue:I

    .line 564
    .end local v13    # "temp":[I
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxValue:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxValue:F

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "lux":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 567
    .local v8, "luxSplitArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 568
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v14, v8

    if-ge v4, v14, :cond_2

    .line 570
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 572
    .local v1, "child":Landroid/widget/ImageView;
    aget-object v14, v8, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    .end local v1    # "child":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v7    # "lux":Ljava/lang/String;
    .end local v8    # "luxSplitArray":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mRgbCct:I

    if-ltz v14, :cond_3

    .line 579
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mRgbCct:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 580
    .local v9, "rgbCct":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 581
    .local v10, "rgbCctSplitArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mColorTemperatureInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 582
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v14, v10

    if-ge v4, v14, :cond_3

    .line 584
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 586
    .restart local v1    # "child":Landroid/widget/ImageView;
    aget-object v14, v10, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 587
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mColorTemperatureInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "child":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v9    # "rgbCct":Ljava/lang/String;
    .end local v10    # "rgbCctSplitArray":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    if-ltz v14, :cond_4

    .line 593
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    if-nez v14, :cond_5

    .line 594
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 595
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 596
    .restart local v1    # "child":Landroid/widget/ImageView;
    const-string v14, "0"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    .end local v1    # "child":Landroid/widget/ImageView;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOValue:I

    if-ltz v14, :cond_8

    .line 632
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOValue:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "isoValue":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 634
    .local v6, "isoValueArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 635
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    array-length v14, v6

    if-ge v4, v14, :cond_8

    .line 636
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 637
    .restart local v1    # "child":Landroid/widget/ImageView;
    aget-object v14, v6, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 598
    .end local v1    # "child":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v5    # "isoValue":Ljava/lang/String;
    .end local v6    # "isoValueArray":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    const/16 v15, 0x3e8

    if-ge v14, v15, :cond_6

    .line 599
    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    div-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 600
    .local v11, "shutterSpeed":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 601
    .local v12, "shutterSpeedArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 602
    new-instance v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 603
    .local v2, "child1":Landroid/widget/ImageView;
    const-string v14, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    new-instance v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 606
    .local v3, "child2":Landroid/widget/ImageView;
    const-string v14, "/"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    array-length v14, v12

    if-ge v4, v14, :cond_4

    .line 609
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 610
    .restart local v1    # "child":Landroid/widget/ImageView;
    aget-object v14, v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 613
    .end local v1    # "child":Landroid/widget/ImageView;
    .end local v2    # "child1":Landroid/widget/ImageView;
    .end local v3    # "child2":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v11    # "shutterSpeed":Ljava/lang/String;
    .end local v12    # "shutterSpeedArray":[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 615
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 616
    .restart local v1    # "child":Landroid/widget/ImageView;
    const-string v14, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 618
    .end local v1    # "child":Landroid/widget/ImageView;
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_4

    .line 619
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterSpeed:I

    div-int/lit16 v14, v14, 0x3e8

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 620
    .restart local v11    # "shutterSpeed":Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 621
    .restart local v12    # "shutterSpeedArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 622
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_5
    array-length v14, v12

    if-ge v4, v14, :cond_4

    .line 623
    new-instance v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 624
    .restart local v1    # "child":Landroid/widget/ImageView;
    aget-object v14, v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->switchKey2ResourceId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 641
    .end local v1    # "child":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v11    # "shutterSpeed":Ljava/lang/String;
    .end local v12    # "shutterSpeedArray":[Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v6, 0x1

    .line 235
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsEnter:Z

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsEnter:Z

    .line 240
    const-string v0, "[smart_app]SmartEngineView"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->addSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V

    .line 244
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->SetSmartEngineQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;)V

    .line 246
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    .line 249
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 251
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    .line 252
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView$1;-><init>(Lcom/lenovo/scg/camera/smartengine/SmartEngineView;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 262
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->updateProSmartInfo()V

    .line 263
    invoke-direct {p0, v6}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showProSmartInfo(Z)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->enter()V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsEnter:Z

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 273
    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsEnter:Z

    .line 275
    const-string v0, "[smart_app]SmartEngineView"

    const-string v1, "exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 286
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->exit(Z)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->delSmartEngineCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineCallback;)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->SetSmartEngineQRCodeCallback(Lcom/lenovo/scg/camera/smartengine/SmartEngine$SmartEngineQRCodeCallback;)V

    .line 291
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setVisibility(I)V

    .line 292
    invoke-static {}, Lcom/lenovo/scg/common/ui/TinyTips;->destroy()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 229
    const-string v0, "[smart_app]SmartEngineView"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 829
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    if-nez v2, :cond_0

    .line 874
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 834
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 856
    :sswitch_0
    const-string v2, "[smart_app]SmartEngineView"

    const-string/jumbo v3, "smart_engine_ois is clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    const v5, 0x7f0f01db

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    const/16 v6, 0xbb8

    invoke-static {v3, v2, v4, v5, v6}, Lcom/lenovo/scg/common/ui/TinyTips;->show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;II)V

    goto :goto_0

    .line 836
    :sswitch_1
    const-string v2, "[smart_app]SmartEngineView"

    const-string v3, "kbg374, QRC------------------------->Rect is clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v2, "click_ivc_qrcode"

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->enterTraceEvent(Ljava/lang/String;)V

    .line 850
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    .line 851
    .local v1, "stcn":Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISavePreviewWithClip:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setSavePreviewCbWithClip(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;)V

    goto :goto_0

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x7f1008f9 -> :sswitch_0
        0x7f10090b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1136
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1140
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint1:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint2:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1144
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint3:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint4:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1149
    sget-object v8, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    if-nez v0, :cond_0

    .line 1152
    monitor-exit v8

    .line 1178
    :goto_0
    return-void

    .line 1156
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    aget-object v7, v0, v6

    .line 1167
    .local v7, "tmp":Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    int-to-float v0, v0

    iget v1, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1168
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    int-to-float v0, v0

    iget v1, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1169
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    int-to-float v0, v0

    iget v1, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1170
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    int-to-float v0, v0

    iget v1, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint4:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1172
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    int-to-float v1, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    int-to-float v2, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    int-to-float v3, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1173
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x2:I

    int-to-float v1, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y2:I

    int-to-float v2, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    int-to-float v3, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint2:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1174
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x3:I

    int-to-float v1, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y3:I

    int-to-float v2, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    int-to-float v3, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint3:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1175
    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x4:I

    int-to-float v1, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y4:I

    int-to-float v2, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->x1:I

    int-to-float v3, v0

    iget v0, v7, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->y1:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mPaint4:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1156
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1177
    .end local v7    # "tmp":Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    :cond_1
    monitor-exit v8

    goto/16 :goto_0

    .end local v6    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 178
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 179
    const-string v0, "[smart_app]SmartEngineView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x7f1008f5

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 183
    const v0, 0x7f1008f4

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 185
    const v0, 0x7f1008f6

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 188
    const v0, 0x7f1008f7

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 191
    const v0, 0x7f1008f9

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartOIS:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f10090b

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f100902

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 206
    const v0, 0x7f100904

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLuxInfoNumberLL:Landroid/widget/LinearLayout;

    .line 207
    const v0, 0x7f100906

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mColorTemperatureInfoNumberLL:Landroid/widget/LinearLayout;

    .line 208
    const v0, 0x7f100908

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mShutterInfoNumberLL:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f10090a

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mISOInfoNumberLL:Landroid/widget/LinearLayout;

    .line 211
    const v0, 0x7f1008fc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mArrow:Landroid/widget/RelativeLayout;

    .line 212
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrcCircleRL:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 220
    const v0, 0x7f1008f8

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlus:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f1008fb

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mtxSmartPlusJittering:Landroid/widget/TextView;

    .line 226
    return-void
.end method

.method public onPreviewJitteringChange(I)V
    .locals 4
    .param p1, "nFlag"    # I

    .prologue
    const/4 v2, 0x6

    .line 348
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 353
    invoke-static {}, Lcom/lenovo/scg/common/animation/SmartAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPreviewQRCode([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)V
    .locals 4
    .param p1, "positions"    # [Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .prologue
    .line 1093
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsSupportQRC:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mIsProMode:Z

    if-eqz v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    sget-object v2, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1097
    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    .line 1098
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->postInvalidate()V

    .line 1101
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    if-nez v1, :cond_2

    .line 1102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1103
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1104
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    const-string v1, "[smart_app]SmartEngineView"

    const-string v2, "kbg374, onPreviewQRCode, mQrCoordPosition == null------------------->1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    .end local v0    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1108
    :cond_2
    const-string v1, "[smart_app]SmartEngineView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kbg374, onPreviewQRCode, mQrCoordPosition.length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mQrCoordPosition:[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1122
    .restart local v0    # "message":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1123
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPreviewSceneChange(I)V
    .locals 4
    .param p1, "nFlag"    # I

    .prologue
    const/4 v2, 0x5

    .line 691
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 694
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 696
    invoke-static {}, Lcom/lenovo/scg/common/animation/SmartAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 702
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "isVisible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 300
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->m_nOrientation:I

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v0, "[smart_app]SmartEngineView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->setOrientation(I)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mMove:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mJittering:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 312
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mProSmartInfo:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, v3}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 321
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 325
    rem-int/lit16 v0, p1, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 337
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->isProMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 338
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showProSmartInfo(Z)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mScenceTxt:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    goto :goto_1

    .line 340
    :cond_4
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->showProSmartInfo(Z)V

    goto :goto_0
.end method

.method public setSmartEngineEnable(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1078
    if-ne p1, v1, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->enter()V

    .line 1083
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->mSmartEngine:Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->exit(Z)V

    goto :goto_0
.end method
