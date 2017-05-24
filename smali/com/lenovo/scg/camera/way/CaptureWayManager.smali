.class public Lcom/lenovo/scg/camera/way/CaptureWayManager;
.super Ljava/lang/Object;
.source "CaptureWayManager.java"


# static fields
.field private static final ALLOW_CAPTURE_DELAY:I = 0x3e8

.field private static final FRONT_TIME:I = 0x3

.field private static final MSG_REOPEN_VOICE_WAY:I = 0x3

.field private static final MSG_RESUME_OPENED_WAYS:I = 0x2

.field private static final MSG_SET_ALLOW_CAPTURE:I = 0x1

.field private static final MSG_UPDATE_TIME:I = 0x0

.field private static final READ_ERROR:Ljava/lang/String; = "error"

.field public static final WAY_STATUS_OFF:Ljava/lang/String; = "off"

.field public static final WAY_STATUS_ON:Ljava/lang/String; = "on"

.field private static mManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

.field private static mMapKey2Way:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapMode2WayUsable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapWay2Status:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private am:Lcom/lenovo/scg/camera/agender/AgenderManager;

.field private ftm:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

.field private isAllowWayCapture:Z

.field private isCapture3sDelayOn:Z

.field private isPreviewCallbackOn:Z

.field private isProcessSmileLevel:Z

.field private mCameraId:I

.field private mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

.field private mContext:Landroid/content/Context;

.field private mFrontCurrentTimer:I

.field private mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

.field private mHandler:Landroid/os/Handler;

.field private mOpenedWay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Lcom/lenovo/scg/camera/way/CaptureWay;",
            ">;"
        }
    .end annotation
.end field

