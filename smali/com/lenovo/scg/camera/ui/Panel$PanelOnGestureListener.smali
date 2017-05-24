.class Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field scrollX:F

.field scrollY:F

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    .line 540
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ui/Panel;->initChange()Z

    .line 541
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    sget-object v1, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 546
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .end local p4    # "velocityY":F
    :goto_0
    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F
    invoke-static {v0, p4}, Lcom/lenovo/scg/camera/ui/Panel;->access$1002(Lcom/lenovo/scg/camera/ui/Panel;F)F

    .line 547
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v1, v1, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/Panel;->post(Ljava/lang/Runnable;)Z

    .line 548
    return v2

    .restart local p4    # "velocityY":F
    :cond_0
    move p4, p3

    .line 546
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 553
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 556
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    sget-object v3, Lcom/lenovo/scg/camera/ui/Panel$State;->TRACKING:Lcom/lenovo/scg/camera/ui/Panel$State;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 557
    const/4 v1, 0x0

    .local v1, "tmpY":F
    const/4 v0, 0x0

    .line 558
    .local v0, "tmpX":F
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/Panel;->access$300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 559
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    sub-float/2addr v2, p4

    iput v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    .line 560
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v2

    if-nez v2, :cond_2

    .line 561
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$600(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v4

    neg-int v4, v4

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/ui/Panel;->access$1800(Lcom/lenovo/scg/camera/ui/Panel;FII)F

    move-result v1

    .line 573
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/Panel;->access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/Panel;->access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 574
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/ui/Panel;->access$1402(Lcom/lenovo/scg/camera/ui/Panel;F)F

    .line 575
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$1102(Lcom/lenovo/scg/camera/ui/Panel;F)F

    .line 576
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/Panel;->invalidate()V

    .line 578
    :cond_1
    return v6

    .line 563
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$600(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v4

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$1800(Lcom/lenovo/scg/camera/ui/Panel;FII)F

    move-result v1

    goto :goto_0

    .line 566
    :cond_3
    iget v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    .line 567
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 568
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$500(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v4

    neg-int v4, v4

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/scg/camera/ui/Panel;->access$1800(Lcom/lenovo/scg/camera/ui/Panel;FII)F

    move-result v0

    goto :goto_0

    .line 570
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    iget-object v4, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$500(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v4

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->ensureRange(FII)F
    invoke-static {v2, v3, v5, v4}, Lcom/lenovo/scg/camera/ui/Panel;->access$1800(Lcom/lenovo/scg/camera/ui/Panel;FII)F

    move-result v0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 583
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public setScroll(II)V
    .locals 1
    .param p1, "initScrollX"    # I
    .param p2, "initScrollY"    # I

    .prologue
    .line 534
    int-to-float v0, p1

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollX:F

    .line 535
    int-to-float v0, p2

    iput v0, p0, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->scrollY:F

    .line 536
    return-void
.end method
