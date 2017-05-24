.class Lcom/lenovo/scg/camera/way/VoiceWay$1;
.super Landroid/os/Handler;
.source "VoiceWay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/VoiceWay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/VoiceWay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/VoiceWay;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    const-string v0, "VREngineVoiceWay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MSG_RESTART initSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$000(Lcom/lenovo/scg/camera/way/VoiceWay;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$000(Lcom/lenovo/scg/camera/way/VoiceWay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mListener:Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$100(Lcom/lenovo/scg/camera/way/VoiceWay;)Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Start(Lcom/lenovo/scg/camera/voiceshutter/VREngineListener;)V

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "VREngineVoiceWay"

    const-string v1, "handleMessage: MSG_INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->isWayOpened:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$200(Lcom/lenovo/scg/camera/way/VoiceWay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$000(Lcom/lenovo/scg/camera/way/VoiceWay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$300(Lcom/lenovo/scg/camera/way/VoiceWay;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/camera/way/VoiceWay;->DB_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "voicedb"

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/camera/voiceshutter/VREngineWrapper;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # invokes: Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V
    invoke-static {v0, v4, v5}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # setter for: Lcom/lenovo/scg/camera/way/VoiceWay;->initSuccess:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$002(Lcom/lenovo/scg/camera/way/VoiceWay;Z)Z

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # setter for: Lcom/lenovo/scg/camera/way/VoiceWay;->allowProcessing:Z
    invoke-static {v0, v3}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$602(Lcom/lenovo/scg/camera/way/VoiceWay;Z)Z

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/way/VoiceWay$1;->this$0:Lcom/lenovo/scg/camera/way/VoiceWay;

    # invokes: Lcom/lenovo/scg/camera/way/VoiceWay;->restart(J)V
    invoke-static {v0, v4, v5}, Lcom/lenovo/scg/camera/way/VoiceWay;->access$500(Lcom/lenovo/scg/camera/way/VoiceWay;J)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
