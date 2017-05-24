.class Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CircleImageMenuGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$1;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    .line 432
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->isRotating:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    const/4 v2, 0x0

    .line 461
    :goto_0
    return v2

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getQuadrant(DD)I
    invoke-static {v4, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$400(DD)I

    move-result v0

    .line 438
    .local v0, "q1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v4, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    float-to-double v6, v3

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getQuadrant(DD)I
    invoke-static {v4, v5, v6, v7}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$400(DD)I

    move-result v1

    .line 442
    .local v1, "q2":I
    if-ne v0, v9, :cond_1

    if-ne v1, v9, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_a

    :cond_1
    if-ne v0, v8, :cond_2

    if-eq v1, v8, :cond_a

    :cond_2
    if-ne v0, v2, :cond_3

    if-eq v1, v8, :cond_a

    :cond_3
    if-ne v0, v10, :cond_4

    if-ne v1, v10, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    :cond_4
    if-ne v0, v9, :cond_5

    if-eq v1, v8, :cond_a

    :cond_5
    if-ne v0, v8, :cond_6

    if-eq v1, v9, :cond_a

    :cond_6
    if-ne v0, v8, :cond_7

    if-eq v1, v10, :cond_a

    :cond_7
    if-ne v0, v10, :cond_8

    if-eq v1, v8, :cond_a

    :cond_8
    if-ne v0, v9, :cond_9

    if-ne v1, v10, :cond_9

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)[Z

    move-result-object v3

    aget-boolean v3, v3, v8

    if-nez v3, :cond_a

    :cond_9
    if-ne v0, v10, :cond_b

    if-ne v1, v9, :cond_b

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->quadrantTouched:[Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)[Z

    move-result-object v3

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_b

    .line 453
    :cond_a
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    new-instance v4, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    const/high16 v6, -0x40800000    # -1.0f

    add-float v7, p3, p4

    mul-float/2addr v6, v7

    invoke-direct {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 457
    :cond_b
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    new-instance v4, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    add-float v6, p3, p4

    invoke-direct {v4, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$FlingRunnable;-><init>(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;F)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 467
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->pointToPosition(FF)I
    invoke-static {v5, v6, v7}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$700(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;FF)I

    move-result v5

    # setter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$602(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;I)I

    .line 468
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 469
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    # setter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$802(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Landroid/view/View;)Landroid/view/View;

    .line 470
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 486
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 487
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    move-object v2, v3

    check-cast v2, Lcom/lenovo/scg/camera/setting/view/CircleImageView;

    .line 488
    .local v2, "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->selected:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedViewsPostition:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v5

    if-eq v3, v5, :cond_4

    .line 489
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V
    invoke-static {v3, v2, v8}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V

    .line 490
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateToCenter:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1400(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 491
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemSelectedListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1500(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemSelectedListener;->onItemSelected(Landroid/view/View;Ljava/lang/String;)V

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 497
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;->onItemClick(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v3, v4

    .line 511
    .end local v2    # "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :goto_1
    return v3

    .line 472
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleWidth:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$200(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    .line 473
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->circleHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 475
    .local v1, "centerY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childWidth:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$900(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->childHeight:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1000(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnCenterClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1100(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnCenterClickListener;->onCenterClick()V

    move v3, v4

    .line 481
    goto :goto_1

    .line 502
    .end local v0    # "centerX":F
    .end local v1    # "centerY":F
    .restart local v2    # "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # invokes: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->rotateViewToCenter(Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V
    invoke-static {v3, v2, v8}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1300(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;Lcom/lenovo/scg/camera/setting/view/CircleImageView;Z)V

    .line 504
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mOnItemClickListener:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$1600(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$MyGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;

    # getter for: Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->mTappedView:Landroid/view/View;
    invoke-static {v5}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;->access$800(Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/view/CircleImageView;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/lenovo/scg/camera/setting/view/CircleImageMenuGroup$OnItemClickListener;->onItemClick(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 511
    .end local v2    # "view":Lcom/lenovo/scg/camera/setting/view/CircleImageView;
    :cond_5
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1
.end method
