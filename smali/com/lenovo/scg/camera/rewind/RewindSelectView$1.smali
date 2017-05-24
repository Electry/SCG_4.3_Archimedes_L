.class Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;
.super Ljava/lang/Object;
.source "RewindSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/rewind/RewindSelectView;->initItem(Lcom/lenovo/scg/camera/rewind/RewindSelectView$SelectItem;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/rewind/RewindSelectView;I)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    iput p2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0202ab

    const/4 v1, 0x1

    const v5, 0x7f100846

    .line 140
    const-string v0, "REwindSelectView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ontouch evnet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 144
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0202ac

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 147
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 153
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/lenovo/scg/common/utils/SCGMath;->distance2Point(IIII)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_5

    .line 155
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/graphics/Point;->x:I

    move v0, v1

    .line 160
    goto/16 :goto_0

    .line 163
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mDownPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$000(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mIsInAnim:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$200(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOnViewClickListener:Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$300(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # setter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$102(Lcom/lenovo/scg/camera/rewind/RewindSelectView;Landroid/view/View;)Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mFocusView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$100(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->this$0:Lcom/lenovo/scg/camera/rewind/RewindSelectView;

    # getter for: Lcom/lenovo/scg/camera/rewind/RewindSelectView;->mOnViewClickListener:Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;
    invoke-static {v0}, Lcom/lenovo/scg/camera/rewind/RewindSelectView;->access$300(Lcom/lenovo/scg/camera/rewind/RewindSelectView;)Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;

    move-result-object v0

    iget v2, p0, Lcom/lenovo/scg/camera/rewind/RewindSelectView$1;->val$index:I

    invoke-interface {v0, v2}, Lcom/lenovo/scg/camera/rewind/RewindSelectView$OnViewClickListener;->onViewClick(I)V

    move v0, v1

    .line 170
    goto/16 :goto_0

    .line 173
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
