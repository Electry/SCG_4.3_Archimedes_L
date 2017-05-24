.class Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;
.super Ljava/lang/Object;
.source "BigCircleSeekBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/high16 v11, 0x41f00000    # 30.0f

    const/4 v6, 0x1

    .line 146
    const-string v8, "BigCircleSeekBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onTouch()CX : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v10, v10, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "CY : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v10, v10, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BigCircleSeekBarView-onTouch-- RawY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Y : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isTouchOnLine(Landroid/view/MotionEvent;)Z
    invoke-static {v8, p2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$000(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 164
    const-string v8, "###### 111111111111111111111111111"

    invoke-static {v6, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v6, v7

    .line 279
    :cond_0
    :goto_0
    return v6

    .line 167
    :pswitch_0
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelTouchDown(Landroid/view/View;)V

    .line 170
    :cond_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationChildView(Landroid/view/MotionEvent;)V
    invoke-static {v7, p2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$200(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/view/MotionEvent;)V

    .line 171
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # setter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z
    invoke-static {v7, v6}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$302(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Z)Z

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v7, v7, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v8, v8, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    float-to-int v8, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/lenovo/scg/common/utils/SCGMath;->distance2Point(IIII)I

    move-result v1

    .line 182
    .local v1, "dis2":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Circle R : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$400(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  dis: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 183
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->circleR:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$400(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v8, 0x78

    if-gt v7, v8, :cond_0

    .line 188
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # setter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z
    invoke-static {v7, v6}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$302(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Z)Z

    .line 190
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->rotationChildView(Landroid/view/MotionEvent;)V
    invoke-static {v7, p2}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$200(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Landroid/view/MotionEvent;)V

    .line 192
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getRotation()F

    move-result v0

    .line 193
    .local v0, "currentRotation":F
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getMiniRotation()F
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$600(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)F

    move-result v2

    .line 194
    .local v2, "miniRotation":F
    add-float v7, v0, v11

    div-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v2

    sub-float v3, v7, v11

    .line 196
    .local v3, "rotation":F
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 197
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-interface {v7, v8, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelBarChanging(Landroid/view/View;F)V

    .line 200
    :cond_2
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v7, v7, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->oldRotation:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 203
    .local v4, "time":J
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mPlaySoundTime:J
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$700(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    .line 204
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # setter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mPlaySoundTime:J
    invoke-static {v7, v4, v5}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$702(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;J)J

    .line 205
    invoke-static {}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->getInstance()Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/SettingSoundPlayer;->play()V

    .line 209
    .end local v4    # "time":J
    :cond_3
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iput v3, v7, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->oldRotation:F

    .line 212
    iget-object v7, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->invalidate()V

    goto/16 :goto_0

    .line 221
    .end local v0    # "currentRotation":F
    .end local v1    # "dis2":I
    .end local v2    # "miniRotation":F
    .end local v3    # "rotation":F
    :pswitch_2
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getRotation()F

    move-result v0

    .line 222
    .restart local v0    # "currentRotation":F
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getMiniRotation()F
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$600(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)F

    move-result v2

    .line 224
    .restart local v2    # "miniRotation":F
    add-float v8, v0, v11

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float v3, v8, v11

    .line 225
    .restart local v3    # "rotation":F
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v9, v9, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotX(F)V

    .line 226
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v9, v9, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotY(F)V

    .line 227
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setRotation(F)V

    .line 228
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setCurrentState(I)V

    .line 229
    const-string v8, "BigCircleSeekBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MotionEvent.ACTION_UP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v10}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getRotation()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 232
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-interface {v8, v9, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelBarChanged(Landroid/view/View;F)V

    .line 233
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    invoke-interface {v8, p1, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelTouchUp(Landroid/view/View;F)V

    .line 236
    :cond_4
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # setter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z
    invoke-static {v8, v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$302(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Z)Z

    goto/16 :goto_0

    .line 245
    .end local v0    # "currentRotation":F
    .end local v2    # "miniRotation":F
    .end local v3    # "rotation":F
    :cond_5
    const-string v8, "###### 2222222222222222222222222222222222222222222222222"

    invoke-static {v6, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 246
    const-string v8, "7777777 + not touch line 000000000000000000"

    invoke-static {v6, v8}, Lcom/lenovo/scg/loger/SCGLog;->LogI(ZLjava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    move v6, v7

    .line 279
    goto/16 :goto_0

    .line 258
    :pswitch_3
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getRotation()F

    move-result v0

    .line 259
    .restart local v0    # "currentRotation":F
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # invokes: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->getMiniRotation()F
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$600(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)F

    move-result v2

    .line 261
    .restart local v2    # "miniRotation":F
    add-float v8, v0, v11

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v2

    sub-float v3, v8, v11

    .line 262
    .restart local v3    # "rotation":F
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v9, v9, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cX:F

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotX(F)V

    .line 263
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    iget v9, v9, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->cY:F

    invoke-virtual {v8, v9}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setPivotY(F)V

    .line 264
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setRotation(F)V

    .line 265
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->setCurrentState(I)V

    .line 266
    const-string v8, "BigCircleSeekBarView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MotionEvent.ACTION_UP : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mBarView:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;
    invoke-static {v10}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$500(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$BigBarView;->getRotation()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 269
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    invoke-interface {v8, v9, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelBarChanged(Landroid/view/View;F)V

    .line 270
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # getter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->mOnBigWheelBarChangeListener:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;
    invoke-static {v8}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$100(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;

    move-result-object v8

    invoke-interface {v8, p1, v3}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$OnBigWheelBarChangeListener;->onBigWheelTouchUp(Landroid/view/View;F)V

    .line 273
    :cond_6
    iget-object v8, p0, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView$1;->this$0:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    # setter for: Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->isCanshowBlackCircle:Z
    invoke-static {v8, v7}, Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;->access$302(Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;Z)Z

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 249
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
