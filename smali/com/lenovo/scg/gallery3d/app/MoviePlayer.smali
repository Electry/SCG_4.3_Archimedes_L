.class public Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BLACK_TIMEOUT:J = 0x1f4L

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final KEY_RESUMEABLE_TIME:Ljava/lang/String; = "resumeable-timeout"

.field private static final KEY_VIDEO_POSITION:Ljava/lang/String; = "video-position"

.field private static final RESUMEABLE_TIMEOUT:J = 0x2bf20L

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"

.field private static final VIRTUALIZE_EXTRA:Ljava/lang/String; = "virtualize"


# instance fields
.field private final mAudioBecomingNoisyReceiver:Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

.field private final mBookmarker:Lcom/lenovo/scg/gallery3d/app/Bookmarker;

.field private mContext:Landroid/content/Context;

.field private final mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

.field private mDragging:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasPaused:Z

.field private mLastSystemUiVis:I

.field private final mPlayingChecker:Ljava/lang/Runnable;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mResumeableTime:J

.field private final mRootView:Landroid/view/View;

.field private mShowing:Z

.field private final mUri:Landroid/net/Uri;

.field private mVideoPosition:I

.field private final mVideoView:Landroid/widget/VideoView;

.field private mVirtualizer:Landroid/media/audiofx/Virtualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "movieActivity"    # Lcom/lenovo/scg/gallery3d/app/MovieActivity;
    .param p3, "videoUri"    # Landroid/net/Uri;
    .param p4, "savedInstance"    # Landroid/os/Bundle;
    .param p5, "canReplay"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 100
    const-wide v10, 0x7fffffffffffffffL

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 102
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 104
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 106
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    .line 116
    new-instance v10, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    .line 128
    new-instance v10, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$2;

    invoke-direct {v10, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$2;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    .line 139
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mRootView:Landroid/view/View;

    .line 140
    const v10, 0x7f1006f3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/VideoView;

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    .line 141
    new-instance v10, Lcom/lenovo/scg/gallery3d/app/Bookmarker;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/lenovo/scg/gallery3d/app/Bookmarker;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/lenovo/scg/gallery3d/app/Bookmarker;

    .line 142
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    .line 144
    new-instance v10, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    .line 145
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v10, p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->setListener(Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;)V

    .line 147
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->setCanReplay(Z)V

    .line 149
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v10, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 150
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v10, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 151
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 152
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v10, :cond_0

    .line 153
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v10}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 154
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 157
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 158
    .local v2, "ai":Landroid/content/Intent;
    const-string/jumbo v10, "virtualize"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 159
    .local v9, "virtualize":Z
    if-eqz v9, :cond_3

    .line 162
    sget-boolean v10, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->$assertionsDisabled:Z

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 165
    .local v6, "session":I
    if-eqz v6, :cond_5

    .line 166
    new-instance v8, Landroid/media/audiofx/Virtualizer;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v6}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    .line 167
    .local v8, "virt":Landroid/media/audiofx/Virtualizer;
    invoke-virtual {v8}, Landroid/media/audiofx/Virtualizer;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v4

    .line 168
    .local v4, "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v10, v4, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "uuid":Ljava/lang/String;
    const-string v10, "36103c52-8514-11e2-9e96-0800200c9a66"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "36103c50-8514-11e2-9e96-0800200c9a66"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 170
    :cond_2
    iput-object v8, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 171
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    .line 180
    .end local v4    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v6    # "session":I
    .end local v7    # "uuid":Ljava/lang/String;
    .end local v8    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_3
    :goto_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v11, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$3;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$3;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v10, v11}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v11, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$4;

    invoke-direct {v11, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$4;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V

    .line 204
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 206
    new-instance v10, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;)V

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    .line 207
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v10}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->register()V

    .line 209
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.music.musicservicecommand"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, "i":Landroid/content/Intent;
    const-string v10, "command"

    const-string/jumbo v11, "pause"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    if-eqz p4, :cond_6

    .line 214
    const-string/jumbo v10, "video-position"

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 215
    const-string/jumbo v10, "resumeable-timeout"

    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 216
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v10}, Landroid/widget/VideoView;->start()V

    .line 217
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v10}, Landroid/widget/VideoView;->suspend()V

    .line 218
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 227
    :goto_1
    return-void

    .line 174
    .end local v5    # "i":Landroid/content/Intent;
    .restart local v4    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .restart local v6    # "session":I
    .restart local v7    # "uuid":Ljava/lang/String;
    .restart local v8    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_4
    invoke-virtual {v8}, Landroid/media/audiofx/Virtualizer;->release()V

    goto :goto_0

    .line 177
    .end local v4    # "descriptor":Landroid/media/audiofx/AudioEffect$Descriptor;
    .end local v7    # "uuid":Ljava/lang/String;
    .end local v8    # "virt":Landroid/media/audiofx/Virtualizer;
    :cond_5
    const-string v10, "MoviePlayer"

    const-string/jumbo v11, "no session"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v6    # "session":I
    .restart local v5    # "i":Landroid/content/Intent;
    :cond_6
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/lenovo/scg/gallery3d/app/Bookmarker;

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/lenovo/scg/gallery3d/app/Bookmarker;->getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v3

    .line 221
    .local v3, "bookmark":Ljava/lang/Integer;
    if-eqz v3, :cond_7

    .line 222
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V

    goto :goto_1

    .line 224
    :cond_7
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->startVideo()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->startVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static isMediaKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 473
    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x58

    if-eq p0, v0, :cond_0

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    const/16 v0, 0x55

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseVideo()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showPaused()V

    .line 366
    return-void
