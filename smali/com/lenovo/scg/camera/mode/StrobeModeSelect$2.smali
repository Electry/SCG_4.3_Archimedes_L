.class Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;
.super Ljava/lang/Object;
.source "StrobeModeSelect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->reverseAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAttachViewWhenStart:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const-string v0, "StrobeModeSelect :: AnimReverse"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->TAG:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->val$v:Landroid/view/View;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x4

    .line 187
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onAnimationEnd"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    const v7, 0x7f100976

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .local v3, "l":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 193
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 194
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 195
    const/4 v6, 0x1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 196
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const v6, 0x7f100977

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "bg":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 200
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    .local v4, "l_bg":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 203
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 204
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v6, 0x7f100978

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "img":Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    .local v5, "l_img":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$100(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 213
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$100(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 214
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 215
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v2

    .line 216
    check-cast v6, Lcom/lenovo/scg/camera/ui/RoundImageView;

    invoke-virtual {v6}, Lcom/lenovo/scg/camera/ui/RoundImageView;->setDefaultResouce()V

    .line 217
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onAnimationStart"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    const v3, 0x7f100974

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "lefthand":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "v.getTag() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->val$v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    const v3, 0x7f100975

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    .local v1, "righthand":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$2;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mPointNumber:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$200(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    .line 175
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_1
    return-void
.end method
