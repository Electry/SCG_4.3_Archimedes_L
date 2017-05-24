.class Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;
.super Landroid/os/Handler;
.source "GestrueAssistantForAeAfLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x5

    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_LONG_PRESS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$100(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v3, v4, :cond_2

    .line 62
    :cond_1
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_LONG_PRESS : Touch in Ae || touch in AF && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 67
    .local v1, "x":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 69
    .local v2, "y":I
    const-string v3, "GestrueAssistantForAeAfLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(): MSG_IS_LONG_PRESS: x = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v3, "GestrueAssistantForAeAfLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(): MSG_IS_LONG_PRESS: y = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$300(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v6, :cond_3

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$400(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_4

    .line 74
    :cond_3
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_LONG_PRESS: moved && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 78
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # invokes: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->isEnableByMode()Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$500(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 79
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_LONG_PRESS: !isEnableByMode() && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 83
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$100(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onAeAfLock(II)V

    goto/16 :goto_0

    .line 88
    .end local v1    # "x":I
    .end local v2    # "y":I
    :pswitch_1
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_POINT_TAP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$100(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # invokes: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->isEnableByMode()Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$500(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 92
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_POINT_TAP: !isEnableByMode() && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v3, v4, :cond_8

    .line 99
    :cond_7
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_POINT_TAP: mState == AEAF_DIFFER_LOCKED && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    .line 107
    .local v0, "mPos":Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;
    iget v3, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x1:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$300(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v6, :cond_9

    iget v3, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y1:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$400(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v6, :cond_9

    iget v3, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x2:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$600(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v6, :cond_9

    iget v3, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y2:I

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$700(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_a

    .line 109
    :cond_9
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "handleMessage(): MSG_IS_POINT_TAP: moved && return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_a
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    iget v4, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x1:I

    # setter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$302(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I

    .line 114
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    iget v4, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x2:I

    # setter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$602(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I

    .line 115
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    iget v4, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y1:I

    # setter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$402(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I

    .line 116
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    iget v4, v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y2:I

    # setter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$702(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I

    .line 118
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # invokes: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->validPos()V
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$800(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)V

    .line 119
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$100(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$300(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$400(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$600(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;->this$0:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    # getter for: Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I
    invoke-static {v7}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->access$700(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I

    move-result v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onAeAfDifferLock(IIII)V

    goto/16 :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
