.class public Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;
.super Ljava/lang/Object;
.source "CameraSwitchTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;
    }
.end annotation


# static fields
.field private static mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

.field private static startSwotchTime:J

.field private static startTakePicTime:J

.field private static startVideoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startSwotchTime:J

    .line 20
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startTakePicTime:J

    .line 21
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startVideoTime:J

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static OnStartVideoClick()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startVideoTime:J

    .line 83
    return-void
.end method

.method public static onCameraSwitched()V
    .locals 6

    .prologue
    .line 46
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    if-eqz v2, :cond_0

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startSwotchTime:J

    sub-long v0, v2, v4

    .line 48
    .local v0, "mUsedTime":J
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;->onCameraSwitched(J)V

    .line 50
    :cond_0
    return-void
.end method

.method public static onCameraTakePic()V
    .locals 6

    .prologue
    .line 69
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    if-eqz v2, :cond_0

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startTakePicTime:J

    sub-long v0, v2, v4

    .line 71
    .local v0, "mUsedTime":J
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;->onCameraTakePic(J)V

    .line 73
    :cond_0
    return-void
.end method

.method public static onStartVideoDone()V
    .locals 6

    .prologue
    .line 92
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startVideoTime:J

    sub-long v0, v2, v4

    .line 94
    .local v0, "mUsedTime":J
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;->onStartVideo(J)V

    .line 96
    :cond_0
    return-void
.end method

.method public static setOnCameraSwitchListener(Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;)V
    .locals 0
    .param p0, "mListener"    # Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    .prologue
    .line 26
    sput-object p0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->mCameraSwitchListener:Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;

    .line 27
    return-void
.end method

.method public static startSwitchCamera()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startSwotchTime:J

    .line 37
    return-void
.end method

.method public static startTakePic()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->startTakePicTime:J

    .line 60
    return-void
.end method
