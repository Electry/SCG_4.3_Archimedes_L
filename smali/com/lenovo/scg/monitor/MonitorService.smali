.class public Lcom/lenovo/scg/monitor/MonitorService;
.super Lcom/lenovo/scg/monitor/AbstractService;
.source "MonitorService.java"

# interfaces
.implements Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;
.implements Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;
.implements Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;
.implements Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;
.implements Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;
.implements Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;
.implements Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;
.implements Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;,
        Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;
    }
.end annotation


# static fields
.field private static mCameraStartTimeTV:Landroid/widget/TextView;


# instance fields
.field private cameraHandler:Landroid/os/Handler;

.field cpu1:[J

.field cpu2:[J

.field cpuHandler:Landroid/os/Handler;

.field private floatViewH:I

.field private floatViewW:I

.field fps:Landroid/os/Handler;

.field private mAutoFocusTV:Landroid/widget/TextView;

.field private final mBinder:Landroid/os/IBinder;

.field private mCPUUsage:Landroid/widget/TextView;

.field private mCloseButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFPSTextView:Landroid/widget/TextView;

.field private mFlashStatus:Landroid/widget/TextView;

.field private mFloatWindowLayout:Landroid/view/View;

.field private mFocusGroupTextView:Landroid/widget/TextView;

.field private mFocusTime:Landroid/widget/TextView;

.field private mFreeMen:Landroid/widget/TextView;

.field private mHandlerOnModeChange:Landroid/os/Handler;

.field private mHdrBaseTextView:Landroid/widget/TextView;

.field private mHdrMaxTextView:Landroid/widget/TextView;

.field private mHdrMinTextView:Landroid/widget/TextView;

.field private mHdrTotalTextView:Landroid/widget/TextView;

.field private mMediaScerverPID:I

.field private mMediaServer:Landroid/widget/TextView;

.field private mMediaServerCPU:Landroid/widget/TextView;

.field private mMediaServerUSED:Ljava/lang/String;

.field private mMemDalvik:Landroid/widget/TextView;

.field private mMemFree:Ljava/lang/String;

.field private mMemNative:Landroid/widget/TextView;

.field private mMemTatal:Ljava/lang/String;

.field private mMetering:Landroid/widget/TextView;

.field private mMonitorLayout:Landroid/widget/RelativeLayout;

.field private mPictureSizeTV:Landroid/widget/TextView;

.field private mPoint:Landroid/graphics/Point;

.field private mPreviewFPSTextView:Landroid/widget/TextView;

.field private mPreviewTextView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mSCGCPUUsageView:Landroid/widget/TextView;

.field private mSCGMem:Landroid/widget/TextView;

.field private mSCGPID:I

.field private mStartVideoTime:Landroid/widget/TextView;

.field private mSwitchCamera:Landroid/widget/TextView;

.field private mTakePicTime:Landroid/widget/TextView;

.field private mThreadsView:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mTotalMem:Landroid/widget/TextView;

.field private mTvModeZSD:Landroid/widget/TextView;

.field mUIHandler:Landroid/os/Handler;

.field ms_totalProcessTime01:J

.field ms_totalProcessTime02:J

.field private originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

.field private result:[I

.field totalCPUtime01:J

.field totalCPUtime02:J

.field totalProcessTime01:J

.field totalProcessTime02:J

.field private touchPositionF:Lcom/lenovo/scg/monitor/PositionF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/lenovo/scg/monitor/AbstractService;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    .line 69
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    .line 71
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    .line 73
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTotalMem:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFreeMen:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGMem:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCloseButton:Landroid/widget/Button;

    .line 81
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    .line 83
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    .line 85
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCPUUsage:Landroid/widget/TextView;

    .line 87
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFPSTextView:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewTextView:Landroid/widget/TextView;

    .line 91
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mThreadsView:Landroid/widget/TextView;

    .line 93
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemNative:Landroid/widget/TextView;

    .line 95
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemDalvik:Landroid/widget/TextView;

    .line 97
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServer:Landroid/widget/TextView;

    .line 99
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerCPU:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGCPUUsageView:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    .line 105
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPictureSizeTV:Landroid/widget/TextView;

    .line 107
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTvModeZSD:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusGroupTextView:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewFPSTextView:Landroid/widget/TextView;

    .line 117
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    .line 119
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    .line 121
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    .line 125
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    .line 129
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    .line 133
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime01:J

    .line 135
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->totalCPUtime02:J

    .line 137
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime01:J

    .line 139
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->totalProcessTime02:J

    .line 141
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime01:J

    .line 143
    iput-wide v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->ms_totalProcessTime02:J

    .line 145
    iput v4, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I

    .line 147
    iput v4, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPoint:Landroid/graphics/Point;

    .line 151
    iput v4, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I

    .line 153
    iput v4, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemFree:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemTatal:Ljava/lang/String;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerUSED:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->result:[I

    .line 163
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTimer:Ljava/util/Timer;

    .line 166
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFlashStatus:Landroid/widget/TextView;

    .line 168
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMetering:Landroid/widget/TextView;

    .line 170
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    .line 171
    iput-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    .line 268
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/monitor/MonitorService$SCGBinder;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mBinder:Landroid/os/IBinder;

    .line 321
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/monitor/MonitorService$3;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mUIHandler:Landroid/os/Handler;

    .line 365
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/monitor/MonitorService$4;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    .line 620
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$6;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/monitor/MonitorService$6;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->fps:Landroid/os/Handler;

    .line 639
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/monitor/MonitorService$7;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->cameraHandler:Landroid/os/Handler;

    .line 862
    new-instance v0, Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/monitor/MonitorService$ModeChangeHandler;-><init>(Lcom/lenovo/scg/monitor/MonitorService;Lcom/lenovo/scg/monitor/MonitorService$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHandlerOnModeChange:Landroid/os/Handler;

    .line 863
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/monitor/MonitorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/monitor/MonitorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemNative:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mThreadsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFreeMen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFlashStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMetering:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/monitor/MonitorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/scg/monitor/MonitorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I

    return v0
.end method

.method static synthetic access$1800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGCPUUsageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerCPU:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/monitor/MonitorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I

    return v0
.end method

.method static synthetic access$2000(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCPUUsage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/monitor/MonitorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I

    return p1
.end method

.method static synthetic access$2100(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFPSTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPictureSizeTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTvModeZSD:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/monitor/MonitorService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->result:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/monitor/MonitorService;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # [I

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->result:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/monitor/MonitorService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemFree:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemFree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemTatal:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/monitor/MonitorService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerUSED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/monitor/MonitorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerUSED:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/monitor/MonitorService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/monitor/MonitorService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGMem:Landroid/widget/TextView;

    return-object v0
.end method

.method private buildMemResult(I)Ljava/lang/String;
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 417
    packed-switch p1, :pswitch_data_0

    .line 427
    const-string v0, ""

    :goto_0
    return-object v0

    .line 419
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getMemFree(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/android/SCGMemoryUtils;->getMemTotalM(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x7f0f062c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRes()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private refreshFloatWindow()V
    .locals 8

    .prologue
    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, "statusBarHeight":I
    if-nez v4, :cond_0

    .line 309
    iget-object v5, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 310
    .local v3, "rootView":Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 311
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 312
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 315
    .end local v2    # "r":Landroid/graphics/Rect;
    .end local v3    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {v5}, Lcom/lenovo/scg/monitor/PositionF;->getxPositionF()F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {v6}, Lcom/lenovo/scg/monitor/PositionF;->getxPositionF()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewW:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 316
    .local v0, "newx":I
    iget-object v5, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {v5}, Lcom/lenovo/scg/monitor/PositionF;->getyPosttionF()F

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {v6}, Lcom/lenovo/scg/monitor/PositionF;->getyPosttionF()F

    move-result v6

    sub-float/2addr v5, v6

    int-to-float v6, v4

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/lenovo/scg/monitor/MonitorService;->floatViewH:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    .line 317
    .local v1, "newy":I
    iget-object v5, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    new-instance v6, Lcom/lenovo/scg/monitor/Position;

    invoke-direct {v6, v0, v1}, Lcom/lenovo/scg/monitor/Position;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/scg/monitor/MonitorService;->refreshFloatWindow(Landroid/view/View;Lcom/lenovo/scg/monitor/Position;)V

    .line 318
    return-void
.end method


# virtual methods
.method public createFloatWindow()V
    .locals 3

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getmWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getmLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method public getFloatWindowLayoutView(I)Landroid/view/View;
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 443
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    if-nez v0, :cond_0

    .line 444
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    return-object v0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTotalMem:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTotalMem:Landroid/widget/TextView;

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFreeMen:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFreeMen:Landroid/widget/TextView;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGMem:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGMem:Landroid/widget/TextView;

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mResources:Landroid/content/res/Resources;

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 486
    iput-object p0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mContext:Landroid/content/Context;

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCloseButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCloseButton:Landroid/widget/Button;

    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCPUUsage:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mCPUUsage:Landroid/widget/TextView;

    .line 497
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFPSTextView:Landroid/widget/TextView;

    if-nez v0, :cond_7

    .line 498
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFPSTextView:Landroid/widget/TextView;

    .line 501
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewTextView:Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 502
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewTextView:Landroid/widget/TextView;

    .line 505
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPictureSizeTV:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPictureSizeTV:Landroid/widget/TextView;

    .line 509
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mThreadsView:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 510
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mThreadsView:Landroid/widget/TextView;

    .line 513
    :cond_a
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemNative:Landroid/widget/TextView;

    if-nez v0, :cond_b

    .line 514
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemNative:Landroid/widget/TextView;

    .line 517
    :cond_b
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemDalvik:Landroid/widget/TextView;

    if-nez v0, :cond_c

    .line 518
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMemDalvik:Landroid/widget/TextView;

    .line 521
    :cond_c
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServer:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServer:Landroid/widget/TextView;

    .line 525
    :cond_d
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGCPUUsageView:Landroid/widget/TextView;

    if-nez v0, :cond_e

    .line 526
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGCPUUsageView:Landroid/widget/TextView;

    .line 529
    :cond_e
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerCPU:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 530
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaServerCPU:Landroid/widget/TextView;

    .line 533
    :cond_f
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_10

    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    .line 537
    :cond_10
    sget-object v0, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 538
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    .line 541
    :cond_11
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    if-nez v0, :cond_12

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    .line 545
    :cond_12
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    if-nez v0, :cond_13

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    .line 549
    :cond_13
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTvModeZSD:Landroid/widget/TextView;

    if-nez v0, :cond_14

    .line 550
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTvModeZSD:Landroid/widget/TextView;

    .line 554
    :cond_14
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusGroupTextView:Landroid/widget/TextView;

    if-nez v0, :cond_15

    .line 555
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusGroupTextView:Landroid/widget/TextView;

    .line 558
    :cond_15
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewFPSTextView:Landroid/widget/TextView;

    if-nez v0, :cond_16

    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewFPSTextView:Landroid/widget/TextView;

    .line 564
    :cond_16
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    if-nez v0, :cond_17

    .line 565
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    .line 567
    :cond_17
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    if-nez v0, :cond_18

    .line 568
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    .line 570
    :cond_18
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    if-nez v0, :cond_19

    .line 571
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    .line 573
    :cond_19
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1a

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    .line 577
    :cond_1a
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    if-nez v0, :cond_1b

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    .line 581
    :cond_1b
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFlashStatus:Landroid/widget/TextView;

    if-nez v0, :cond_1c

    .line 583
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFlashStatus:Landroid/widget/TextView;

    .line 586
    :cond_1c
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMetering:Landroid/widget/TextView;

    if-nez v0, :cond_1d

    .line 587
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMetering:Landroid/widget/TextView;

    .line 591
    :cond_1d
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    if-nez v0, :cond_1e

    .line 592
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    .line 594
    :cond_1e
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    if-nez v0, :cond_1f

    .line 595
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v1, 0x7f1006e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    .line 597
    :cond_1f
    return-void
.end method

.method public onAutoFoucesDone(J)V
    .locals 5
    .param p1, "autoFocusTime"    # J

    .prologue
    .line 772
    const-string v0, "auto_focus_time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0629

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCameraPause()V
    .locals 5

    .prologue
    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0626

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6302\u8d77"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "mStartTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v2, 0x7f1006d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    .line 739
    :cond_0
    sget-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 740
    sget-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 744
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0628

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6302\u8d77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 748
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mAutoFocusTV:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0629

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6302\u8d77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 752
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0627

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6302\u8d77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 756
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f063e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6302\u8d77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    :cond_5
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 759
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f063f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6302\u8d77"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :cond_6
    return-void
.end method

.method public onCameraStarted(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryAppImpl;->getGalleryContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0626

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "mStartTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    const v2, 0x7f1006d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    .line 728
    :cond_0
    sget-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 729
    sget-object v1, Lcom/lenovo/scg/monitor/MonitorService;->mCameraStartTimeTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :cond_1
    return-void
.end method

.method public onCameraSwitched(I)V
    .locals 3
    .param p1, "cameraID"    # I

    .prologue
    .line 718
    const-string v0, "CameraMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " camera ID is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method public onCameraSwitched(J)V
    .locals 5
    .param p1, "usedTime"    # J

    .prologue
    .line 807
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSwitchCamera:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0627

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :cond_0
    return-void
.end method

.method public onCameraTakePic(J)V
    .locals 5
    .param p1, "usedTime"    # J

    .prologue
    .line 907
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTakePicTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f063e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 603
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    new-instance v1, Lcom/lenovo/scg/monitor/MonitorService$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/monitor/MonitorService$5;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 618
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMonitorLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-super {p0}, Lcom/lenovo/scg/monitor/AbstractService;->onCreate()V

    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/lenovo/scg/monitor/PositionF;

    invoke-direct {v0}, Lcom/lenovo/scg/monitor/PositionF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/lenovo/scg/monitor/PositionF;

    invoke-direct {v0}, Lcom/lenovo/scg/monitor/PositionF;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    if-nez v0, :cond_2

    .line 184
    const v0, 0x7f040108

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/monitor/MonitorService;->getFloatWindowLayoutView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->initViews()V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->createFloatWindow()V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTotalMem:Landroid/widget/TextView;

    const v3, 0x7f0f062c

    invoke-direct {p0, v3}, Lcom/lenovo/scg/monitor/MonitorService;->buildMemResult(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/android/FPSInfoUtils;->setOnFPSChangedListener(Lcom/lenovo/scg/common/utils/android/FPSInfoUtils$OnFPSChangedListener;)V

    .line 194
    invoke-static {p0}, Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo;->setOnCameraStateChangedListener(Lcom/lenovo/scg/monitor/camera/MonitorCameraInfo$OnCameraStateChangedListener;)V

    .line 196
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils;->setCameraStartedListener(Lcom/lenovo/scg/common/utils/camera/CameraStartTimeUtils$OnCameraStartedListener;)V

    .line 198
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils;->setOnCameraSwitchListener(Lcom/lenovo/scg/common/utils/camera/CameraSwitchTimeUtils$OnCameraSwitchListener;)V

    .line 201
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils;->setFocusGroupListener(Lcom/lenovo/scg/common/utils/camera/CameraFocusGroupChangeUtils$onFocusGroupListener;)V

    .line 202
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils;->setOnPreviewFPSChangedListener(Lcom/lenovo/scg/common/utils/android/FPSForPreviewUtils$OnPreviewFPSChangedListener;)V

    .line 205
    invoke-static {p0}, Lcom/lenovo/scg/camera/PhotoModule;->setOnModeChangeListener(Lcom/lenovo/scg/camera/PhotoModule$OnModeChangeListener;)V

    .line 208
    invoke-static {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub;->setMonitorListener(Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onHdrMonitorListener;)V

    .line 209
    invoke-static {p0}, Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub;->setMonitorListener(Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onLowlitMonitorListener;)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    const v3, 0x9001

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/monitor/ProcessProxy;->getPidForPidNmae(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I

    .line 215
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mSCGPID:I

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    const-string v3, "get mediaserver faild"

    invoke-static {v0, v3}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 217
    const-string v0, "/system/bin/mediaserver"

    invoke-static {v0}, Lcom/lenovo/scg/monitor/ProcessProxy;->getPidForPidNmae(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I

    .line 218
    iget v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mMediaScerverPID:I

    if-nez v0, :cond_5

    :goto_1
    const-string v0, "get mediaserver faild"

    invoke-static {v1, v0}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 220
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/monitor/MonitorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 221
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 222
    .local v6, "display":Landroid/view/Display;
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    new-instance v1, Lcom/lenovo/scg/monitor/MonitorService$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/monitor/MonitorService$1;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 235
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTimer:Ljava/util/Timer;

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lenovo/scg/monitor/MonitorService$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/monitor/MonitorService$2;-><init>(Lcom/lenovo/scg/monitor/MonitorService;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x5dc

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 254
    return-void

    .end local v6    # "display":Landroid/view/Display;
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_4
    move v0, v2

    .line 215
    goto :goto_0

    :cond_5
    move v1, v2

    .line 218
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 451
    invoke-super {p0}, Lcom/lenovo/scg/monitor/AbstractService;->onDestroy()V

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 455
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->cpuHandler:Landroid/os/Handler;

    const v1, 0x9003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    const-string v0, "FloatService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getmWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFloatWindowLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 459
    return-void
.end method

.method public onFPSChanged(I)V
    .locals 2
    .param p1, "newFPS"    # I

    .prologue
    .line 633
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 634
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 635
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->fps:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    return-void
.end method

.method public onFlashModeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "newFlashMode"    # Ljava/lang/String;

    .prologue
    .line 885
    if-eqz p1, :cond_0

    .line 886
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 887
    .local v0, "message":Landroid/os/Message;
    const v1, 0x8004

    iput v1, v0, Landroid/os/Message;->what:I

    .line 888
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 889
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 891
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onFocusDone(J)V
    .locals 5
    .param p1, "focusTime"    # J

    .prologue
    .line 765
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0628

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    :cond_0
    return-void
.end method

.method public onFocusGroupChanged(Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;)V
    .locals 5
    .param p1, "focusgroup"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$Group;
    .param p2, "preview"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$PreviewMode;
    .param p3, "shutter"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$ShutterMode;
    .param p4, "touch"    # Lcom/lenovo/scg/camera/focus/FocusGroupFactory$TouchMode;

    .prologue
    .line 782
    const-string v1, "focusgroup_changed"

    const-string v2, "focusgroup"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusGroupTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 792
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mFocusGroupTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f062a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method public onHdrTaken(JJJJJ)V
    .locals 3
    .param p1, "prepare"    # J
    .param p3, "shot"    # J
    .param p5, "process"    # J
    .param p7, "compress"    # J
    .param p9, "total"    # J

    .prologue
    .line 832
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR PrepTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "HDR ShotTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR ProcTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR ComprTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR TotalTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_3
    return-void
.end method

.method public onLowlitTaken(JJJJJ)V
    .locals 3
    .param p1, "prepare"    # J
    .param p3, "shot"    # J
    .param p5, "process"    # J
    .param p7, "compress"    # J
    .param p9, "total"    # J

    .prologue
    .line 848
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrBaseTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lowlit PrepTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Lowlit ShotTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMaxTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lowlit ProcTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrMinTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lowlit ComprTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 858
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHdrTotalTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lowlit TotalTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9, p10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    :cond_3
    return-void
.end method

.method public onMeteringModeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "newMetering"    # Ljava/lang/String;

    .prologue
    .line 896
    if-eqz p1, :cond_0

    .line 897
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 898
    .local v0, "message":Landroid/os/Message;
    const v1, 0x8005

    iput v1, v0, Landroid/os/Message;->what:I

    .line 899
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 900
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onModeChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sModeName"    # Ljava/lang/String;
    .param p2, "sZSDStatus"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 877
    const-string/jumbo v2, "\u6a21\u5f0f:%s, ZSL:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "sInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHandlerOnModeChange:Landroid/os/Handler;

    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/lenovo/scg/monitor/MonitorService;->mHandlerOnModeChange:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 880
    return-void
.end method

.method public onPictureSizeChanged(Landroid/hardware/Camera$Size;)V
    .locals 2
    .param p1, "newPictureSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 681
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 683
    .local v0, "mPictureSizeMessage":Landroid/os/Message;
    const v1, 0x8003

    iput v1, v0, Landroid/os/Message;->what:I

    .line 684
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 685
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 686
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->cameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    return-void
.end method

.method public onPreviewFPSChanged(I)V
    .locals 4
    .param p1, "previewFPS"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewFPSTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mPreviewFPSTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0634

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(Landroid/hardware/Camera$Size;)V
    .locals 4
    .param p1, "curSize"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 668
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 669
    .local v0, "mPreviewSizeMessage":Landroid/os/Message;
    const-string v1, "CameraMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const v1, 0x8002

    iput v1, v0, Landroid/os/Message;->what:I

    .line 672
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 673
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 674
    iget-object v1, p0, Lcom/lenovo/scg/monitor/MonitorService;->cameraHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    return-void
.end method

.method public onStartVideo(J)V
    .locals 5
    .param p1, "usedTime"    # J

    .prologue
    .line 914
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->mStartVideoTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f063f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/monitor/PositionF;->setxPositionF(F)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->originalPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/monitor/PositionF;->setyPosttionF(F)V

    .line 284
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/monitor/PositionF;->setxPositionF(F)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/monitor/PositionF;->setyPosttionF(F)V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->refreshFloatWindow()V

    goto :goto_0

    .line 297
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/monitor/MonitorService;->refreshFloatWindow()V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/monitor/MonitorService;->touchPositionF:Lcom/lenovo/scg/monitor/PositionF;

    invoke-virtual {v0}, Lcom/lenovo/scg/monitor/PositionF;->reset()V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public refreshFloatWindow(Landroid/view/View;Lcom/lenovo/scg/monitor/Position;)V
    .locals 2
    .param p1, "mFloatView"    # Landroid/view/View;
    .param p2, "newPosition"    # Lcom/lenovo/scg/monitor/Position;

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/lenovo/scg/monitor/MonitorService;->getmWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lenovo/scg/monitor/MonitorService;->getmLayoutParams(Lcom/lenovo/scg/monitor/Position;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-void
.end method
