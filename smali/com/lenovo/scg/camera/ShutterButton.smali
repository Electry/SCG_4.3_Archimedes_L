.class public Lcom/lenovo/scg/camera/ShutterButton;
.super Lcom/lenovo/scg/camera/ui/RotateImageView;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

.field private mLongPressedDown:Z

.field private mOldPressed:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mTouchEnabled:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    .line 67
    invoke-virtual {p0, p0}, Lcom/lenovo/scg/camera/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/ShutterButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/ShutterButton;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Z)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mTouchEnabled:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ShutterButton;->isPressed()Z

    move-result v0

    .line 96
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 97
    if-nez v0, :cond_1

    .line 119
    new-instance v1, Lcom/lenovo/scg/camera/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/camera/ShutterButton$1;-><init>(Lcom/lenovo/scg/camera/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 129
    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mOldPressed:Z

    .line 131
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0, v0}, Lcom/lenovo/scg/camera/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public enableTouch(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mTouchEnabled:Z

    .line 85
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 192
    iget-object v2, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f10015f

    if-ne v2, v3, :cond_0

    .line 194
    const-string/jumbo v2, "onShutterButtonLongPressed"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    .line 198
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 204
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 222
    :goto_0
    return v0

    .line 200
    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 169
    :pswitch_0
    const-string/jumbo v0, "onTouchEvent shutter button: ACTION_DOWN"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_1
    const-string/jumbo v0, "onTouchEvent shutter button: ACTION_UP"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    if-eqz v0, :cond_0

    .line 176
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonLongPressed(Z)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 176
    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 142
    .local v0, "result":Z
    const-string/jumbo v1, "shutter button performClick"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->isInputLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTimerShutterOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isTimerShutterOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    const/16 v1, 0x36b0

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->setMaxLockTimeOut(I)V

    .line 155
    :cond_2
    const-string/jumbo v1, "shutterbutton onclick"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/lenovo/scg/camera/ShutterButton;)V

    goto :goto_0
.end method

.method public resetStatus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mLongPressedDown:Z

    .line 227
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ShutterButton;->mOldPressed:Z

    .line 228
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 229
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 235
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/camera/ShutterButton;->mListener:Lcom/lenovo/scg/camera/ShutterButton$OnShutterButtonListener;

    .line 72
    return-void
.end method
