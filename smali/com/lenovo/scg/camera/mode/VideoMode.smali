.class public Lcom/lenovo/scg/camera/mode/VideoMode;
.super Lcom/lenovo/scg/camera/mode/CaptureMode;
.source "VideoMode.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;,
        Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;,
        Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;,
        Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;,
        Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;
    }
.end annotation


# static fields
.field private static final CLEAR_VIDEO_RECORDING:I = 0x8

.field private static final DEFAULT_SPEED_VIDEO_TIMES:I = 0x4

.field private static final DEFAULT_VIDEO_INTENT_HEIGHT:I = 0x438

.field private static final DEFAULT_VIDEO_INTENT_WIDTH:I = 0x5a0

.field private static final HIDE_THUMBNAIL_BUTTON:I = 0xa

.field private static final HIDE_THUMBNAIL_DELAY_TIME:I = 0xbb8

.field private static final INDOOR:I = 0x1

.field private static final NORMAL:I = 0x0

.field private static final NORMAL_VIDEO:Ljava/lang/String; = "normal"

.field private static final OUTDOOR:I = 0x2

.field private static final PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

.field private static final SAMPLE_RATE_IN_HZ:I = 0x1f40

.field private static final SPECIAL_VIDEO_LIVE:Ljava/lang/String; = "live"

.field private static final SPECIAL_VIDEO_RAPID:Ljava/lang/String; = "rapid"

.field private static final SPECIAL_VIDEO_SLOW:Ljava/lang/String; = "slow"

.field private static final TAG:Ljava/lang/String; = "VIDEO_MODE"

.field private static final UPDATE_RECORD_TIME:I = 0x5


# instance fields
.field private VideoRecordPreviewHeight:I

.field private VideoRecordPreviewWidth:I

.field private hasGetProfile:Z

.field private mAudioBufferSize:I

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioRecordThread:Ljava/lang/Thread;

.field private mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

.field private mBgCameraPreviewCallback:Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

.field private mCaptureTimeLapse:Z

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentQuality:I

.field private mIntentSize:J

.field private mIntentUri:Landroid/net/Uri;

.field private mIsAudioRecording:Z

.field protected mIsSupportZSD:Z

.field private mIsVideoNormalRecordingMode:Z

.field private mIsVideoRecording:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

.field private mNeedVideoIntentCache:Z

.field private final mOnPhotoSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

.field private mOrientationCompensationAtRecordStart:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausedMoment:J

.field private mPausedOffsetTime:J

.field private mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordDuration:J

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mSavedFlashMode:Ljava/lang/String;

.field private mSavedPictureSize:Landroid/hardware/Camera$Size;

.field private mSavedPreviewSize:Landroid/hardware/Camera$Size;

.field private mSnapshotInProgress:Z

.field private mStorageSpace:J

