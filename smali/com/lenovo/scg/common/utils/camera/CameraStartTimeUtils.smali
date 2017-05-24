.class public Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;
.super Ljava/lang/Object;
.source "CameraStartTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;
    }
.end annotation


# static fields
.field public static final SECTION_TIME_TAG:Ljava/lang/String; = "SCG_CAMERA_DECTION_TIME"

.field public static final TOTAL_START_TIME_TAG:Ljava/lang/String; = "SCG_CAMERA_TOTAL_START_TIME "

.field public static final UPDATE_CAMERA_START_TIME:I = 0x3300

.field public static isCameraCreate:Z

.field private static mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

.field private static sAllKeysList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllTimesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sAutoFocusTime:J

.field private static sAutoFocusTimeEnd:J

.field private static sCameraStartTime:J

.field private static sEndTime:J

.field private static sFocusTime:J

.field private static sStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 15
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sStartTime:J

    .line 17
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sEndTime:J

    .line 19
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sCameraStartTime:J

    .line 20
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sFocusTime:J

    .line 21
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTime:J

    .line 22
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTimeEnd:J

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->isCameraCreate:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static addTime(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 181
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public static endAutoFocus()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTimeEnd:J

    .line 127
    return-void
.end method

.method public static getCameraStartTime()J
    .locals 2

    .prologue
    .line 231
    sget-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sCameraStartTime:J

    return-wide v0
.end method

.method public static getStartTime()J
    .locals 2

    .prologue
    .line 134
    sget-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sStartTime:J

    return-wide v0
.end method

.method public static onAutoFoucesDone()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 101
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    sget-wide v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTimeEnd:J

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTime:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;->onAutoFoucesDone(J)V

    .line 103
    sput-wide v6, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTime:J

    .line 104
    sput-wide v6, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTimeEnd:J

    .line 106
    :cond_0
    return-void
.end method

.method public static onCameraPause()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    invoke-interface {v0}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;->onCameraPause()V

    .line 78
    :cond_0
    return-void
.end method

.method public static onCameraStarted(J)V
    .locals 2
    .param p0, "startTime"    # J

    .prologue
    .line 62
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    invoke-interface {v0, p0, p1}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;->onCameraStarted(J)V

    .line 65
    :cond_0
    return-void
.end method

.method public static onFocusDone()V
    .locals 6

    .prologue
    .line 88
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sFocusTime:J

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;->onFocusDone(J)V

    .line 91
    :cond_0
    return-void
.end method

.method public static printAllTime(Ljava/lang/String;)V
    .locals 8
    .param p0, "filterTag"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toatal-Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    sget-object v3, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static printCameraStartTime()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 215
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 216
    const-string v2, "SCG_CAMERA_TOTAL_START_TIME "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total-Time : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 220
    const-string v2, "SCG_CAMERA_DECTION_TIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sCameraStartTime:J

    .line 223
    const-string v1, "SCG_CAMERA_DECTION_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Toatal-Time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sCameraStartTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 226
    sget-object v1, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 228
    return-void
.end method

.method public static setCameraStartedListener(Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;)V
    .locals 0
    .param p0, "mListener"    # Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    .prologue
    .line 50
    sput-object p0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->mCameraStartedListener:Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;

    .line 51
    return-void
.end method

.method public static setEndTime(Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 166
    .local v0, "end":J
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sEndTime:J

    .line 168
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sEndTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public static setStartTime(Ljava/lang/String;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 148
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "startTime":J
    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sStartTime:J

    .line 152
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllKeysList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v2, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAllTimesList:Ljava/util/List;

    sget-wide v4, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public static startAutoFocus()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTime:J

    .line 116
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sAutoFocusTimeEnd:J

    .line 117
    return-void
.end method

.method public static startFocus()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->sFocusTime:J

    .line 131
    return-void
.end method
