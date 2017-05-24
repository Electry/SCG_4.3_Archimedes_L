.class Lcom/lenovo/scg/camera/ui/Panel$3;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 416
    const/4 v2, 0x0

    .local v2, "fromXDelta":I
    const/4 v5, 0x0

    .local v5, "toXDelta":I
    const/4 v3, 0x0

    .local v3, "fromYDelta":I
    const/4 v6, 0x0

    .line 417
    .local v6, "toYDelta":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_1

    .line 418
    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F
    invoke-static {v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$1000(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v9

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    xor-int/2addr v8, v9

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v10, v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$902(Lcom/lenovo/scg/camera/ui/Panel;Z)Z

    .line 421
    :cond_1
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 422
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$600(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v4

    .line 423
    .local v4, "height":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 424
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    if-nez v8, :cond_7

    neg-int v3, v4

    .line 428
    :goto_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->TRACKING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_b

    .line 429
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    int-to-float v9, v3

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v9

    int-to-float v10, v6

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 430
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    :goto_3
    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$902(Lcom/lenovo/scg/camera/ui/Panel;Z)Z

    .line 431
    move v6, v3

    .line 433
    :cond_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    float-to-int v3, v8

    .line 439
    :cond_3
    :goto_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1200(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 440
    const/high16 v8, 0x447a0000    # 1000.0f

    sub-int v9, v6, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/lenovo/scg/camera/ui/Panel;->access$1000(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 441
    .local v1, "calculatedDuration":I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 471
    .end local v4    # "height":I
    :goto_5
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    const/4 v10, 0x0

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v9, v10}, Lcom/lenovo/scg/camera/ui/Panel;->access$1102(Lcom/lenovo/scg/camera/ui/Panel;F)F

    move-result v9

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v8, v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$1402(Lcom/lenovo/scg/camera/ui/Panel;F)F

    .line 472
    if-nez v1, :cond_16

    .line 473
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->READY:Lcom/lenovo/scg/camera/ui/Panel$State;

    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8, v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$002(Lcom/lenovo/scg/camera/ui/Panel;Lcom/lenovo/scg/camera/ui/Panel$State;)Lcom/lenovo/scg/camera/ui/Panel$State;

    .line 474
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 475
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$200(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # invokes: Lcom/lenovo/scg/camera/ui/Panel;->postProcess()V
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1500(Lcom/lenovo/scg/camera/ui/Panel;)V

    .line 490
    :goto_6
    return-void

    .line 418
    .end local v1    # "calculatedDuration":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .restart local v4    # "height":I
    :cond_7
    move v3, v4

    .line 424
    goto/16 :goto_2

    .line 426
    :cond_8
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    if-nez v8, :cond_9

    neg-int v6, v4

    :goto_7
    goto/16 :goto_2

    :cond_9
    move v6, v4

    goto :goto_7

    .line 430
    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    .line 434
    :cond_b
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_3

    .line 435
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackY:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1100(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    float-to-int v3, v8

    goto/16 :goto_4

    .line 443
    :cond_c
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    sub-int v9, v6, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I
    invoke-static {v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$600(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1    # "calculatedDuration":I
    goto :goto_5

    .line 446
    .end local v1    # "calculatedDuration":I
    .end local v4    # "height":I
    :cond_d
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$500(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v7

    .line 447
    .local v7, "width":I
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 448
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    neg-int v2, v7

    .line 452
    :goto_8
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->TRACKING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_14

    .line 453
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    int-to-float v9, v2

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v9

    int-to-float v10, v5

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    .line 454
    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$900(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    :goto_9
    # setter for: Lcom/lenovo/scg/camera/ui/Panel;->mIsShrinking:Z
    invoke-static {v9, v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$902(Lcom/lenovo/scg/camera/ui/Panel;Z)Z

    .line 455
    move v5, v2

    .line 457
    :cond_e
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    float-to-int v2, v8

    .line 463
    :cond_f
    :goto_a
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_15

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1200(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 464
    const/high16 v8, 0x447a0000    # 1000.0f

    sub-int v9, v5, v2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mVelocity:F
    invoke-static {v10}, Lcom/lenovo/scg/camera/ui/Panel;->access$1000(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 465
    .restart local v1    # "calculatedDuration":I
    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_5

    .end local v1    # "calculatedDuration":I
    :cond_10
    move v2, v7

    .line 448
    goto :goto_8

    .line 450
    :cond_11
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    neg-int v5, v7

    :goto_b
    goto :goto_8

    :cond_12
    move v5, v7

    goto :goto_b

    .line 454
    :cond_13
    const/4 v8, 0x0

    goto :goto_9

    .line 458
    :cond_14
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_f

    .line 459
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mTrackX:F
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1400(Lcom/lenovo/scg/camera/ui/Panel;)F

    move-result v8

    float-to-int v2, v8

    goto :goto_a

    .line 467
    :cond_15
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mDuration:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v8

    sub-int v9, v5, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I
    invoke-static {v9}, Lcom/lenovo/scg/camera/ui/Panel;->access$500(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v9

    div-int v1, v8, v9

    .restart local v1    # "calculatedDuration":I
    goto/16 :goto_5

    .line 481
    .end local v7    # "width":I
    :cond_16
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v8, v2

    int-to-float v9, v5

    int-to-float v10, v3

    int-to-float v11, v6

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 482
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    int-to-long v8, v1

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 483
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1600(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 484
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v8

    sget-object v9, Lcom/lenovo/scg/camera/ui/Panel$State;->FLYING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v8, v9, :cond_18

    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mLinearFlying:Z
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1200(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 485
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 489
    :cond_17
    :goto_c
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v8, v0}, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 486
    :cond_18
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1700(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 487
    iget-object v8, p0, Lcom/lenovo/scg/camera/ui/Panel$3;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v8}, Lcom/lenovo/scg/camera/ui/Panel;->access$1700(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_c
.end method
