.class Lcom/lenovo/scg/camera/ui/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ui/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/Panel;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/Panel;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 337
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mState:Lcom/lenovo/scg/camera/ui/Panel$State;
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$000(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$State;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/ui/Panel$State;->ANIMATING:Lcom/lenovo/scg/camera/ui/Panel$State;

    if-ne v3, v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v5

    .line 342
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 343
    .local v0, "action":I
    if-nez v0, :cond_7

    .line 344
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mBringToFront:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$100(Lcom/lenovo/scg/camera/ui/Panel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/Panel;->bringToFront()V

    .line 347
    :cond_2
    iput v5, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    .line 348
    iput v5, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    .line 349
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContent:Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$200(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 351
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mOrientation:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$300(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 352
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    .line 357
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->setInitialPosition:Z

    .line 373
    :goto_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$800(Lcom/lenovo/scg/camera/ui/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    if-ne v0, v2, :cond_0

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v2, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    iget-object v2, v2, Lcom/lenovo/scg/camera/ui/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 352
    goto :goto_1

    .line 354
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mPosition:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$400(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    :goto_4
    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_4

    .line 359
    :cond_7
    iget-boolean v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_8

    .line 361
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentWidth:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$500(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    .line 362
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    iget-object v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mContentHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/ui/Panel;->access$600(Lcom/lenovo/scg/camera/ui/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    .line 364
    iget-object v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->this$0:Lcom/lenovo/scg/camera/ui/Panel;

    # getter for: Lcom/lenovo/scg/camera/ui/Panel;->mGestureListener:Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;
    invoke-static {v1}, Lcom/lenovo/scg/camera/ui/Panel;->access$700(Lcom/lenovo/scg/camera/ui/Panel;)Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    iget v4, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/scg/camera/ui/Panel$PanelOnGestureListener;->setScroll(II)V

    .line 365
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->setInitialPosition:Z

    .line 367
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    .line 368
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    .line 371
    :cond_8
    iget v1, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lenovo/scg/camera/ui/Panel$1;->initY:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_3
.end method
