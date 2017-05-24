.class public Lcom/lenovo/scg/camera/TimeOutProtect;
.super Ljava/lang/Object;
.source "TimeOutProtect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeOutProtect"

.field private static mInstance:Lcom/lenovo/scg/camera/TimeOutProtect;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/camera/TimeOutProtect;->mInstance:Lcom/lenovo/scg/camera/TimeOutProtect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Lcom/lenovo/scg/camera/TimeOutProtect$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/TimeOutProtect$2;-><init>(Lcom/lenovo/scg/camera/TimeOutProtect;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/TimeOutProtect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/TimeOutProtect;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/TimeOutProtect;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/lenovo/scg/camera/TimeOutProtect;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/TimeOutProtect;->mInstance:Lcom/lenovo/scg/camera/TimeOutProtect;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/lenovo/scg/camera/TimeOutProtect;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/TimeOutProtect;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/TimeOutProtect;->mInstance:Lcom/lenovo/scg/camera/TimeOutProtect;

    .line 27
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/TimeOutProtect;->mInstance:Lcom/lenovo/scg/camera/TimeOutProtect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "TimeOutProtect"

    const-string v1, "kbg374, cancelTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    :cond_0
    return-void
.end method

.method public resetTimer(Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;J)V
    .locals 4
    .param p1, "listener"    # Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;
    .param p2, "delay"    # J

    .prologue
    .line 35
    const-string v0, "TimeOutProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, resetTimer, delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mListener:Lcom/lenovo/scg/camera/TimeOutProtect$OnTimeOutListener;

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 39
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/TimeOutProtect;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lenovo/scg/camera/TimeOutProtect$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/TimeOutProtect$1;-><init>(Lcom/lenovo/scg/camera/TimeOutProtect;)V

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 49
    return-void
.end method
