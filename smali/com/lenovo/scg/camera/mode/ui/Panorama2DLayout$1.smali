.class Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;
.super Landroid/os/Handler;
.source "Panorama2DLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mAnimStep:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$200(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v2

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->ARROW_ANIMEND:I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$500()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->arrowToRightImags:[I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$700()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # operator++ for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$408(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    .line 111
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 112
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowX:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 116
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # setter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$402(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;I)I

    .line 117
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->RIGHT_EGDE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    # setter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$802(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    .line 118
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # invokes: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->refreshUI4DirectionChanged(Z)V
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$900(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Z)V

    .line 119
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$800(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    if-ne v3, v4, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;->onExpectedDirectionChanged(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 125
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mAnimStep:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$200(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    .line 126
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 128
    :cond_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v2

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->ARROW_ANIMEND:I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$500()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 132
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v1

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->arrowToRightImags:[I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$700()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowAnimImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$600(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # operator++ for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$408(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    .line 135
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 137
    :cond_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowX:F

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 139
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # setter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentAnimImage:I
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$402(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;I)I

    .line 140
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    sget-object v3, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    # setter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$802(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # invokes: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->refreshUI4DirectionChanged(Z)V
    invoke-static {v2, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$900(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;Z)V

    .line 142
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mListener:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mArrowPosition:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$800(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;->LEFT_EDGE:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$ARROW_POSITION;

    if-ne v3, v4, :cond_6

    :goto_2
    invoke-interface {v2, v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;->onExpectedDirectionChanged(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # operator++ for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1108(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v0

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->QUICK_ANIMEND:I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1200()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->quickImags:[I
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1300()[I

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1100(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$300(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mIndictorArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$000(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02023a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    const/4 v1, -0x1

    # setter for: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->mCurrentQuickImage:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1102(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;I)I

    goto/16 :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    # invokes: Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->startAnimation()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->access$1400(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;)V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
