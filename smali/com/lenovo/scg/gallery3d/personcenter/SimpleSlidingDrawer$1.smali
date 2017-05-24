.class Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;
.super Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
.source "SimpleSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;-><init>(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v6, v4, 0xff

    .line 138
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return v2

    .line 140
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 141
    .local v9, "x":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v4

    # setter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F
    invoke-static {v4, v9}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$302(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;F)F

    .line 142
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    # setter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z
    invoke-static {v4, v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$402(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;Z)Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 146
    .end local v9    # "x":F
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$400(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 148
    .local v1, "currentX":I
    const/4 v3, 0x0

    .line 149
    .local v3, "diffX":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v0

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mOpening:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$600(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I

    move-result v0

    add-int/2addr v0, v1

    neg-int v3, v0

    .line 154
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$800(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mDurationLeft:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$700(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 152
    :cond_2
    neg-int v3, v1

    goto :goto_2

    .line 160
    .end local v1    # "currentX":I
    .end local v3    # "diffX":I
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v4

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mDraggable:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$400(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 167
    .local v7, "newX":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v4

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$300(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)F

    move-result v4

    sub-float v4, v7, v4

    neg-float v3, v4

    .line 169
    .local v3, "diffX":F
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v9

    .line 172
    .local v9, "x":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v5

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$300(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    :goto_3
    # setter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mOpening:Z
    invoke-static {v4, v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$602(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;Z)Z

    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftDragAction:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$200(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;

    move-result-object v0

    # setter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->mLastMotionX:F
    invoke-static {v0, v7}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;->access$302(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$DragAction;F)F

    .line 175
    int-to-float v0, v9

    add-float v8, v0, v3

    .line 176
    .local v8, "nextX":F
    const-string/jumbo v0, "panhui5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "next="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", diffX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    .line 178
    const-string v0, "SimpleSlidingDrawer"

    const-string/jumbo v4, "nextX > 0, scrollTo"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 193
    :goto_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$900(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->changeColor(I)V

    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mBehindOverlayView:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$900(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$AlphaView;->invalidate()V

    goto/16 :goto_0

    .end local v8    # "nextX":F
    :cond_3
    move v0, v2

    .line 172
    goto :goto_3

    .line 182
    .restart local v8    # "nextX":F
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_5

    .line 183
    const-string/jumbo v0, "panhui5"

    const-string/jumbo v4, "nextX < -mLeftBehindViewWidth"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mLeftBehindViewWidth:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$000(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_4

    .line 188
    :cond_5
    const-string/jumbo v0, "panhui5"

    const-string/jumbo v4, "nextX >= -mLeftBehindViewWidth"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer$1;->this$0:Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;

    # getter for: Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->mAboveView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;->access$500(Lcom/lenovo/scg/gallery3d/personcenter/SimpleSlidingDrawer;)Landroid/view/ViewGroup;

    move-result-object v0

    float-to-int v4, v3

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->scrollBy(II)V

    goto :goto_4

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
