.class Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;-><init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$000(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # invokes: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$1000(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    .line 491
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$900(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$AudioBecomingNoisyReceiver;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$900(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    return-void
.end method
