.class Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$000(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$100(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->showPlaying()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$300(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mPlayingChecker:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$200(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
