.class Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;
.super Ljava/lang/Object;
.source "CircleImageMenuGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private angleDelay:F

.field private isFirstForwarding:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

.field private velocity:F

.field private wasBigEnough:Z


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V
    .locals 1
    .param p2, "velocity"    # F

    .prologue
    .line 561
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;FZ)V

    .line 562
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;FZ)V
    .locals 3
    .param p2, "velocity"    # F
    .param p3, "isFirst"    # Z

    .prologue
    const/4 v2, 0x1

    .line 564
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->isFirstForwarding:Z

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->wasBigEnough:Z

    .line 565
    iput p2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    .line 566
    const/16 v0, 0x168

    invoke-virtual {p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->angleDelay:F

    .line 567
    iput-boolean p3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->isFirstForwarding:Z

    .line 569
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 570
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->wasBigEnough:Z

    .line 571
    # setter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;
    invoke-static {p1, p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1702(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    .line 573
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 576
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->allowRotating:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 578
    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 579
    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->angleDelay:F

    rem-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateButtons(F)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V

    .line 583
    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    .line 585
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->post(Ljava/lang/Runnable;)Z

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 587
    :cond_2
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->wasBigEnough:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->actRunnable:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1700(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->angle:F
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->firstChildPos:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->angleDelay:F

    rem-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    .line 593
    .local v0, "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnRotationFinishedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;
    invoke-static {v1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnRotationFinishedListener;->onRotationFinished(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    .end local v0    # "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :cond_3
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->isFirstForwarding:Z

    if-eqz v1, :cond_1

    .line 601
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->isFirstForwarding:Z

    .line 602
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    const/4 v3, 0x1

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V
    invoke-static {v2, v1, v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V

    goto :goto_0

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->speed:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateButtons(F)V
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V

    .line 609
    iget v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->deceleration:F
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$2300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->velocity:F

    .line 611
    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    invoke-virtual {v1, p0}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
