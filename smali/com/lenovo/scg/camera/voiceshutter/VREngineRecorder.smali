.class public Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;
.super Ljava/lang/Object;
.source "VREngineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VREngineRecorder"

.field private static final mRecorderMutex:Ljava/lang/Object;


# instance fields
.field private mAudioFormat:I

.field private mSample:I

.field private mStatus:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

.field private mStatusMutex:Ljava/lang/Object;

.field private volatile mWorkRunnable:Ljava/lang/Runnable;

.field private volatile mWorking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mRecorderMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    .line 21
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->IDLE:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatus:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatusMutex:Ljava/lang/Object;

    .line 24
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mSample:I

    .line 25
    iput v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mAudioFormat:I

    .line 43
    new-instance v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$1;-><init>(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorkRunnable:Ljava/lang/Runnable;

    .line 28
    iput p1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mAudioFormat:I

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mRecorderMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .prologue
    .line 8
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mSample:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .prologue
    .line 8
    iget v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mAudioFormat:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    return v0
.end method


# virtual methods
.method public getStatus()Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatusMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatus:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V
    .locals 2
    .param p1, "s"    # Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    .prologue
    .line 32
    iget-object v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatusMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iput-object p1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mStatus:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-boolean v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    if-eqz v2, :cond_0

    .line 115
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 117
    :cond_0
    const-string v2, "VREngineRecorder"

    const-string/jumbo v3, "start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    .line 119
    sget-object v2, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->STARTING:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V

    .line 121
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorkRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 122
    .local v0, "workThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v0, "VREngineRecorder"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->mWorking:Z

    .line 132
    sget-object v0, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;->STOPPING:Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder;->setStatus(Lcom/lenovo/scg/camera/voiceshutter/VREngineRecorder$RecordStatus;)V

    goto :goto_0
.end method