.end method

.method private playVideo()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 359
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 360
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setProgress()I

    .line 361
    return-void
.end method

.method private setOnSystemUiVisibilityChangeListener()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 231
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method private setProgress()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mDragging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mShowing:Z

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 337
    :goto_0
    return v1

    .line 334
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 335
    .local v1, "position":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 336
    .local v0, "duration":I
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v3, v1, v0, v2, v2}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->setTimes(IIII)V

    goto :goto_0
.end method

.method private showResumeDialog(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bookmark"    # I

    .prologue
    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0f064a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    const v1, 0x7f0f064b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-int/lit16 v4, p2, 0x3e8

    invoke-static {p1, v4}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 271
    new-instance v1, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$6;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$6;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    const v1, 0x7f0f064c

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$7;

    invoke-direct {v2, p0, p2}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$7;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 286
    const v1, 0x7f0f0651

    new-instance v2, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$8;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$8;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 294
    return-void
.end method

.method private showSystemUi(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 252
    sget-boolean v1, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    const/16 v0, 0x700

    .line 255
    .local v0, "flag":I
    if-nez p1, :cond_1

    .line 257
    or-int/lit8 v0, v0, 0x7

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private startVideo()V
    .locals 6

    .prologue
    .line 343
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "scheme":Ljava/lang/String;
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rtsp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showLoading()V

    .line 346
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 354
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setProgress()I

    .line 355
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 350
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 385
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showEnded()V

    .line 381
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->onCompletion()V

    .line 382
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVirtualizer:Landroid/media/audiofx/Virtualizer;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mAudioBecomingNoisyReceiver:Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->unregister()V

    .line 325
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showErrorMessage(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 424
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 425
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 436
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 437
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    .line 465
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 440
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 465
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 446
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 450
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V

    goto :goto_0

    .line 455
    :sswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0

    .line 440
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 469
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHasPaused:Z

    .line 298
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mBookmarker:Lcom/lenovo/scg/gallery3d/app/Bookmarker;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mUri:Landroid/net/Uri;

    iget v2, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 301
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mResumeableTime:J

    .line 303
    return-void
.end method

.method public onPlayPause()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onReplay()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->startVideo()V

    .line 430
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHasPaused:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mResumeableTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    const-string/jumbo v0, "video-position"

    iget v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v0, "resumeable-timeout"

    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mResumeableTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    return-void
.end method

.method public onSeekEnd(III)V
    .locals 1
    .param p1, "time"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 410
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 411
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setProgress()I

    .line 412
    return-void
.end method

.method public onSeekMove(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 405
    return-void
.end method

.method public onSeekStart()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mDragging:Z

    .line 400
    return-void
.end method

.method public onShown()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mShowing:Z

    .line 417
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setProgress()I

    .line 418
    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->showSystemUi(Z)V

    .line 419
    return-void
.end method
