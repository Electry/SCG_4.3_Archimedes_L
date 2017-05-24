.class Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;
.super Ljava/lang/Object;
.source "VoiceWay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->onResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 132
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$600(Lcom/lenovo/scg/camera/way/VoiceWay;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const-string v2, "VREngineVoiceWay"

    const-string v3, "!allowProcessing && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # invokes: Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V
    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V

    .line 150
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string/jumbo v2, "voice shutter start"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    const-string v2, "VREngineVoiceWay"

    const-string/jumbo v3, "onResult() lock fail && return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # invokes: Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V
    invoke-static {v2, v4, v5}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/VoiceWay;->getShtterTimer()I

    move-result v2

    mul-int/lit16 v1, v2, 0x3e8

    .line 143
    .local v1, "shutterDelay":I
    add-int/lit16 v0, v1, 0x5dc

    .line 144
    .local v0, "delay":I
    const-string v2, "VREngineVoiceWay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save done time @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$700(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    const/4 v3, 0x0

    # setter for: Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$602(Lcom/lenovo/scg/camera/way/VoiceWay;Z)Z

    .line 149
    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener$1;->this$1:Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;

    iget-object v2, v2, Lcom/lenovo/scg/camera/way/VoiceWay$mySpeechListener;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/way/VoiceWay;->clickShutterButton()V

    goto :goto_0
.end method
