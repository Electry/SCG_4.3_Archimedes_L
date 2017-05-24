.class Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;
.super Ljava/lang/Object;
.source "VoiceWay.java"

# interfaces
.implements Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/VoiceWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mySpeechListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/VoiceWay;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/way/VoiceWay;Lcom/lenovo/scg/camera/way/VoiceWay$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/way/VoiceWay;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/way/VoiceWay$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;-><init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 4

    .prologue
    .line 115
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBegin tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onEndPoint()V
    .locals 4

    .prologue
    .line 110
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndPoint tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onError(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 120
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    const-wide/16 v2, 0x1f4

    # invokes: Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V
    invoke-static {v0, v2, v3}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V

    .line 122
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResults: ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;-><init>(Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public onStartPoint()V
    .locals 4

    .prologue
    .line 105
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartPoint tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
