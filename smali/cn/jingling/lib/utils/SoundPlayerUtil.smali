.class public Lcn/jingling/lib/utils/SoundPlayerUtil;
.super Ljava/lang/Object;
.source "SoundPlayerUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayerUtil"

.field private static mSingleton:Lcn/jingling/lib/utils/SoundPlayerUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSoundPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static declared-synchronized getSingleton(Landroid/content/Context;)Lcn/jingling/lib/utils/SoundPlayerUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v1, Lcn/jingling/lib/utils/SoundPlayerUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSingleton:Lcn/jingling/lib/utils/SoundPlayerUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcn/jingling/lib/utils/SoundPlayerUtil;

    invoke-direct {v0, p0}, Lcn/jingling/lib/utils/SoundPlayerUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSingleton:Lcn/jingling/lib/utils/SoundPlayerUtil;

    .line 42
    :cond_0
    sget-object v0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSingleton:Lcn/jingling/lib/utils/SoundPlayerUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 141
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 142
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 145
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 146
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "SoundPlayerUtil"

    const-string v2, "IllegalStateException happened."

    invoke-static {v1, v2}, Lcn/jingling/lib/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private play()V
    .locals 5

    .prologue
    .line 154
    iget-object v3, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v3, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 158
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 160
    .local v2, "ringerMode":I
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 161
    :try_start_0
    iget-object v3, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 179
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 181
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public play(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 63
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 64
    invoke-direct {p0}, Lcn/jingling/lib/utils/SoundPlayerUtil;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public play(Landroid/net/Uri;I)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    .line 126
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    .line 127
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 123
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    invoke-direct {p0}, Lcn/jingling/lib/utils/SoundPlayerUtil;->init()V

    .line 130
    invoke-direct {p0}, Lcn/jingling/lib/utils/SoundPlayerUtil;->play()V

    .line 131
    if-lez p2, :cond_0

    .line 132
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;-><init>(Lcn/jingling/lib/utils/SoundPlayerUtil;Lcn/jingling/lib/utils/SoundPlayerUtil$StopTask;)V

    int-to-long v4, p2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)V
    .locals 8
    .param p1, "assetsPath"    # Ljava/lang/String;

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 75
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 78
    .local v7, "file":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 79
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 80
    iget-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v7    # "file":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcn/jingling/lib/utils/SoundPlayerUtil;->play()V

    .line 88
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 85
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 86
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method public playOneMore(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "first"    # Z

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 107
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    if-eqz p2, :cond_1

    .line 104
    :try_start_1
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcn/jingling/lib/utils/SoundPlayerUtil;->mSoundPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
