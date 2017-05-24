.class public Lcom/lenovo/scg/gallery3d/app/TrimVideo;
.super Landroid/app/Activity;
.source "TrimVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;


# static fields
.field public static final KEY_TRIM_END:Ljava/lang/String; = "trim_end"

.field public static final KEY_TRIM_START:Ljava/lang/String; = "trim_start"

.field public static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video_pos"

.field private static final TIME_STAMP_NAME:Ljava/lang/String; = "\'TRIM\'_yyyyMMdd_HHmmss"

.field public static final TRIM_ACTION:Ljava/lang/String; = "com.lenovo.scg.camera.action.TRIM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

.field private mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field public mProgress:Landroid/app/ProgressDialog;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSaveVideoTextView:Landroid/widget/TextView;

.field private mSrcVideoPath:Ljava/lang/String;

.field private mTrimEndTime:I

.field private mTrimStartTime:I

.field private mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    .line 61
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 63
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 65
    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 75
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    .line 161
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/TrimVideo$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo$2;-><init>(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->trimVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/TrimVideo;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private isModified()Z
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 228
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    sub-int v0, v1, v2

    .line 232
    .local v0, "delta":I
    if-lt v0, v3, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 224
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->showPaused()V

    .line 225
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->showPlaying()V

    .line 219
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->setProgress()I

    .line 220
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 193
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    if-ge v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 195
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 199
    :cond_0
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-lez v1, :cond_2

    .line 200
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-le v1, v2, :cond_1

    .line 201
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 202
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    iput v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 205
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 209
    .local v0, "duration":I
    if-lez v0, :cond_3

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    if-nez v1, :cond_3

    .line 210
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    iget v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->setTimes(IIII)V

    .line 213
    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    return v1
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0f04be

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0f04c0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 291
    return-void
.end method

.method private trimVideo()V
    .locals 5

    .prologue
    .line 241
    const-string v1, "\'TRIM\'_yyyyMMdd_HHmmss"

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    const v4, 0x7f0f06c4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/util/SaveVideoFileUtils;->getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mDstFileInfo:Lcom/lenovo/scg/gallery3d/util/SaveVideoFileInfo;

    .line 242
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "mSrcFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->showProgressDialog()V

    .line 246
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo$3;-><init>(Lcom/lenovo/scg/gallery3d/app/TrimVideo;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 279
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->showEnded()V

    .line 339
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 87
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->requestWindowFeature(I)Z

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x2

    .line 91
    .local v1, "displayOptions":I
    invoke-virtual {v0, v6, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 92
    const/16 v1, 0x10

    .line 93
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 94
    const v4, 0x7f04018e

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 96
    const v4, 0x7f100984

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    .line 97
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    new-instance v5, Lcom/lenovo/scg/gallery3d/app/TrimVideo$1;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo$1;-><init>(Lcom/lenovo/scg/gallery3d/app/TrimVideo;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 107
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    .line 108
    const-string/jumbo v4, "media-item-path"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSrcVideoPath:Ljava/lang/String;

    .line 109
    const v4, 0x7f04018f

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->setContentView(I)V

    .line 110
    const v4, 0x7f100985

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f1006f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    .line 114
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    .line 115
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "rootView":Landroid/view/View;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    invoke-virtual {v4, p0}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->setListener(Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;)V

    .line 117
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mController:Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/app/TrimControllerOverlay;->setCanReplay(Z)V

    .line 119
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 120
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 121
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 123
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->playVideo()V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 333
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->playVideo()V

    .line 334
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 181
    const-string/jumbo v0, "trim_start"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 182
    const-string/jumbo v0, "trim_end"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 183
    const-string/jumbo v0, "video_pos"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHasPaused:Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const-string/jumbo v0, "trim_start"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string/jumbo v0, "trim_end"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v0, "video_pos"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 2
    .param p1, "time"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 315
    iput p2, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimStartTime:I

    .line 316
    iput p3, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mTrimEndTime:I

    .line 317
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->setProgress()I

    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mSaveVideoTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->isModified()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 320
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 310
    return-void
.end method

.method public onSeekStart()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->pauseVideo()V

    .line 305
    return-void
.end method

.method public onShown()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/TrimVideo;->mProgress:Landroid/app/ProgressDialog;

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 153
    return-void
.end method