.field private mTempBuffer:[B

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

.field private mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

.field private mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

.field private mVideoQuality:I

.field private mVideoRecordThread:Ljava/lang/Thread;

.field private mVideoType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "metting"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/mode/VideoMode;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/CaptureMode;-><init>()V

    .line 123
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->hasGetProfile:Z

    .line 126
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    .line 127
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    .line 133
    invoke-static {}, Lcom/lenovo/scg/camera/lescf/LeSCFPlatformSupport;->getZSDSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsSupportZSD:Z

    .line 134
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewWidth:I

    .line 135
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewHeight:I

    .line 138
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecordThread:Ljava/lang/Thread;

    .line 139
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    .line 145
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z

    .line 162
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    .line 164
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z

    .line 166
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCaptureTimeLapse:Z

    .line 168
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 169
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordingTimeCountsDown:Z

    .line 181
    sget-object v0, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_HIGH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    .line 184
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    .line 188
    iput v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    .line 193
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreviewing:Z

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedOffsetTime:J

    .line 203
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoRecordThread:Ljava/lang/Thread;

    .line 206
    new-instance v0, Lcom/lenovo/scg/camera/mode/VideoMode$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$1;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mOnPhotoSavedListener:Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;

    .line 446
    return-void
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/mode/VideoMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/controller/VideoModeController;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/camera/mode/VideoMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/camera/mode/VideoMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/camera/mode/VideoMode;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mStorageSpace:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/camera/mode/VideoMode;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;
    .param p1, "x1"    # J

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mStorageSpace:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearVideoRecording()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/mode/VideoMode;)[B
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTempBuffer:[B

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/mode/VideoMode;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;
    .param p1, "x1"    # [B

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTempBuffer:[B

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/mode/VideoMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioBufferSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/mode/VideoMode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/mode/VideoMode;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/mode/VideoMode;)Lcom/lenovo/scg/camera/mode/bestlive/BestLive;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/camera/mode/VideoMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/mode/VideoMode;

    .prologue
    .line 87
    iget v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewWidth:I

    return v0
.end method

.method private addVideoToMediaStore()Z
    .locals 12

    .prologue
    .line 2455
    const-string v7, "VIDEO_MODE"

    const-string v8, "addVideoToMediaStore"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v1, 0x0

    .line 2458
    .local v1, "fail":Z
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v7, :cond_2

    .line 2459
    const-string v7, "VIDEO_MODE"

    const-string v8, "mVideoFileDescriptor == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_size"

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v4, v8, v10

    .line 2464
    .local v4, "nowInSec":J
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2465
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2468
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSlowVideo()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2469
    iget-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    const-wide/16 v10, 0x4

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    .line 2473
    :cond_0
    :goto_0
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Actual video record duration = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iget-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 2476
    iget-boolean v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_1

    .line 2477
    iget-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/camera/mode/VideoMode;->getTimeLapseVideoLength(J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    .line 2479
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "duration"

    iget-wide v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2492
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_data"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2494
    .local v3, "finalName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2496
    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2506
    const-string v7, "content://media/external/video/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2507
    .local v6, "videoTable":Landroid/net/Uri;
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2508
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.hardware.action.NEW_VIDEO"

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2511
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video intent addVideoToMediaStore succeeds! And final file name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2522
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    .end local v3    # "finalName":Ljava/lang/String;
    .end local v4    # "nowInSec":J
    .end local v6    # "videoTable":Landroid/net/Uri;
    :cond_2
    :goto_2
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    move v2, v1

    .line 2526
    .end local v1    # "fail":Z
    .local v2, "fail":I
    :goto_3
    return v2

    .line 2470
    .end local v2    # "fail":I
    .restart local v1    # "fail":Z
    .restart local v4    # "nowInSec":J
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isRapidVideo()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2471
    iget-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    goto/16 :goto_0

    .line 2481
    :cond_4
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video duration <= 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2498
    .restart local v3    # "finalName":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v7, "VIDEO_MODE"

    const-string v8, "Fail to rename video file to the final name!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->deleteCurrentVideo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    const/4 v1, 0x1

    .line 2522
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .restart local v2    # "fail":I
    goto :goto_3

    .line 2514
    .end local v2    # "fail":I
    .end local v3    # "finalName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2517
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "VIDEO_MODE"

    const-string v8, "failed to add video to media store"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2518
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2519
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2520
    const/4 v1, 0x1

    .line 2522
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    const-string v8, "VIDEO_MODE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current video URI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v7
.end method

.method public static adjustSize(Landroid/hardware/Camera$Size;)V
    .locals 4
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 987
    if-nez p0, :cond_1

    .line 988
    const-string v0, "VIDEO_MODE"

    const-string v1, "IntentSizeCheck size == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentSizeCheck adjust size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 996
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit16 v0, v0, 0x438

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/Camera$Size;->width:I

    .line 997
    const/16 v0, 0x438

    iput v0, p0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0
.end method

.method private cachedVideoIntentFileCheck()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 691
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 694
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 698
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 699
    const-string v2, "VIDEO_MODE"

    const-string v3, "mVideoIntentInfo file not exists!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoIntentInfo file Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 704
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 2630
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2631
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2632
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2633
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    .line 2637
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private clearVideoNamer()V
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;->finish()V

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    .line 2608
    :cond_0
    return-void
.end method

.method private clearVideoRecording()V
    .locals 2

    .prologue
    .line 2203
    const-string v0, "VIDEO_MODE"

    const-string v1, "clearVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2205
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->showImageCaptureUI()V

    .line 2206
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->hideVideoPrepareTips()V

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->getPhotoUI()Lcom/lenovo/scg/camera/PhotoUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->onVideoRetake()V

    .line 2215
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseMediaRecorder()V

    .line 2216
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->restoreCameraParameters()V

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->stopVideoMode()V

    .line 2220
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2221
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->deleteVideoFile(Ljava/lang/String;)V

    .line 2223
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearVideoNamer()V

    .line 2233
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2613
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2617
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2619
    :cond_0
    return-void

    .line 2614
    :catch_0
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "VIDEO_MODE"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2768
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2769
    const-string v0, ".mp4"

    .line 2771
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 2
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2775
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2776
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "outputFileFormat is mp4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    const-string/jumbo v0, "video/mp4"

    .line 2781
    :goto_0
    return-object v0

    .line 2780
    :cond_0
    const-string v0, "VIDEO_MODE"

    const-string v1, "default outputFileFormat is 3gpp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    const-string/jumbo v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 2531
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2532
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0549

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2535
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2622
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2624
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2625
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_0
    return-void
.end method

.method private generateVideoFilename(I)V
    .locals 14
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2029
    :try_start_0
    const-string v9, "VIDEO_MODE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateVideoFilename "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2031
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->createName(J)Ljava/lang/String;

    move-result-object v7

    .line 2033
    .local v7, "title":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2035
    .local v3, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v5

    .line 2036
    .local v5, "mime":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/lenovo/scg/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2037
    .local v6, "path":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tmp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2038
    .local v8, "tmpPath":Ljava/lang/String;
    const-string v9, "VIDEO_MODE"

    const-string/jumbo v10, "path done"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v9, Landroid/content/ContentValues;

    const/4 v10, 0x7

    invoke-direct {v9, v10}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2040
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v10, "title"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v10, "_display_name"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v10, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2043
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v10, "mime_type"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v10, "_data"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v10, "resolution"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2052
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v9}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 2054
    .local v4, "loc":Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 2055
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v10, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2057
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v10, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2059
    const-string v9, "VIDEO_MODE"

    const-string v10, "loc done"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    .end local v4    # "loc":Landroid/location/Location;
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    if-nez v9, :cond_1

    .line 2064
    const-string v9, "VIDEO_MODE"

    const-string/jumbo v10, "new VideoNamer"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    new-instance v9, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    invoke-direct {v9}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;-><init>()V

    iput-object v9, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    .line 2068
    :cond_1
    iput-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    .line 2069
    const-string v9, "VIDEO_MODE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "New video filename: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    .end local v0    # "dateTaken":J
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "mime":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "tmpPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 2070
    :catch_0
    move-exception v2

    .line 2071
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "VIDEO_MODE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateVideoFilename exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDesiredPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 24
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1108
    .local v10, "now":J
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v17

    .line 1109
    .local v17, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v17, :cond_0

    .line 1110
    const-string v18, "VIDEO_MODE"

    const-string/jumbo v19, "null == sizes can\'t getDesiredPreviewSize"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :goto_0
    return-void

    .line 1113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1114
    .local v6, "getSize":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSupportedPreviewSizes costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v6, v10

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v19, "VIDEO_MODE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getDesiredPreviewSize sizes "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v17, :cond_2

    const-string v18, "== null"

    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 1119
    .local v12, "preferred":Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    mul-int v13, v18, v19

    .line 1120
    .local v13, "product":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1121
    .local v4, "getPrefer":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getPreferredPreviewSizeForVideo costs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v4, v6

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getDesiredPreviewSize   getPreferredPreviewSizeForVideo  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1129
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1130
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    .line 1131
    .local v16, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v0, v18

    if-le v0, v13, :cond_1

    .line 1132
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1115
    .end local v4    # "getPrefer":J
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .end local v12    # "preferred":Landroid/hardware/Camera$Size;
    .end local v13    # "product":I
    .end local v16    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    const-string v18, "!=null"

    goto/16 :goto_1

    .line 1135
    .restart local v4    # "getPrefer":J
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    .restart local v12    # "preferred":Landroid/hardware/Camera$Size;
    .restart local v13    # "product":I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1136
    .local v14, "removeDone":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "removes useless sizes costs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v14, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 1142
    .local v9, "optimalSize":Landroid/hardware/Camera$Size;
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    .line 1143
    iget v0, v9, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    .line 1144
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "get optimalSize costs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPictureSizebyType(Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;
    .locals 7
    .param p1, "pictureSizeType"    # Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    .prologue
    .line 1002
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const-string v5, "camera_setting_picture_size_key"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "mCurrentPictureSize":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraId()I

    move-result v4

    sget-object v5, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v6, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v4, v5, v6}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1011
    .local v2, "mTempSize":Landroid/hardware/Camera$Size;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    .end local v2    # "mTempSize":Landroid/hardware/Camera$Size;
    :cond_0
    invoke-static {v0}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->judgeTypeBySizeString(Ljava/lang/String;)Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    move-result-object v1

    .line 1016
    .local v1, "mSizeRatioType":Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraId()I

    move-result v4

    invoke-static {v4, v1, p1}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1018
    .local v3, "pictureSize":Landroid/hardware/Camera$Size;
    return-object v3
.end method

.method private getRecordMode(Ljava/lang/String;)I
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 2011
    const/4 v0, 0x0

    .line 2013
    .local v0, "audioMode":I
    sget-object v1, Lcom/lenovo/scg/camera/mode/VideoMode;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    const/4 v0, 0x0

    .line 2022
    :goto_0
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return v0

    .line 2015
    :cond_0
    sget-object v1, Lcom/lenovo/scg/camera/mode/VideoMode;->PREF_CAMERA_VIDEO_HD_RECORDING_ENTRYVALUES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2016
    const/4 v0, 0x1

    goto :goto_0

    .line 2018
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->updateThumbnail()V

    .line 2671
    :cond_0
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 7
    .param p1, "deltaMs"    # J

    .prologue
    .line 2656
    long-to-double v2, p1

    iget v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2658
    .local v0, "numberOfFrames":D
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private initIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 610
    const-string v3, "VIDEO_MODE"

    const-string v4, "VideoMode initIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 613
    .local v1, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->getTempVideoNameOnIntent()Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 616
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 617
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->cachedVideoIntentFileCheck()V

    .line 619
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v3, :cond_2

    .line 620
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-direct {p0, v1, v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSameIntent(Landroid/os/Bundle;Lcom/lenovo/scg/common/utils/VideoIntentInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmCurrentVideoFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    .line 623
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmIntentUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    .line 624
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmCurrentVideoUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    .line 625
    const-string v4, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restore mCurrentVideoUri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmIntentSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    .line 630
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmIntentQuality()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    .line 631
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    invoke-virtual {v3}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmMaxVideoDurationInMs()I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    .line 633
    const-string v3, "VIDEO_MODE"

    const-string/jumbo v4, "read intent from saved info and return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_1
    return-void

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 636
    :cond_1
    const-string v3, "VIDEO_MODE"

    const-string v4, "Clear saved intent to read new "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 638
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 642
    :cond_2
    if-nez v1, :cond_5

    .line 643
    const-string v3, "VIDEO_MODE"

    const-string v4, "No intent extras to read"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 647
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v3, :cond_4

    .line 648
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeManager;->clearTempVideoOnIntent()V

    .line 649
    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .line 651
    :cond_4
    const-string v3, "VIDEO_MODE"

    const-string v4, "Not video intent no need to init"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    :cond_5
    const-string/jumbo v3, "output"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    .line 659
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    .line 663
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 664
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 667
    .local v0, "extraVideoQuality":I
    if-lez v0, :cond_7

    .line 668
    sget-object v3, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_HIGH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    .line 674
    :goto_2
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent quality = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v0    # "extraVideoQuality":I
    :cond_6
    const-string v3, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 680
    const-string v3, "android.intent.extra.durationLimit"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 681
    .local v2, "seconds":I
    const-string v3, "VIDEO_MODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video intent intent.hasExtra EXTRA_DURATION_LIMIT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    mul-int/lit16 v3, v2, 0x3e8

    iput v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 671
    .end local v2    # "seconds":I
    .restart local v0    # "extraVideoQuality":I
    :cond_7
    sget-object v3, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_LOW:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    goto :goto_2

    .line 685
    .end local v0    # "extraVideoQuality":I
    :cond_8
    const-string v3, "VIDEO_MODE"

    const-string v4, "Video intent NO EXTRA_DURATION_LIMIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private initIntentVideoDescriptor()V
    .locals 4

    .prologue
    .line 1551
    const-string v1, "VIDEO_MODE"

    const-string v2, "Entering setVideoRecorder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->closeVideoFileDescriptor()V

    .line 1554
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1555
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video intent uri from caller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    const-string/jumbo v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1560
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :cond_0
    :goto_0
    return-void

    .line 1561
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "ex":Ljava/io/FileNotFoundException;
    const-string v1, "VIDEO_MODE"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initMediaRecorder()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/16 v2, 0x1f40

    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1569
    const-string v0, "VIDEO_MODE"

    const-string v5, "initMediaRecorder"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1572
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoFillRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1573
    const-string v0, "VIDEO_MODE"

    const-string v5, "initMediaRecorder on isVideoFillBufferMode"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v9

    .line 1576
    .local v9, "previewCallbackMgr":Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    if-eqz v9, :cond_0

    .line 1577
    new-instance v0, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, p0}, Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/bestlive/BgCameraCallbackListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBgCameraPreviewCallback:Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

    .line 1579
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBgCameraPreviewCallback:Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

    invoke-virtual {v9, v0}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->addPreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 1585
    :cond_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioBufferSize:I

    .line 1588
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    .line 1593
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1594
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1595
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1596
    const-string v0, "VIDEO_MODE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMediaRecorder.setVideoSize mDesiredPreviewHeight = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    iget v13, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v5, v13}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1600
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1601
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1602
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v3, 0x1e

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1603
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x1312d00

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1604
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x1e8480

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1605
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1606
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v2, 0x26160

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1685
    .end local v9    # "previewCallbackMgr":Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_8

    .line 1686
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1688
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v2, "setOutputFile mVideoFileDescriptor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmStorageSpace()J

    move-result-wide v2

    const-wide/32 v4, 0x12c00000

    sub-long v10, v2, v4

    .line 1699
    .local v10, "maxFileSize":J
    const-string v0, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default maxFileSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_3

    .line 1702
    const-string v0, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestedSizeLimit from intent is valid and allowed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-wide v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    .line 1708
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v0, v2, v10

    if-nez v0, :cond_9

    .line 1709
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01ea

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1711
    const-string v0, "VIDEO_MODE"

    const-string v1, "cwh no space left return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    .end local v10    # "maxFileSize":J
    :goto_2
    return-void

    .line 1608
    :cond_4
    const-string v0, "VIDEO_MODE"

    const-string v2, "initMediaRecorder on normal video recording"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1610
    const-string v0, "VIDEO_MODE"

    const-string v1, "init media recorder when mCamera == null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseMediaRecorder()V

    goto :goto_2

    .line 1616
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->unlock()V

    .line 1617
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1630
    const-string v0, "VIDEO_MODE"

    const-string v2, "Normal Video set AudioSource.CAMCORDER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSpeedVideo()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1632
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1642
    :goto_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1643
    const-string v0, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfile with mProfile of Frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1670
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1671
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_6

    .line 1672
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v2, 0x408f400000000000L    # 1000.0

    iget v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1675
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v8

    .line 1677
    .local v8, "loc":Landroid/location/Location;
    if-eqz v8, :cond_1

    .line 1678
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    goto/16 :goto_0

    .line 1635
    .end local v8    # "loc":Landroid/location/Location;
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iput v14, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    goto :goto_3

    .line 1689
    :cond_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1690
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->generateVideoFilename(I)V

    .line 1691
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1692
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v2, "setOutputFile mVideoFilename"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1716
    .restart local v10    # "maxFileSize":J
    :cond_9
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1717
    const-string v0, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxFileSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v4, 0x40000000

    div-long v4, v10, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1734
    :goto_4
    const/4 v12, 0x0

    .line 1735
    .local v12, "rotation":I
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientation()I

    move-result v0

    if-eq v0, v14, :cond_a

    .line 1736
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraId()I

    move-result v2

    aget-object v7, v0, v2

    .line 1738
    .local v7, "info":Landroid/hardware/Camera$CameraInfo;
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_b

    .line 1739
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientation()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v12, v0, 0x168

    .line 1744
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v12}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1745
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mOrientationCompensationAtRecordStart:I

    .line 1749
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1756
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1757
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1758
    const-string v0, "VIDEO_MODE"

    const-string v1, "initMediaRecorder done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1741
    .restart local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_b
    iget v0, v7, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientation()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v12, v0, 0x168

    goto :goto_5

    .line 1750
    .end local v7    # "info":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v6

    .line 1751
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseMediaRecorder()V

    goto/16 :goto_2

    .line 1719
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "rotation":I
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private initVideoFrameSize(Landroid/hardware/Camera$Parameters;)V
    .locals 24
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 836
    const-string v20, "VIDEO_MODE"

    const-string v21, "initVideoFrameSize"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 838
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 839
    const-string v20, "VIDEO_MODE"

    const-string v21, "mPreferences == null can\'t initVideoFrameSize"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    sget v20, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0f0032

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/lenovo/scg/camera/setting/SettingUtils;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 847
    .local v5, "defaultQuality":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    move/from16 v20, v0

    if-ltz v20, :cond_7

    .line 848
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Set intent mVideoQuality = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    .line 879
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 880
    .local v10, "getQuality":J
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get quality value costs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v10, v14

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    sget v20, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v20

    if-nez v20, :cond_2

    .line 884
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    .line 886
    :cond_2
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isMtkCPU()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getMtkProfile(I)V

    .line 892
    :goto_2
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mProfile videoFrameWidth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " videoFrameHeight "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", quality = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 896
    .local v8, "getProfile":J
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getProfile costs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v10

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoFillRecordingMode()Z

    move-result v20

    if-nez v20, :cond_3

    sget-object v20, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 904
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getDesiredPreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 906
    :cond_3
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mDesiredPreviewWidth = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ". mDesiredPreviewHeight = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 909
    .local v6, "getPreview":J
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "get DesiredPreview costs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v6, v8

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v20

    if-nez v20, :cond_f

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPictureSize:Landroid/hardware/Camera$Size;

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 919
    sget-object v20, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MIN_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->getPictureSizebyType(Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 920
    .local v13, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v13, :cond_4

    .line 921
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 926
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBackCamera()Z

    move-result v20

    if-nez v20, :cond_5

    .line 927
    sget-object v20, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 928
    sget-object v20, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->SAMLL:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    .line 934
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateCameraScreenNailSize(II)V

    .line 957
    .end local v13    # "pictureSize":Landroid/hardware/Camera$Size;
    :cond_6
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 958
    .local v18, "setSize":J
    const-string v20, "VIDEO_MODE"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "set preview-size and picture-size costs "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v18, v6

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidCPUUtils;->isQualcommCPU()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 963
    sget-object v20, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_4K:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 964
    const-string/jumbo v20, "preview-format"

    const-string/jumbo v21, "nv12-venus"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    .end local v6    # "getPreview":J
    .end local v8    # "getProfile":J
    .end local v10    # "getQuality":J
    .end local v18    # "setSize":J
    :cond_7
    move-object/from16 v16, v5

    .line 852
    .local v16, "quality":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBackCamera()Z

    move-result v20

    if-nez v20, :cond_a

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "camera_front_video"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0f002c

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 859
    .local v4, "currentValue":Ljava/lang/String;
    const-string v20, "low"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 860
    sget-object v16, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_QVGA:Ljava/lang/String;

    .line 877
    .end local v4    # "currentValue":Ljava/lang/String;
    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    goto/16 :goto_1

    .line 861
    .restart local v4    # "currentValue":Ljava/lang/String;
    :cond_8
    const-string/jumbo v20, "medium"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 862
    sget-object v16, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    goto :goto_5

    .line 864
    :cond_9
    sget-object v16, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    goto :goto_5

    .line 868
    .end local v4    # "currentValue":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBestLive()Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSpeedVideo()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 869
    :cond_b
    sget-object v16, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_720P:Ljava/lang/String;

    goto :goto_5

    .line 871
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-object/from16 v20, v0

    const-string v21, "camera_setting_video_quality_key"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_5

    .line 890
    .end local v16    # "quality":Ljava/lang/String;
    .restart local v10    # "getQuality":J
    :cond_d
    sget v20, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    goto/16 :goto_2

    .line 930
    .restart local v6    # "getPreview":J
    .restart local v8    # "getProfile":J
    .restart local v13    # "pictureSize":Landroid/hardware/Camera$Size;
    :cond_e
    sget-object v20, Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;->BIG:Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;

    invoke-static/range {v20 .. v20}, Lcom/lenovo/scg/camera/front/FrontUtil;->setRatio(Lcom/lenovo/scg/camera/front/FrontUtil$RATIO;)V

    goto/16 :goto_3

    .line 937
    .end local v13    # "pictureSize":Landroid/hardware/Camera$Size;
    :cond_f
    const-string v20, "VIDEO_MODE"

    const-string v21, "intentPreview 1440 * 1080"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 942
    sget-object v20, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_Intent_LOW:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 943
    const/16 v12, 0x438

    .line 944
    .local v12, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewWidth:I

    move/from16 v20, v0

    mul-int v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mDesiredPreviewHeight:I

    move/from16 v21, v0

    div-int v17, v20, v21

    .line 946
    .local v17, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateCameraScreenNailSize(II)V

    goto/16 :goto_4

    .line 948
    .end local v12    # "height":I
    .end local v17    # "width":I
    :cond_10
    const/16 v20, 0x5a0

    const/16 v21, 0x438

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateCameraScreenNailSize(II)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->resetPosition4HighResolution()V

    goto/16 :goto_4

    .line 966
    .restart local v18    # "setSize":J
    :cond_11
    const-string/jumbo v20, "preview-format"

    const-string/jumbo v21, "yuv420sp"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isSameIntent(Landroid/os/Bundle;Lcom/lenovo/scg/common/utils/VideoIntentInfo;)Z
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "videoInfo"    # Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 570
    if-nez p1, :cond_1

    .line 571
    const-string v2, "VIDEO_MODE"

    const-string v5, "extras == null"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p2}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmCurrentVideoFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 574
    const-string v2, "VIDEO_MODE"

    const-string v4, "If last extra is null also, it should leave CurrentVideoFilename!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 599
    :cond_0
    :goto_0
    return v4

    .line 581
    :cond_1
    const-string/jumbo v2, "output"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 583
    .local v0, "currentUri":Landroid/net/Uri;
    invoke-virtual {p2}, Lcom/lenovo/scg/common/utils/VideoIntentInfo;->getmIntentUri()Landroid/net/Uri;

    move-result-object v1

    .line 584
    .local v1, "savedUri":Landroid/net/Uri;
    const-string v5, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentUri != null "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v5, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "savedUri != null "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    if-nez v1, :cond_4

    .line 588
    if-nez v0, :cond_0

    move v4, v3

    .line 589
    goto :goto_0

    :cond_2
    move v2, v4

    .line 584
    goto :goto_1

    :cond_3
    move v2, v4

    .line 585
    goto :goto_2

    .line 594
    :cond_4
    if-eqz v0, :cond_0

    .line 597
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savedUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2082
    return-void
.end method

.method private onStartVideoError(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2140
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video recodring onStartVideoError found on "

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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 2143
    new-instance v5, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    .line 2146
    :cond_0
    if-eqz p1, :cond_5

    .line 2147
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not start media recorder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const/4 v2, 0x0

    .line 2149
    .local v2, "isSoundRecorderRunning":Z
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2151
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 2152
    .local v4, "run":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2153
    .local v3, "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.lenovo.recorder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2154
    const/4 v2, 0x1

    goto :goto_0

    .line 2158
    .end local v3    # "ra":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSoundRecorderRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    if-eqz v2, :cond_4

    .line 2160
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/lenovo/scg/camera/mode/VideoMode$2;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$2;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2199
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isSoundRecorderRunning":Z
    .end local v4    # "run":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2200
    return-void

    .line 2170
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "isSoundRecorderRunning":Z
    .restart local v4    # "run":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2173
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/lenovo/scg/camera/mode/VideoMode$3;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$3;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2184
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "isSoundRecorderRunning":Z
    .end local v4    # "run":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_5
    const-string v5, "VIDEO_MODE"

    const-string v6, "Init vidoe recording error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->isUSERType()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2188
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/lenovo/scg/camera/mode/VideoMode$4;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$4;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2402
    const-string v0, "VIDEO_MODE"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2404
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->cleanupEmptyFile()V

    .line 2405
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2406
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2407
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2408
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2409
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 2419
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 2420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z

    .line 2421
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2424
    :cond_1
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    .line 2425
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearVideoNamer()V

    .line 2426
    return-void
.end method

.method private releasePreviewCallback()V
    .locals 2

    .prologue
    .line 2441
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "releasePreviewCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2443
    const-string v0, "VIDEO_MODE"

    const-string v1, "Video intent mode, no preview callback to release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :goto_0
    return-void

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_1

    .line 2448
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->setBestLive(Z)V

    .line 2451
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->getInstance()Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/objtracking/ObjectTrackingManager;->release()V

    goto :goto_0
.end method

.method private removeBgListener()V
    .locals 3

    .prologue
    .line 2429
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getPreviewCallbackManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    move-result-object v0

    .line 2431
    .local v0, "previewCallbackMgr":Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBgCameraPreviewCallback:Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

    if-eqz v1, :cond_0

    .line 2432
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBgCameraPreviewCallback:Lcom/lenovo/scg/camera/mode/VideoBgCameraPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->removePreviewCallbackListener(Lcom/lenovo/scg/camera/previewcallback/PreviewBufferedDataCallback;)V

    .line 2434
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "release back camera callback done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_0
    return-void

    .line 2436
    :cond_0
    const-string v1, "VIDEO_MODE"

    const-string v2, "No back camera preview callback to remove"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeScreenOn()V
    .locals 2

    .prologue
    .line 2096
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "removeScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "removeScreenOn CLEAR_SCREEN_DELAY on video recording!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2105
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "removeScreenOn done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    return-void
.end method

.method private restoreCameraParameters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1363
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "restoreCameraParameters starts"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1366
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1367
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "parameters == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1372
    const-string v1, "VIDEO_MODE"

    const-string v2, "3rd party Video only reset flash status!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1402
    :goto_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1, v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 1403
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "restoreCameraParameters finishes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSlowVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1377
    invoke-direct {p0, v0, v4}, Lcom/lenovo/scg/camera/mode/VideoMode;->setSlowVideoOnNormal(Landroid/hardware/Camera$Parameters;Z)V

    .line 1381
    :cond_2
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSavedFlashMode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedFlashMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1383
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1384
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flash mode restore to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedFlashMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_4

    .line 1389
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1391
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPreviewSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p0, v1, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateCameraScreenNailSize(II)V

    .line 1394
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPictureSize:Landroid/hardware/Camera$Size;

    if-eqz v1, :cond_5

    .line 1395
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPictureSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedPictureSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1398
    :cond_5
    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1399
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "setRecordingHint false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setCameraParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1762
    const-string v5, "VIDEO_MODE"

    const-string v6, "Entering setCameraParameters"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1766
    .local v0, "now":J
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSavedFlashMode:Ljava/lang/String;

    .line 1767
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const v6, 0x7f0f000d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1770
    .local v2, "setFlash":J
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCameraParameter mSavedFlashMode costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1776
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1778
    .local v4, "videoSize":Ljava/lang/String;
    const-string/jumbo v5, "video-size"

    invoke-virtual {p1, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1781
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCurrentZoomValue()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1783
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1784
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setRecordingHint true and others costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-void
.end method

.method private setSlowVideoOnNormal(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "on"    # Z

    .prologue
    .line 1907
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSpecialVideoOnNormal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setVideoHighFrameRate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1931
    .local v1, "methodSetVideoHighFrameRate":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v1, :cond_1

    .line 1933
    if-eqz p2, :cond_0

    .line 1934
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "120"

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "set methodSetVideoHighFrameRate 120"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1956
    :goto_1
    return-void

    .line 1926
    .end local v1    # "methodSetVideoHighFrameRate":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1927
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodSetVideoHighFrameRate Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    const/4 v1, 0x0

    .restart local v1    # "methodSetVideoHighFrameRate":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1937
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "off"

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "restore methodSetVideoHighFrameRate to off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 1940
    :catch_1
    move-exception v0

    .line 1941
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodSetVideoHighFrameRate IllegalArgumentException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1944
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1945
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodSetVideoHighFrameRate IllegalAccessException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1948
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1949
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodSetVideoHighFrameRate InvocationTargetException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1954
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "methodSetVideoHighFrameRate = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setSpecialVideoOnFill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1971
    const-string/jumbo v2, "rapid"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1972
    const/high16 v1, 0x40800000    # 4.0f

    .line 1973
    .local v1, "recordTimes":F
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "methodSetFastRecordTimes rapid video"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "setFastRecordTimes"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1984
    .local v0, "methodSetFastRecordTimes":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 1985
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "methodSetFastRecordTimes != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v1}, Ljava/lang/Float;-><init>(F)V

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodSetFastRecordTimes done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    .end local v0    # "methodSetFastRecordTimes":Ljava/lang/reflect/Method;
    .end local v1    # "recordTimes":F
    :cond_0
    :goto_0
    return-void

    .line 1978
    :cond_1
    const-string v2, "VIDEO_MODE"

    const-string v3, "Special video recording is set as off"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUI4VideoRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1525
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->keepScreenOn()V

    .line 1527
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->hideVideoPrepareTips()V

    .line 1528
    invoke-direct {p0, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->setVideoRecording(Z)V

    .line 1529
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->startStopVideoRecording(Z)V

    .line 1530
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateRecordingTime()V

    .line 1532
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setThumbnailBtnVisible(Z)V

    .line 1533
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setThumbnailBtnClickable(Z)V

    .line 1534
    return-void
.end method

.method private setVideoRecording(Z)V
    .locals 3
    .param p1, "tag"    # Z

    .prologue
    .line 2728
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change media recording status to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    .line 2730
    return-void
.end method

.method private showAlert()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2674
    const-string v7, "VIDEO_MODE"

    const-string v8, "Video intent showAlert"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v0, 0x0

    .line 2676
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->getWidth()I

    move-result v4

    .line 2677
    .local v4, "width":I
    if-gtz v4, :cond_0

    .line 2678
    const/16 v4, 0x5a0

    .line 2680
    :cond_0
    const-string v7, "VIDEO_MODE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bitmap width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_3

    .line 2683
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lenovo/scg/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2685
    const-string v7, "VIDEO_MODE"

    const-string v8, "get bitmap from mVideoFileDescriptor"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    .line 2696
    invoke-static {}, Lcom/lenovo/scg/camera/CameraHolder;->instance()Lcom/lenovo/scg/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 2697
    .local v2, "info":[Landroid/hardware/Camera$CameraInfo;
    sget v7, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    aget-object v7, v2, v7

    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v7, v5, :cond_4

    move v3, v5

    .line 2699
    .local v3, "mirror":Z
    :goto_1
    :try_start_0
    iget v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mOrientationCompensationAtRecordStart:I

    neg-int v7, v7

    invoke-static {v0, v7, v3}, Lcom/lenovo/scg/camera/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2706
    :goto_2
    const-string v7, "VIDEO_MODE"

    const-string v8, "Video intent bitmap != null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmReviewImage()Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2709
    const-string v7, "VIDEO_MODE"

    const-string v8, "Video intent mModeController.getmReviewImage() != null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmReviewImage()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2713
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v7}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmReviewImage()Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2716
    :cond_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->showVideoRecordResult()V

    .line 2717
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mNeedVideoIntentCache:Z

    .line 2725
    .end local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :goto_3
    return-void

    .line 2686
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 2687
    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v7, v4}, Lcom/lenovo/scg/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2689
    const-string v7, "VIDEO_MODE"

    const-string v8, "get bitmap from mCurrentVideoFilename"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    :cond_4
    move v3, v6

    .line 2697
    goto :goto_1

    .line 2701
    .restart local v3    # "mirror":Z
    :catch_0
    move-exception v1

    .line 2702
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showAlert code: CameraUtil.rotateAndMirror error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 2704
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2721
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "info":[Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "mirror":Z
    :cond_5
    const-string v5, "VIDEO_MODE"

    const-string v7, "Can\'t get vidoe thumbnail means recording fails!"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mNeedVideoIntentCache:Z

    .line 2723
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v5}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->resumeVideoRecord()V

    goto :goto_3
.end method

.method private showImageCaptureUI()V
    .locals 3

    .prologue
    .line 2236
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "showImageCaptureUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2239
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x7f1002a4

    aput v2, v0, v1

    .line 2240
    .local v0, "showExcludeIds":[I
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->showScreen([I)V

    .line 2242
    .end local v0    # "showExcludeIds":[I
    :cond_0
    return-void
.end method

.method private startVideoRecording()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1419
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v6, "startVideoRecording"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1421
    .local v2, "now":J
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_0

    .line 1422
    const-string v1, "VIDEO_MODE"

    const-string v6, "mProfile == null mean initVideoMode failed"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-direct {p0, v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    .line 1522
    :goto_0
    return-void

    .line 1430
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBestLive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v1, :cond_1

    .line 1431
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v6, "set best live ON"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v1, v7}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->setBestLive(Z)V

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoFillRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1437
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->playVideoStartingSound()V

    .line 1439
    :cond_2
    iput-object v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1442
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1443
    const-string v1, "VIDEO_MODE"

    const-string v6, "SurfaceTexture is null. Wait for surface changed."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-direct {p0, v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1447
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->initIntentVideoDescriptor()V

    .line 1448
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->initMediaRecorder()V

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1450
    .local v4, "setRecorder":J
    const-string v1, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setVideoRecorder costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_4

    .line 1452
    const-string v1, "VIDEO_MODE"

    const-string v6, "mMediaRecorder == null so fail to initialize media recorder"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-direct {p0, v10}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1458
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoFillRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1459
    const-string v1, "VIDEO_MODE"

    const-string v6, "Fill mode"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isRapidVideo()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1462
    new-instance v1, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;

    invoke-direct {v1, p0, v10}, Lcom/lenovo/scg/camera/mode/VideoMode$AudioRecordThread;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;Lcom/lenovo/scg/camera/mode/VideoMode$1;)V

    iput-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecordThread:Ljava/lang/Thread;

    .line 1465
    :cond_5
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1466
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->setSpecialVideoOnFill()V

    .line 1468
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z

    .line 1469
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecordThread:Ljava/lang/Thread;

    if-eqz v1, :cond_6

    .line 1470
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecordThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :cond_6
    :goto_1
    const-string v1, "VIDEO_MODE"

    const-string v6, "mMediaRecorder starts to record video!"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    sget-object v6, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;->STATUS_NORMAL:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;

    invoke-interface {v1, v6}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setModeStatus(Lcom/lenovo/scg/camera/mode/controller/ModeBaseController$WindowStatus;)V

    .line 1497
    const-string v1, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start video recording... mMediaRecorderRecording = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordingStartTime:J

    .line 1500
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->setUI4VideoRecording()V

    .line 1502
    const-string v1, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startVideoRecording finishes totally costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVideoFillBufferMode Could not start media recorder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1482
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    const-string v1, "VIDEO_MODE"

    const-string v6, "Normal mode ready to start"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1484
    const-string v1, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMediaRecorder.start costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1488
    :catch_1
    move-exception v0

    .line 1489
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method private stopVideoRecording()Z
    .locals 22

    .prologue
    .line 2279
    const-string v18, "VIDEO_MODE"

    const-string v19, "Entering stopVideoRecording"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2282
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2283
    new-instance v18, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    .line 2285
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 2286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setIsVideoPaused(Z)V

    .line 2288
    const/4 v6, 0x0

    .line 2289
    .local v6, "fail":Z
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Stoping video recording... mMediaRecorderRecording = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    const-wide/16 v8, 0x0

    .line 2293
    .local v8, "mediaEnd":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2294
    const/4 v7, 0x0

    .line 2297
    .local v7, "shouldAddToMediaStoreNow":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 2298
    const-string v18, "VIDEO_MODE"

    const-string v19, "Ready to stop mMediaRecorder"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2302
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoFillRecordingMode()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2304
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsAudioRecording:Z

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->stop()V

    .line 2314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioRecord;->release()V

    .line 2315
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2317
    const-string v18, "VIDEO_MODE"

    const-string v19, "mAudioRecord.stop()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->removeBgListener()V

    .line 2321
    const-string v18, "VIDEO_MODE"

    const-string v19, "Stopping mMediaRecorder fill mode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->stop()V

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->release()V

    .line 2324
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->playVideoStoppingSound()V

    .line 2332
    :goto_0
    const-string v18, "VIDEO_MODE"

    const-string v19, "done"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_2
    const/4 v7, 0x1

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2337
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "stopVideoRecording: Setting current video filename: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2348
    :goto_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->setVideoRecording(Z)V

    .line 2349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2350
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mMediaRecorder.stop costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v8, v10

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->startStopVideoRecording(Z)V

    .line 2353
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->removeScreenOn()V

    .line 2354
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 2355
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->addVideoToMediaStore()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v6, 0x1

    .line 2358
    .end local v7    # "shouldAddToMediaStoreNow":Z
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    .line 2359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 2360
    .local v16, "updateDB":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addVideoToMediaStore costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v16, v8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v4

    .line 2365
    .local v4, "cameraDevice":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    if-eqz v4, :cond_8

    .line 2366
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2370
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2371
    .local v14, "stopPreview":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "stop preview done costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v14, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseMediaRecorder()V

    .line 2376
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releasePreviewCallback()V

    .line 2378
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->restoreCameraParameters()V

    .line 2381
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v18

    if-nez v18, :cond_4

    .line 2382
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/camera/mode/ModeManager;->exitVideoMode()V

    .line 2385
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setThumbnailBtnVisible(Z)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setThumbnailBtnClickable(Z)V

    .line 2387
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedOffsetTime:J

    .line 2388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2389
    .local v12, "release":J
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "release costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sub-long v20, v12, v14

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    if-eqz v4, :cond_5

    .line 2393
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 2395
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2396
    const-string v18, "VIDEO_MODE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restart preview done costs "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    return v6

    .line 2328
    .end local v4    # "cameraDevice":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .end local v12    # "release":J
    .end local v14    # "stopPreview":J
    .end local v16    # "updateDB":J
    .restart local v7    # "shouldAddToMediaStoreNow":Z
    :cond_6
    :try_start_1
    const-string v18, "VIDEO_MODE"

    const-string v19, "Stopping mMediaRecorder normal mode"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2340
    :catch_0
    move-exception v5

    .line 2341
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v18, "VIDEO_MODE"

    const-string/jumbo v19, "stop fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->deleteVideoFile(Ljava/lang/String;)V

    .line 2346
    :cond_7
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 2368
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "shouldAddToMediaStoreNow":Z
    .restart local v4    # "cameraDevice":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    .restart local v16    # "updateDB":J
    :cond_8
    const-string v18, "VIDEO_MODE"

    const-string v19, "cameraDevice == null !"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2112
    const-string v4, "VIDEO_MODE"

    const-string v5, "checkSize updateCameraScreenNailSize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDisplayOrientation()I

    move-result v4

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_0

    .line 2114
    move v3, p1

    .line 2115
    .local v3, "tmp":I
    move p1, p2

    .line 2116
    move p2, v3

    .line 2119
    .end local v3    # "tmp":I
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    .line 2121
    .local v0, "mCameraScreenNail":Lcom/lenovo/scg/camera/CameraScreenNail;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getWidth()I

    move-result v2

    .line 2122
    .local v2, "oldWidth":I
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraScreenNail;->getHeight()I

    move-result v1

    .line 2124
    .local v1, "oldHeight":I
    if-ne v2, p1, :cond_1

    if-eq v1, p2, :cond_2

    .line 2125
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSize(II)V

    .line 2126
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->notifyScreenNailChanged()V

    .line 2136
    :cond_2
    const-string v4, "VIDEO_MODE"

    const-string v5, "checkSize updateCameraScreenNailSize done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-void
.end method

.method private updateRecordingTime()V
    .locals 14

    .prologue
    .line 2802
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    if-nez v8, :cond_0

    .line 2861
    :goto_0
    return-void

    .line 2806
    :cond_0
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v8}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoPaused()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedMoment:J

    goto :goto_0

    .line 2811
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordingStartTime:J

    iget-wide v12, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedOffsetTime:J

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    .line 2817
    const/4 v3, 0x0

    .line 2822
    .local v3, "countdownRemainingTime":Z
    iget-wide v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    .line 2823
    .local v4, "deltaAdjusted":J
    if-eqz v3, :cond_2

    .line 2824
    const-wide/16 v8, 0x0

    iget v10, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    int-to-long v10, v10

    sub-long/2addr v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e7

    add-long v4, v8, v10

    .line 2829
    :cond_2
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCaptureTimeLapse:Z

    if-nez v8, :cond_4

    .line 2831
    const-wide/16 v6, 0x64

    .line 2841
    .local v6, "targetNextUpdateDelay":J
    :goto_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    long-to-int v9, v4

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->updateRecordingTime(I)V

    .line 2843
    iget-boolean v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordingTimeCountsDown:Z

    if-eq v8, v3, :cond_3

    .line 2846
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordingTimeCountsDown:Z

    .line 2848
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v3, :cond_5

    const v8, 0x7f0d0024

    :goto_2
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 2854
    .local v2, "color":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v8, v2}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->setRecordingTimeColor(I)V

    .line 2857
    .end local v2    # "color":I
    :cond_3
    iget-wide v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mRecordDuration:J

    rem-long/2addr v8, v6

    sub-long v0, v6, v8

    .line 2859
    .local v0, "actualNextUpdateDelay":J
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2838
    .end local v0    # "actualNextUpdateDelay":J
    .end local v6    # "targetNextUpdateDelay":J
    :cond_4
    iget v8, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v6, v8

    .restart local v6    # "targetNextUpdateDelay":J
    goto :goto_1

    .line 2848
    :cond_5
    const v8, 0x7f0d0023

    goto :goto_2
.end method


# virtual methods
.method public YUV420SP_YVU420SP([BII)V
    .locals 8
    .param p1, "input"    # [B
    .param p2, "nWidth"    # I
    .param p3, "nHeight"    # I

    .prologue
    .line 3091
    mul-int v0, p2, p3

    .local v0, "i":I
    :goto_0
    int-to-double v2, v0

    mul-int v4, p2, p3

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 3092
    aget-byte v1, p1, v0

    .line 3093
    .local v1, "temp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 3094
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 3091
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3096
    .end local v1    # "temp":B
    :cond_0
    return-void
.end method

.method public clearScreen([I)V
    .locals 2
    .param p1, "exclude"    # [I

    .prologue
    .line 2941
    const-string v0, "VIDEO_MODE"

    const-string v1, "clearScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2944
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2945
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->cleanVideoScreen()V

    .line 2948
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->hideVideoPrepareTips()V

    .line 2950
    return-void
.end method

.method public deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2589
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2590
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->deleteVideoFile(Ljava/lang/String;)V

    .line 2591
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2592
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2595
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2598
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->checkStorage()V

    .line 2600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mNeedVideoIntentCache:Z

    .line 2601
    return-void
.end method

.method public doReturnToCaller(Z)V
    .locals 5
    .param p1, "valid"    # Z

    .prologue
    .line 2753
    const-string v3, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doReturnToCaller valid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2756
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 2757
    const/4 v0, -0x1

    .line 2758
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2759
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setResultEx(ILandroid/content/Intent;)V

    .line 2764
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2765
    return-void

    .line 2753
    .end local v0    # "resultCode":I
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 2761
    .restart local v1    # "resultIntent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_1
.end method

.method protected enter(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 537
    const-string v2, "VIDEO_MODE"

    const-string v3, "enter video mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 539
    .local v0, "now":J
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/mode/CaptureMode;->enter(Landroid/content/Context;)V

    .line 542
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v2, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    .line 543
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    .line 544
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->isRequestAudioFocus(Ljava/lang/Boolean;)V

    .line 545
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setSwipingEnabled(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->setVideoType()V

    .line 547
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->initIntent()V

    .line 549
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 550
    new-instance v2, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/camera/mode/VideoMode$MainHandler;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mHandler:Landroid/os/Handler;

    .line 552
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-nez v2, :cond_1

    .line 553
    new-instance v2, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraRootView()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/lenovo/scg/camera/mode/VideoMode;)V

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoIntentInfo:Lcom/lenovo/scg/common/utils/VideoIntentInfo;

    if-eqz v2, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->initIntentVideoDescriptor()V

    .line 559
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->showAlert()V

    .line 563
    :cond_2
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter video mode costs "

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

    .line 565
    return-void
.end method

.method protected exit()V
    .locals 3

    .prologue
    .line 1291
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsSupportZSD:Z

    if-eqz v1, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 1293
    .local v0, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    if-eqz v0, :cond_1

    .line 1294
    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->getZSDStatus()Ljava/lang/String;

    .line 1295
    const-string v1, "VIDEO_MODE"

    const-string v2, "cwh exit openZSD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    sget-object v1, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_VIDEO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->openZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 1301
    .end local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setSwipingEnabled(Z)V

    .line 1303
    invoke-static {}, Lcom/lenovo/scg/camera/way/TimerUI;->getInstance()Lcom/lenovo/scg/camera/way/TimerUI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/way/TimerUI;->setLevelUiVisibility(I)V

    .line 1304
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearScreen([I)V

    .line 1316
    return-void

    .line 1298
    .restart local v0    # "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    :cond_1
    const-string v1, "VIDEO_MODE"

    const-string v2, "cwh exit controller = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFrontSurfaceCallback()Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;
    .locals 2

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    if-eqz v0, :cond_0

    .line 3057
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->getFrontSurfaceCallback()Lcom/lenovo/scg/camera/mode/bestlive/BestLive$FrontSurfaceCallback;

    move-result-object v0

    .line 3061
    :goto_0
    return-object v0

    .line 3060
    :cond_0
    const-string v0, "VIDEO_MODE"

    const-string v1, "getFrontSurfaceCallback return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMtkProfile(I)V
    .locals 6
    .param p1, "quality"    # I

    .prologue
    .line 1076
    :try_start_0
    const-string v2, "android.media.CamcorderProfile"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1077
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getMtk"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1079
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/CamcorderProfile;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    .line 1081
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->hasGetProfile:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1088
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->hasGetProfile:Z

    if-nez v2, :cond_0

    .line 1090
    :try_start_1
    const-string v2, "com.mediatek.camcorder.CamcorderProfileEx"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1092
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getProfile"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1094
    .restart local v1    # "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    sget v5, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/CamcorderProfile;

    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    .line 1097
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->hasGetProfile:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1104
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 1101
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1100
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1099
    :catch_2
    move-exception v2

    goto :goto_1

    .line 1098
    :catch_3
    move-exception v2

    goto :goto_1

    .line 1085
    :catch_4
    move-exception v2

    goto :goto_0

    .line 1084
    :catch_5
    move-exception v2

    goto :goto_0

    .line 1083
    :catch_6
    move-exception v2

    goto :goto_0

    .line 1082
    :catch_7
    move-exception v2

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getParamTypes(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4
    .param p2, "mName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Landroid/media/MediaRecorder;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1994
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/media/MediaRecorder;>;"
    const/4 v0, 0x0

    .line 1999
    .local v0, "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2000
    .local v2, "mtd":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2001
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2000
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2005
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 2007
    :cond_1
    return-object v0
.end method

.method public getResolutionScaleValue()F
    .locals 4

    .prologue
    .line 1060
    const/high16 v0, 0x40000000    # 2.0f

    .line 1062
    .local v0, "scaleValue":F
    iget v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    sget-object v2, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_1080P:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1064
    const v0, 0x3faaa993    # 1.3333f

    .line 1070
    :cond_0
    :goto_0
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResolutionScaleValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return v0

    .line 1065
    :cond_1
    iget v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    sget-object v2, Lcom/lenovo/scg/camera/setting/SCGCamcorderProfile;->QUALITY_2K:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1067
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getVideoDuration()I
    .locals 1

    .prologue
    .line 2975
    iget v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 3042
    iget v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoQuality:I

    return v0
.end method

.method public hideAlert()V
    .locals 2

    .prologue
    .line 2574
    const-string v0, "VIDEO_MODE"

    const-string v1, "Video intent hideAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmReviewImage()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2577
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->resumeVideoRecord()V

    .line 2579
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->getFlashBtnStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->setFlashStatus(Z)V

    .line 2585
    :cond_0
    return-void
.end method

.method public initBestLive()V
    .locals 2

    .prologue
    .line 2993
    const-string v0, "VIDEO_MODE"

    const-string v1, "initBestLive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    if-eqz v0, :cond_0

    .line 2996
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseBestLive()V

    .line 2998
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBestLive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2999
    const-string v0, "VIDEO_MODE"

    const-string v1, "Can\'t open best live on non-best-live mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    :goto_0
    return-void

    .line 3003
    :cond_1
    new-instance v0, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;-><init>(Lcom/lenovo/scg/camera/mode/controller/VideoModeController;Lcom/lenovo/scg/camera/mode/VideoMode;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .line 3004
    const-string v0, "VIDEO_MODE"

    const-string v1, "initBestLive done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initVideoMode()V
    .locals 32

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 720
    .local v10, "now":J
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    if-nez v13, :cond_0

    .line 722
    const-string v13, "VIDEO_MODE"

    const-string/jumbo v28, "new VideoNamer"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v13, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    invoke-direct {v13}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoNamer:Lcom/lenovo/scg/camera/mode/VideoMode$VideoNamer;

    .line 725
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 726
    .local v14, "preInit":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "pre-init done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v14, v10

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraDevice()Lcom/lenovo/scg/camera/CameraManager$CameraProxy;

    move-result-object v4

    .line 731
    .local v4, "cameraDevice":Lcom/lenovo/scg/camera/CameraManager$CameraProxy;
    if-nez v4, :cond_1

    .line 732
    const-string v13, "VIDEO_MODE"

    const-string v28, "cameraDevice == null !"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :goto_0
    return-void

    .line 735
    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 737
    .local v24, "stopPreview":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "stop preview done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v24, v14

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    .line 741
    .local v12, "paras":Landroid/hardware/Camera$Parameters;
    if-nez v12, :cond_2

    .line 742
    const-string v13, "VIDEO_MODE"

    const-string/jumbo v28, "parameters == null !"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    goto :goto_0

    .line 746
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 747
    .local v6, "getPara":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "get paras done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v6, v24

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lenovo/scg/camera/mode/VideoMode;->initVideoFrameSize(Landroid/hardware/Camera$Parameters;)V

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 752
    .local v8, "initVideo":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initVideoFrameSize costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v8, v24

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lenovo/scg/camera/mode/VideoMode;->setCameraParameters(Landroid/hardware/Camera$Parameters;)V

    .line 757
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 758
    .local v18, "setPara":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set camera parameter costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v18, v8

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v13, v12}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 764
    .local v16, "savePara":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "setParametersToCameraDevices done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v16, v18

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    check-cast v5, Lcom/lenovo/scg/camera/mode/controller/ZSDController;

    .line 769
    .local v5, "controller":Lcom/lenovo/scg/camera/mode/controller/ZSDController;
    if-eqz v5, :cond_4

    .line 770
    const-string v13, "VIDEO_MODE"

    const-string v28, "cwh enter closeZSD"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    sget-object v13, Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;->ZSD_TYPE_SUPER_VIDEO:Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;

    invoke-interface {v5, v13}, Lcom/lenovo/scg/camera/mode/controller/ZSDController;->closeZSD(Lcom/lenovo/scg/camera/lescf/LeSCFBaseModeStub$ZSDOpenCloseType;)Z

    .line 775
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 776
    .local v20, "setZSD":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "set ZSD done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v20, v16

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v4}, Lcom/lenovo/scg/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 781
    .local v22, "startPreview":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "restart preview done costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v22, v20

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 788
    .local v26, "syncParas":J
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "sync camera paramter costs "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sub-long v30, v26, v10

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ms"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSlowVideo()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 792
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v13, v1}, Lcom/lenovo/scg/camera/mode/VideoMode;->setSlowVideoOnNormal(Landroid/hardware/Camera$Parameters;Z)V

    .line 793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v13, v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v13}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 798
    :cond_3
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "preview-size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " * "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "picture-size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " * "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getPreferredPreviewSizeForVideo = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " * "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "videoSize = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "video-size"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v13, "VIDEO_MODE"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Others cost "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v26

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 773
    .end local v20    # "setZSD":J
    .end local v22    # "startPreview":J
    .end local v26    # "syncParas":J
    :cond_4
    const-string v13, "VIDEO_MODE"

    const-string v28, "cwh enter controller = null"

    move-object/from16 v0, v28

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isBackCamera()Z
    .locals 3

    .prologue
    .line 2984
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackCamera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isBackCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isBackCamera()Z

    move-result v0

    return v0
.end method

.method public isBestLive()Z
    .locals 4

    .prologue
    .line 3034
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPECIAL_VIDEO_LIVE setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "live"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const-string v0, "live"

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRapidVideo()Z
    .locals 4

    .prologue
    .line 3023
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPECIAL_VIDEO_RAPID setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "rapid"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string/jumbo v0, "rapid"

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlowVideo()Z
    .locals 4

    .prologue
    .line 3014
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPECIAL_VIDEO_SLOW setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slow"

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    const-string/jumbo v0, "slow"

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeedVideo()Z
    .locals 1

    .prologue
    .line 3009
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isSlowVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isRapidVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoFillRecordingMode()Z
    .locals 1

    .prologue
    .line 3103
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isRapidVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isBestLive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoNormalRecordingMode:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoIntent()Z
    .locals 3

    .prologue
    .line 2979
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v0

    return v0
.end method

.method public isVideoRecording()Z
    .locals 3

    .prologue
    .line 2733
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2960
    const/4 v0, 0x0

    return v0
.end method

.method public onBackgroundCameraCb([BII)V
    .locals 10
    .param p1, "dataIn"    # [B
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    .line 3071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3072
    .local v0, "now":J
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 3073
    .local v4, "videoRecordDataIn":[B
    iput p2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewWidth:I

    .line 3074
    iput p3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->VideoRecordPreviewHeight:I

    .line 3075
    new-instance v5, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;

    invoke-direct {v5, p0, v4}, Lcom/lenovo/scg/camera/mode/VideoMode$VideoRecordThread;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;[B)V

    iput-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoRecordThread:Ljava/lang/Thread;

    .line 3076
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoRecordThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 3078
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3079
    .local v2, "now2":J
    const-string v5, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBackgroundCameraCb cost = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2247
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2250
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStopVideoRecording()V

    .line 2251
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->checkStorage()V

    .line 2253
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2257
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInfo what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 2259
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    if-eqz v0, :cond_0

    .line 2260
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->stopVideoMode()V

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2262
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 2263
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const v1, 0x7f0f01e7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2267
    const-string v0, "VIDEO_MODE"

    const-string v1, "cwh onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->stopVideoMode()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    .line 2899
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause mIsVideoRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoRecording:Z

    if-eqz v0, :cond_1

    .line 2903
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStopVideoRecording()V

    .line 2904
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoModule;->stopVideoMode()V

    .line 2909
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mNeedVideoIntentCache:Z

    if-eqz v0, :cond_0

    .line 2910
    const-string v1, "VIDEO_MODE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save mCurrentVideoUri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentQuality:I

    iget-wide v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentSize:J

    iget v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMaxVideoDurationInMs:I

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIntentUri:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/scg/camera/mode/ModeManager;->saveTempVideoOnIntent(Ljava/lang/String;Landroid/net/Uri;IJILandroid/net/Uri;)V

    .line 2919
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z

    .line 2920
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->closeVideoFileDescriptor()V

    .line 2921
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->clearVideoNamer()V

    .line 2922
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->removeScreenOn()V

    .line 2923
    return-void

    .line 2906
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->releaseMediaRecorder()V

    goto :goto_0

    .line 2910
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onPhotoButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1204
    iget-boolean v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1205
    const-string v3, "VIDEO_MODE"

    const-string v4, "mPhotoButton is clicked during video recording"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1209
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraId()I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getOrientation()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/CameraUtil;->getJpegRotation(II)I

    move-result v2

    .line 1212
    .local v2, "rotation":I
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1213
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getmLocationManager()Lcom/lenovo/scg/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1215
    .local v0, "loc":Landroid/location/Location;
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/CameraUtil;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1216
    const-string v3, "VIDEO_MODE"

    const-string/jumbo v4, "setParameters video onPhotoButtonClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 1225
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/FocusGroup;->setCaptureing(Z)V

    .line 1229
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    new-instance v4, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;

    invoke-direct {v4, p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode$JpegPictureCallback;-><init>(Lcom/lenovo/scg/camera/mode/VideoMode;Landroid/location/Location;)V

    invoke-interface {v3, v5, v5, v5, v4}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1231
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->animateCapture(I)V

    .line 1233
    iput-boolean v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mSnapshotInProgress:Z

    .line 1234
    const-string v3, "VIDEO_MODE"

    const-string v4, "Video snapshot start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v0    # "loc":Landroid/location/Location;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "rotation":I
    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/location/Location;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2894
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 2927
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 2888
    const/4 v0, 0x0

    return v0
.end method

.method public onStopVideoRecording()V
    .locals 10

    .prologue
    .line 1319
    const-string v3, "VIDEO_MODE"

    const-string v6, "enter onStopVideoRecording"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->stopVideoRecording()Z

    move-result v2

    .line 1330
    .local v2, "recordFail":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1331
    .local v0, "now":J
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isVideoIntent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1332
    const-string v3, "VIDEO_MODE"

    const-string v6, "Video intent mModeController.getIsVideoIntent"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->isQuickCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->doReturnToCaller(Z)V

    .line 1347
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1348
    .local v4, "thumbnailEnd":J
    const-string v3, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getThumbnail costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->showImageCaptureUI()V

    .line 1352
    const-string v3, "VIDEO_MODE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Others costs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const-string v3, "VIDEO_MODE"

    const-string/jumbo v6, "onStopVideoRecording done"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1334
    .end local v4    # "thumbnailEnd":J
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1335
    :cond_2
    if-nez v2, :cond_0

    .line 1336
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->showAlert()V

    goto :goto_1

    .line 1338
    :cond_3
    if-nez v2, :cond_0

    .line 1344
    const-string v3, "VIDEO_MODE"

    const-string/jumbo v6, "onStopVideoRecording   ----getThumbnail "

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->getThumbnail()V

    goto :goto_1
.end method

.method public onVideoPauseClick()V
    .locals 5

    .prologue
    .line 1239
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "onVideoPauseClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 1241
    const-string v2, "VIDEO_MODE"

    const-string v3, "Pause video recording on mMediaRecorder == null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :goto_0
    return-void

    .line 1254
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "pause"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1256
    .local v1, "methodPauseVideo":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 1257
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v2, "VIDEO_MODE"

    const-string/jumbo v3, "pause video recording done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_1
    :goto_1
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    .end local v1    # "methodPauseVideo":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "methodPauseVideo Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v1, 0x0

    .restart local v1    # "methodPauseVideo":Ljava/lang/reflect/Method;
    goto :goto_1
.end method

.method public onVideoRecord()V
    .locals 3

    .prologue
    .line 711
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVideoRecord on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->startVideoRecording()V

    .line 713
    return-void
.end method

.method public onVideoResumeClick()V
    .locals 8

    .prologue
    .line 1269
    const-string v1, "VIDEO_MODE"

    const-string/jumbo v2, "onVideoResumeClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 1271
    const-string v1, "VIDEO_MODE"

    const-string v2, "Pause video recording on mMediaRecorder == null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :goto_0
    return-void

    .line 1276
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1277
    const-string v1, "VIDEO_MODE"

    const-string v2, "Resume video recording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    iget-wide v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedOffsetTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedMoment:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPausedOffsetTime:J

    .line 1285
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->updateRecordingTime()V

    .line 1286
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resume video recording error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 2966
    return-void
.end method

.method public releaseBestLive()V
    .locals 2

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    if-eqz v0, :cond_0

    .line 3047
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "releaseBestLive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->release()V

    .line 3049
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    .line 3053
    :goto_0
    return-void

    .line 3051
    :cond_0
    const-string v0, "VIDEO_MODE"

    const-string v1, "BestLive already released!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 2972
    return-void
.end method

.method public set3rdVideoFlashBtn(ZI)V
    .locals 3
    .param p1, "visible"    # Z
    .param p2, "marginTop"    # I

    .prologue
    .line 2877
    const-string v1, "VIDEO_MODE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set3rdVideoFlashBtn mVideoModeUI != null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set3rdVideoFlashBtn IsVideoIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/VideoMode;->isVideoIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->set3rdVideoFlashBtn(ZI)V

    .line 2883
    :cond_0
    return-void

    .line 2877
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFlashStatus(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 2864
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFlashStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2867
    if-eqz p1, :cond_0

    .line 2868
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2873
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->setParametersToCameraDevices(Landroid/hardware/Camera$Parameters;)V

    .line 2874
    return-void

    .line 2870
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_0

    .line 2933
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->setOrientation(I)V

    .line 2937
    :goto_0
    return-void

    .line 2935
    :cond_0
    const-string v0, "VIDEO_MODE"

    const-string v1, "Can\'t setOrientation since mVideoModeUI == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSurfaceViewMargin(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 3127
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    if-eqz v0, :cond_0

    .line 3128
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mBestLive:Lcom/lenovo/scg/camera/mode/bestlive/BestLive;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/bestlive/BestLive;->setSurfaceViewMargin(FF)V

    .line 3130
    :cond_0
    return-void
.end method

.method public setVideoType()V
    .locals 3

    .prologue
    .line 3107
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const-string v1, "developer_setting_video_recording_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoNormalRecordingMode:Z

    .line 3110
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoFillBufferMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mIsVideoNormalRecordingMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mPreferences:Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    const-string v1, "camera_setting_video_type_key"

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    .line 3115
    const-string v0, "VIDEO_MODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVideoType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return-void
.end method

.method public showScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mModeController:Lcom/lenovo/scg/camera/mode/controller/VideoModeController;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/mode/controller/VideoModeController;->displayUIScreen([I)V

    .line 2955
    return-void
.end method

.method public startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 2738
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2739
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/lenovo/scg/camera/mode/VideoMode;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2742
    :try_start_0
    const-string v3, "VIDEO_MODE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uriTest startPlayVideoActivity mCurrentVideoUri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2750
    :goto_1
    return-void

    .line 2742
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2747
    :catch_0
    move-exception v0

    .line 2748
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "VIDEO_MODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateFrontPreview(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    if-eqz v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode;->mVideoModeUI:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->updateFrontPreview(Landroid/graphics/Bitmap;)V

    .line 3124
    :goto_0
    return-void

    .line 3122
    :cond_0
    const-string v0, "VIDEO_MODE"

    const-string/jumbo v1, "updateFrontPreviewmVideoModeUI == null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
