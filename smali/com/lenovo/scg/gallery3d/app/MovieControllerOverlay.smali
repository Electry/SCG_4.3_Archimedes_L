.class public Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;
.super Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private hidden:Z

.field private final hideAnimation:Landroid/view/animation/Animation;

.field private final startHidingRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay$1;-><init>(Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    .line 54
    const v0, 0x7f050021

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    .line 55
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHiding()V

    return-void
.end method

.method private cancelHiding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-virtual {v0, v2}, Lcom/lenovo/scg/gallery3d/app/TimeBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method

.method private maybeStartHiding()V
    .locals 4

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHidingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    :cond_0
    return-void
.end method

.method private startHiding()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mBackground:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mPlayPauseReplayView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHideAnimation(Landroid/view/View;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected createTimeBar(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/TimeBar;

    invoke-direct {v0, p1, p0}, Lcom/lenovo/scg/gallery3d/app/TimeBar;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/app/TimeBar$Listener;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mTimeBar:Lcom/lenovo/scg/gallery3d/app/TimeBar;

    .line 63
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 68
    .local v0, "wasHidden":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 69
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->hide()V

    .line 70
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onHidden()V

    .line 73
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hide()V

    .line 125
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 120
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 115
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->show()V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onScrubbingEnd(III)V
    .locals 0
    .param p1, "time"    # I
    .param p2, "trimStartTime"    # I
    .param p3, "trimEndTime"    # I

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->onScrubbingEnd(III)V

    .line 185
    return-void
.end method

.method public onScrubbingMove(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 178
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->onScrubbingMove(I)V

    .line 179
    return-void
.end method

.method public onScrubbingStart()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 172
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->onScrubbingStart()V

    .line 173
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->show()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->cancelHiding()V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PLAYING:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mState:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    sget-object v1, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;->PAUSED:Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onPlayPause()V

    goto :goto_0

    .line 153
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 78
    .local v0, "wasHidden":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    .line 79
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->show()V

    .line 80
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->mListener:Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;

    invoke-interface {v1}, Lcom/lenovo/scg/gallery3d/app/ControllerOverlay$Listener;->onShown()V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->maybeStartHiding()V

    .line 84
    return-void
.end method

.method protected updateViews()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->hidden:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/lenovo/scg/gallery3d/app/CommonControllerOverlay;->updateViews()V

    goto :goto_0
.end method
