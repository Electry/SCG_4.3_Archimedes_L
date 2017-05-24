.class public Lcom/lenovo/scg/camera/way/VoiceWay;
.super Lcom/lenovo/scg/camera/way/CaptureWay;
.source "VoiceWay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "voicedb"

.field private static final DB_PATH:Ljava/lang/String;

.field private static final MSG_SAVE_DONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VREngineVoiceWay"

.field private static final ZIP_NAME:Ljava/lang/String; = "voicedb.zip"


# instance fields
.field private final CHECK_RESTART_TIME:I

.field private final MSG_INIT:I

.field private final MSG_RESTART:I

.field private final TAKE_PICTURE_TIME:I

.field private allowProcessing:Z

.field private initSuccess:Z

.field private isWayOpened:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".SCG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;-><init>()V

    .line 31
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;

    .line 32
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    .line 33
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    .line 34
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->TAKE_PICTURE_TIME:I

    .line 35
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->CHECK_RESTART_TIME:I

    .line 36
    iput v1, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->MSG_RESTART:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->MSG_INIT:I

    .line 39
    iput-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 40
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z

    .line 42
    new-instance v0, Lcom/lenovo/scg/camera/way/VoiceWay$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/way/VoiceWay$1;-><init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/way/VoiceWay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/camera/way/VoiceWay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/way/VoiceWay;)Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/way/VoiceWay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/way/VoiceWay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/way/VoiceWay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkDB()Z
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;

    const-string/jumbo v2, "voicedb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "VREngineVoiceWay"

    const-string v2, "db File already exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x1

    .line 299
    :goto_0
    return v1

    .line 285
    :cond_0
    new-instance v1, Lcom/lenovo/scg/camera/way/VoiceWay$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/way/VoiceWay$3;-><init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/VoiceWay$3;->start()V

    .line 299
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkDB(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;

    const-string/jumbo v2, "voicedb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v0, "dbFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "VREngineVoiceWay"

    const-string v2, "db File already exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    .line 275
    :goto_0
    return v1

    .line 263
    :cond_0
    new-instance v1, Lcom/lenovo/scg/camera/way/VoiceWay$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/way/VoiceWay$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/VoiceWay$2;->start()V

    .line 275
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private closeEngine()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    if-nez v0, :cond_1

    .line 192
    const-string v0, "VREngineVoiceWay"

    const-string v1, "closeEngine() : !isWayOpened && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v0, "VREngineVoiceWay"

    const-string v1, "closeEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    if-eqz v0, :cond_2

    .line 198
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Stop()V

    .line 199
    invoke-static {}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Exit()V

    .line 202
    :cond_2
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    .line 203
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 206
    const-string v0, "close voice Engine end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openEngine()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 159
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "VREngineVoiceWay"

    const-string/jumbo v1, "openEngine() : isWayOpened && return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string v0, "VREngineVoiceWay"

    const-string/jumbo v1, "openEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;-><init>(Lcom/lenovo/scg/camera/way/VoiceWay;Lcom/lenovo/scg/camera/way/VoiceWay$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    .line 167
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mWayPara:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/camera/way/CaptureWayPara;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayPara;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VoiceWay;->checkDB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;

    const-string/jumbo v2, "voicedb"

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 171
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V

    .line 172
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z

    .line 181
    :cond_1
    :goto_1
    iput-boolean v3, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z

    .line 183
    const-string/jumbo v0, "open voice Engine end"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    invoke-static {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Start(Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;)V

    goto :goto_1
.end method

.method private restart(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VoiceWay;->closeEngine()V

    .line 80
    return-void
.end method

.method public bridge synthetic getShtterTimer()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/lenovo/scg/camera/way/CaptureWay;->getShtterTimer()I

    move-result v0

    return v0
.end method

.method public getWayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/lenovo/scg/camera/way/CaptureWayFactory;->mMapWay2PrompName:Ljava/util/HashMap;

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VOICE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VoiceWay;->closeEngine()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VoiceWay;->openEngine()V

    .line 90
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lenovo/scg/camera/way/VoiceWay;->openEngine()V

    .line 75
    return-void
.end method

.method public bridge synthetic set3sDelayMust(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->set3sDelayMust(Z)V

    return-void
.end method

.method public bridge synthetic setWayPara(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/way/CaptureWay;->setWayPara(Ljava/lang/Object;)V

    return-void
.end method