.field private mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager$2;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapKey2Way:Ljava/util/HashMap;

    .line 136
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager$3;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    .line 149
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager$4;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapMode2WayUsable:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "WayManager"

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    .line 45
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    .line 46
    invoke-static {}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getInstance()Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    .line 49
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    .line 50
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    .line 51
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    .line 56
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;

    .line 57
    invoke-static {}, Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;->getInstance()Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->ftm:Lcom/lenovo/scg/camera/facetracking/FaceTrackingManager;

    .line 58
    invoke-static {}, Lcom/lenovo/scg/camera/agender/AgenderManager;->getInstanse()Lcom/lenovo/scg/camera/agender/AgenderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->am:Lcom/lenovo/scg/camera/agender/AgenderManager;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    .line 68
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager$1;-><init>(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/way/CaptureWayManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    return p1
.end method

.method static synthetic access$010(Lcom/lenovo/scg/camera/way/CaptureWayManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    return v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/mode/CaptureListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/way/CaptureWayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/way/CaptureWayManager;)Lcom/lenovo/scg/camera/way/GesturesDetectAssist;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeOpenedWays()V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/way/CaptureWayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->reopenVoiceEng()V

    return-void
.end method

.method private canTimeSnapshot()Z
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 402
    .local v0, "mode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->HDR:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->SMART:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    if-ne v0, v1, :cond_1

    .line 406
    :cond_0
    const/4 v1, 0x1

    .line 408
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private destoryOpenedWays()V
    .locals 6

    .prologue
    .line 272
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 273
    .local v3, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    iget-object v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 275
    .local v4, "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/way/CaptureWay;->close()V

    .line 277
    const/4 v4, 0x0

    .line 279
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v4    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    :cond_2
    iget-object v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 283
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    .line 284
    return-void
.end method

.method private destoryOpenedWays4SwitchCamera()V
    .locals 15

    .prologue
    .line 288
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "camera_setting_takepicture_type_key"

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getErrorSign()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "currentKeyValue":Ljava/lang/String;
    const-string v11, "3"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 292
    .local v4, "isBackVoiceWayOpened":Z
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getCameraLocalPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "camera_front_voice"

    iget-object v13, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v14, 0x7f0f0026

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "voice":Ljava/lang/String;
    const-string/jumbo v11, "on"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 296
    .local v5, "isFrontVoiceWayOpened":Z
    const-string v11, "WayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destoryOpenedWays(): isBackVoiceWayOpened = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v11, "WayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destoryOpenedWays(): isFrontVoiceWayOpened = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    .line 300
    .local v6, "isVoiceWayAllOpened":Z
    :goto_0
    const/4 v0, 0x0

    .line 301
    .local v0, "VoiceWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v1

    .local v1, "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v7, :cond_4

    aget-object v9, v1, v3

    .line 302
    .local v9, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    invoke-direct {p0, v9}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 303
    iget-object v11, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 304
    .local v10, "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    const-string v11, "WayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destoryOpenedWays(): way = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v6, :cond_2

    sget-object v11, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    if-ne v9, v11, :cond_2

    .line 306
    const-string v11, "WayManager"

    const-string v12, "destoryOpenedWays: back and front voice shutter all is on"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object v0, v10

    .line 301
    .end local v10    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    .end local v0    # "VoiceWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    .end local v1    # "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .end local v3    # "i$":I
    .end local v6    # "isVoiceWayAllOpened":Z
    .end local v7    # "len$":I
    .end local v9    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 312
    .restart local v0    # "VoiceWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    .restart local v1    # "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .restart local v3    # "i$":I
    .restart local v6    # "isVoiceWayAllOpened":Z
    .restart local v7    # "len$":I
    .restart local v9    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .restart local v10    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_2
    const-string v11, "WayManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "destoryOpenedWays(): close ---> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v10, :cond_3

    .line 314
    invoke-virtual {v10}, Lcom/lenovo/scg/camera/way/CaptureWay;->close()V

    .line 315
    const/4 v10, 0x0

    .line 317
    :cond_3
    iget-object v11, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 320
    .end local v9    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .end local v10    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_4
    iget-object v11, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 321
    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    .line 322
    const-string v11, "WayManager"

    const-string v12, "destoryOpenedWays: resign voice way"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v11, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v12, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_5
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    .line 326
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;
    .locals 2

    .prologue
    .line 182
    const-class v1, Lcom/lenovo/scg/camera/way/CaptureWayManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;

    .line 185
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z
    .locals 1
    .param p1, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private needPreviewProcess()Z
    .locals 1

    .prologue
    .line 745
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE_AS:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOpenedWaysChanged()V
    .locals 3

    .prologue
    .line 707
    const-string v0, "WayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onpenedWaysChanged: needPreviewProcess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->needPreviewProcess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPreviewCallbackOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->needPreviewProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->registPreviewCallback()V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    .line 721
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setOpenedWayList(Ljava/util/HashMap;)V

    .line 734
    invoke-static {}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->getInstance()Lcom/lenovo/scg/camera/focus/FocusGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/FocusGroupManager;->updateFocusGroupOnUiThread()V

    .line 735
    return-void

    .line 715
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->needPreviewProcess()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->unregistPreviewCallback()V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    goto :goto_0
.end method

.method private open(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;
    .locals 4
    .param p1, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    .line 197
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "WayManager"

    const-string/jumbo v2, "open capture way repeat && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 210
    :goto_0
    return-object v1

    .line 202
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-nez v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->destoryOpenedWays()V

    .line 205
    :cond_1
    const/4 v0, 0x0

    .line 206
    .local v0, "obj":Lcom/lenovo/scg/camera/way/CaptureWay;
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->createWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->open()V

    :cond_2
    move-object v1, v0

    .line 210
    goto :goto_0
.end method

.method private pauseOpenedWays()V
    .locals 6

    .prologue
    .line 340
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 341
    .local v3, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 343
    .local v4, "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v4, :cond_0

    .line 344
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/way/CaptureWay;->onPause()V

    .line 340
    .end local v4    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v3    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    :cond_1
    return-void
.end method

.method private reopenVoiceEng()V
    .locals 3

    .prologue
    .line 1038
    const-string v1, "WayManager"

    const-string/jumbo v2, "reopenVoiceEng()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 1041
    .local v0, "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->open()V

    .line 1043
    .end local v0    # "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_0
    return-void
.end method

.method private resumeBackWayStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 835
    const-string v1, "WayManager"

    const-string/jumbo v2, "resumeBackWayStatus : preferences == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 838
    :cond_0
    const-string v1, "camera_setting_takepicture_type_key"

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getErrorSign()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "currentKeyValue":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resumeFrontWayStatus(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 797
    const-string v5, "WayManager"

    const-string/jumbo v6, "resumeFrontWayStatus : preferences == null && return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return-void

    .line 801
    :cond_0
    const-string v5, "camera_front_touch"

    iget-object v6, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0025

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "touch":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    sget-object v6, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v5, "camera_front_voice"

    iget-object v6, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0026

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "voice":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    sget-object v6, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string v5, "camera_front_blink"

    iget-object v6, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0027

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "blink":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    sget-object v6, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->BLINK:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v5, "camera_front_gesture"

    iget-object v6, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0028

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 815
    .local v4, "vsign":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    sget-object v6, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v5, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    sget-object v6, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onWayStatusChanged()V

    .line 821
    const-string v5, "camera_front_delay"

    iget-object v6, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f0f0024

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "m3sDelay":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->set3sDelayOn(Z)V

    goto :goto_0
.end method

.method private resumeOpenedWays()V
    .locals 6

    .prologue
    .line 329
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 330
    .local v3, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    iget-object v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 332
    .local v4, "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v4, :cond_0

    .line 333
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/way/CaptureWay;->onResume()V

    .line 329
    .end local v4    # "wayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v3    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;
    .locals 5
    .param p1, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 645
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add(), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has opened && return"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 657
    :goto_0
    return-object v0

    .line 649
    :cond_0
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->createWay(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;

    move-result-object v0

    .line 650
    .local v0, "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creatWay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWayObj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->open()V

    .line 653
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 657
    goto :goto_0
.end method

.method public captureForFrontTouchNo3sDelay()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    const-string v1, "captureForFrontTouchNo3sDelay"

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/CaptureListener;->capture(Ljava/lang/String;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelUiVisibility(I)V

    .line 1012
    return-void
.end method

.method public closeAllCaptureWay()V
    .locals 0

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->destoryOpenedWays()V

    .line 458
    return-void
.end method

.method public displayScreen()V
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelUiVisibility(I)V

    .line 1016
    return-void
.end method

.method public getErrorSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    const-string v0, "error"

    return-object v0
.end method

.method public getMapWay2Status()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSmileLevel()[I
    .locals 2

    .prologue
    .line 946
    const-string v0, "WayManager"

    const-string v1, "SMILE_LEVEL: getSmileLevel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mSmileLevelArray:[I

    return-object v0
.end method

.method public getWayPara()Lcom/lenovo/scg/camera/way/CaptureWayPara;
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 579
    const-string v0, "WayManager"

    const-string v1, "getWayPara: mContext == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    if-nez v0, :cond_1

    .line 583
    const-string v0, "WayManager"

    const-string v1, "getWayPara: mCaptureListener == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

    if-nez v0, :cond_2

    .line 587
    new-instance v0, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayPara;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

    return-object v0
.end method

.method public isAllowWayCapture()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    return v0
.end method

.method public isCapture3sDelayOn()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    return v0
.end method

.method public isTimerShutterOn()Z
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    return v0
.end method

.method public isTimering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 541
    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return v1

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v3, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 545
    .local v0, "obj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/lenovo/scg/camera/way/TimerWay;

    if-eqz v2, :cond_0

    .line 546
    check-cast v0, Lcom/lenovo/scg/camera/way/TimerWay;

    .end local v0    # "obj":Lcom/lenovo/scg/camera/way/CaptureWay;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/TimerWay;->isTimering()Z

    move-result v1

    goto :goto_0
.end method

.method public isTouchWayOn()Z
    .locals 1

    .prologue
    .line 559
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    return v0
.end method

.method public isVoiceShutterOn()Z
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    return v0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPara:Lcom/lenovo/scg/camera/way/CaptureWayPara;

    .line 267
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->destoryOpenedWays()V

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    .line 269
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;)V
    .locals 2
    .param p1, "faces"    # [Landroid/hardware/Camera$Face;

    .prologue
    .line 433
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->SMILE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/SmileWay;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/way/SmileWay;->onFaceDetection([Landroid/hardware/Camera$Face;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->pauseOpenedWays()V

    .line 238
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->unregistPreviewCallback()V

    .line 241
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/TimerUI;->destory()V

    .line 244
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayTips;->destory()V

    .line 245
    invoke-static {}, Lcom/lenovo/scg/camera/way/Prompter;->getInstance()Lcom/lenovo/scg/camera/way/Prompter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/Prompter;->destory()V

    .line 246
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->onPause()V

    .line 247
    iput v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    .line 250
    sget-object v0, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->NORMAL:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setCurrentMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V

    .line 251
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mTimerUI:Lcom/lenovo/scg/camera/way/TimerUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->resume(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v1, "error"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "value":Ljava/lang/String;
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnSharedPreferenceChangeListener: value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->open(Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 351
    const-string v2, "WayManager"

    const-string/jumbo v3, "onShutterButtonClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-nez v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeBackWayStatus(Landroid/content/SharedPreferences;)V

    .line 355
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->canTimeSnapshot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 356
    const-string v1, "WayManager"

    const-string/jumbo v2, "onShutterButtonClick() back camera && timer way is on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 360
    :cond_1
    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    const-string v0, "WayManager"

    const-string/jumbo v1, "onShutterButtonClick() return timer way shutterClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TIMER:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->onShutterButtonClick()Z

    move-result v0

    goto :goto_0

    .line 367
    :cond_2
    iget v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-ne v1, v2, :cond_0

    .line 369
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick() front camera: isShutterFromWay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lenovo/scg/camera/way/CaptureWay;->isShutterFromWay:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-boolean v2, Lcom/lenovo/scg/camera/way/CaptureWay;->isShutterFromWay:Z

    if-eqz v2, :cond_3

    .line 373
    sput-boolean v0, Lcom/lenovo/scg/camera/way/CaptureWay;->isShutterFromWay:Z

    .line 374
    const-string v1, "WayManager"

    const-string/jumbo v2, "onShutterButtonClick() ### set isShutterFromWay = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_3
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick() : isCapture3sDelayOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFrontCurrentTimer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    if-eqz v2, :cond_0

    .line 382
    iget v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    if-lez v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 384
    goto/16 :goto_0

    .line 386
    :cond_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mFrontCurrentTimer:I

    goto/16 :goto_0
.end method

.method public onSingleTapUp()Z
    .locals 2

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->TOUCH:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->clickShutterButton()V

    .line 420
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWayStatusChanged()V
    .locals 6

    .prologue
    .line 769
    const-string v3, "WayManager"

    const-string/jumbo v4, "onWayStatusChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    sget-object v3, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 787
    :cond_0
    return-void

    .line 771
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 772
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v3

    aget-object v2, v3, v1

    .line 773
    .local v2, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    sget-object v3, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 771
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    :cond_3
    const-string/jumbo v3, "on"

    sget-object v4, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 777
    const-string v3, "WayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWayStatusChanged: open Way : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getWayPara()Lcom/lenovo/scg/camera/way/CaptureWayPara;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->add(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;

    move-result-object v0

    .line 779
    .local v0, "cw":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v0, :cond_2

    .line 780
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    :goto_2
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/way/CaptureWay;->setShtterTimer(I)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 782
    .end local v0    # "cw":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_5
    const-string/jumbo v3, "off"

    sget-object v4, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    const-string v3, "WayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onWayStatusChanged: close Way : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->reduce(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V

    goto :goto_1
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapKey2Way:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .line 215
    .local v0, "mTagetWay":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    if-nez v0, :cond_1

    .line 216
    const-string v2, "WayManager"

    const-string v3, "SharedPreference read error && return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getWayPara()Lcom/lenovo/scg/camera/way/CaptureWayPara;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->open(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;Ljava/lang/Object;)Lcom/lenovo/scg/camera/way/CaptureWay;

    move-result-object v1

    .line 220
    .local v1, "obj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    goto :goto_0
.end method

.method public reduce(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)V
    .locals 4
    .param p1, "way"    # Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    .prologue
    .line 668
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reduce Way : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reduce(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has not opened && return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 674
    .local v0, "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->close()V

    .line 676
    const/4 v0, 0x0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    goto :goto_0
.end method

.method public resumeCaptureWay()V
    .locals 4

    .prologue
    .line 467
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 468
    const-string v1, "WayManager"

    const-string/jumbo v2, "resumeFrontWayStatus : preferences == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-ne v1, v2, :cond_2

    .line 472
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeFrontWayStatus(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 473
    :cond_2
    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "camera_setting_takepicture_type_key"

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getErrorSign()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "currentKeyValue":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->open(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public set3sDelayOn(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 851
    const-string v3, "WayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set3sDelayOn("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    .line 855
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    .line 857
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 858
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->values()[Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    move-result-object v3

    aget-object v2, v3, v1

    .line 859
    .local v2, "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    sget-object v3, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 857
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    :cond_1
    const-string/jumbo v3, "on"

    sget-object v4, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapWay2Status:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    const-string v3, "WayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set3sDelayOn: Way : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", -------> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 865
    .local v0, "cw":Lcom/lenovo/scg/camera/way/CaptureWay;
    if-eqz v0, :cond_0

    .line 866
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isCapture3sDelayOn:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    :goto_2
    invoke-virtual {v0, v3}, Lcom/lenovo/scg/camera/way/CaptureWay;->setShtterTimer(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 870
    .end local v0    # "cw":Lcom/lenovo/scg/camera/way/CaptureWay;
    .end local v2    # "way":Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;
    :cond_3
    return-void
.end method

.method public setAllowWayCapture(ZI)V
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "delay"    # I

    .prologue
    const/4 v4, 0x1

    .line 980
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowWayCapture: allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowWayCapture: delay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 987
    return-void
.end method

.method public setAllowWayCapture(ZZ)V
    .locals 5
    .param p1, "allow"    # Z
    .param p2, "immediately"    # Z

    .prologue
    const/4 v4, 0x1

    .line 959
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowWayCapture: allow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v1, "WayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAllowWayCapture: immediately = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz p2, :cond_2

    .line 962
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture:Z

    .line 963
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isPreviewCallbackOn:Z

    if-eqz v1, :cond_0

    .line 964
    if-eqz p1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->registPreviewCallback()V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->unregistPreviewCallback()V

    goto :goto_0

    .line 971
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 972
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 974
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 975
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setCurrentMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 5
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 488
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateByMode( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-nez p1, :cond_0

    .line 490
    const-string v2, "WayManager"

    const-string/jumbo v3, "updateByMode : mode == null && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->isSwitchingCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    const-string v2, "WayManager"

    const-string/jumbo v3, "updateByMode : isSwitchingCamera && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_1
    const/4 v1, 0x1

    .line 501
    .local v1, "killWays":Z
    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapMode2WayUsable:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    const-string v2, "WayManager"

    const-string/jumbo v3, "updateByMode : mode not contains in mMapMode2WayUsable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v1, 0x1

    .line 511
    :goto_1
    if-eqz v1, :cond_4

    .line 512
    const-string v2, "WayManager"

    const-string/jumbo v3, "updateByMode :killWays && closeAllCaptureWay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->closeAllCaptureWay()V

    goto :goto_0

    .line 506
    :cond_2
    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mMapMode2WayUsable:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 507
    .local v0, "b":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 508
    :goto_2
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateByMode : killWays from map is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 515
    .end local v0    # "b":Ljava/lang/Boolean;
    :cond_4
    const-string v2, "WayManager"

    const-string/jumbo v3, "updateByMode : !killWays && resumeCaptureWay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeCaptureWay()V

    goto :goto_0
.end method

.method public setPara(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/CaptureListener;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/lenovo/scg/camera/mode/CaptureListener;
    .param p3, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    .line 572
    iput-object p2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCaptureListener:Lcom/lenovo/scg/camera/mode/CaptureListener;

    .line 573
    iput-object p3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setContext(Landroid/content/Context;)V

    .line 575
    return-void
.end method

.method public setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V

    .line 696
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 753
    const-string v0, "WayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSize AS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method

.method public setShutter3sImage(Z)V
    .locals 7
    .param p1, "is"    # Z

    .prologue
    const/4 v6, 0x0

    .line 880
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setShutter3sImage( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "mShutter":Lcom/lenovo/scg/camera/ShutterButton;
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/lenovo/scg/camera/CameraActivity;

    if-eqz v2, :cond_0

    .line 883
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v0

    .line 884
    const-string v2, "WayManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setShutter3sImage() mShutter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    if-eqz v0, :cond_0

    .line 886
    if-eqz p1, :cond_1

    .line 887
    const v2, 0x7f020101

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 888
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "camera_front_supply"

    iget-object v4, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "value":Ljava/lang/String;
    const-string v2, "WayManager"

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

    .line 894
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 895
    const v2, 0x7f020180

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    goto :goto_0

    .line 896
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 897
    const v2, 0x7f0200ec

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 898
    invoke-virtual {v0, v6}, Lcom/lenovo/scg/camera/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 901
    :cond_3
    const v2, 0x7f0200da

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setImageResource(I)V

    .line 902
    const v2, 0x7f0200db

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/ShutterButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSmileLevelDetectOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 931
    const-string v0, "WayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMILE_LEVEL: setSmileLevelDetectOff: isProcessSmileLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 933
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    .line 934
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    iput-boolean v3, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmileLevel:Z

    .line 935
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    goto :goto_0
.end method

.method public setSmileLevelDetectOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 917
    const-string v0, "WayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMILE_LEVEL: setSmileLevelDetectOn: isProcessSmileLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    if-eqz v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 919
    :cond_0
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isProcessSmileLevel:Z

    .line 920
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mGesturesDetectAssist:Lcom/lenovo/scg/camera/way/GesturesDetectAssist;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/GesturesDetectAssist;->getDetectPara()Lcom/lenovo/scg/camera/way/DetectParams;

    move-result-object v0

    iput-boolean v3, v0, Lcom/lenovo/scg/camera/way/DetectParams;->mbProcessSmileLevel:Z

    .line 921
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onOpenedWaysChanged()V

    goto :goto_0
.end method

.method public showRemind(Ljava/lang/String;)V
    .locals 0
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 1008
    return-void
.end method

.method public shutterSoundWillPlay()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1026
    const-string v1, "WayManager"

    const-string/jumbo v2, "shutterSoundWillPlay()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isWayOpened(Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mOpenedWay:Ljava/util/HashMap;

    sget-object v2, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWay;

    .line 1029
    .local v0, "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWay;->close()V

    .line 1030
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1035
    .end local v0    # "mWayObj":Lcom/lenovo/scg/camera/way/CaptureWay;
    :cond_1
    return-void
.end method

.method public switch2Camera(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 611
    const-string v0, "WayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch to camera : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-ne v0, p1, :cond_1

    .line 613
    const-string v0, "WayManager"

    const-string/jumbo v1, "switch2Camera: mCameraId == id && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    .line 617
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-ne v0, v1, :cond_2

    .line 619
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->destoryOpenedWays4SwitchCamera()V

    .line 622
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeFrontWayStatus(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 624
    :cond_2
    iget v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mCameraId:I

    if-nez v0, :cond_0

    .line 626
    invoke-static {}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->getInstance()Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/VsignWayPositionDisplayer;->clear()V

    .line 629
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->destoryOpenedWays4SwitchCamera()V

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/CaptureWayManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->resumeBackWayStatus(Landroid/content/SharedPreferences;)V

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setShutter3sImage(Z)V

    goto :goto_0
.end method
