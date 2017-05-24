.class public Lcom/lenovo/scg/camera/ui/PieMenuButton;
.super Landroid/view/View;
.source "PieMenuButton.java"


# instance fields
.field private mPressed:Z

.field private mReadyToClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mReadyToClick:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 37
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieMenuButton;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mPressed:Z

    .line 38
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mPressed:Z

    if-eqz v0, :cond_0

    .line 48
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mReadyToClick:Z

    .line 49
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/ui/PieMenuButton;->performClick()Z

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mReadyToClick:Z

    if-eqz v1, :cond_0

    .line 59
    iput-boolean v0, p0, Lcom/lenovo/scg/camera/ui/PieMenuButton;->mReadyToClick:Z

    .line 60
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 62
    :cond_0
    return v0
.end method
