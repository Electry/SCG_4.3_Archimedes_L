.class Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;
.super Ljava/lang/Object;
.source "StrobeModeSelect.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->startAnimation(Landroid/view/View;)V
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
    .line 90
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "StrobeModeSelect :: Anim"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->TAG:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->val$v:Landroid/view/View;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->mAttachViewWhenStart:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 13
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v12, 0x11

    const/4 v11, 0x0

    const/4 v10, 0x4

    .line 116
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onAnimationEnd"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->mAttachViewWhenStart:Landroid/view/View;

    const v9, 0x7f100976

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "container":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 121
    .local v3, "l":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 122
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 123
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 124
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const v8, 0x7f100977

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "bg":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 129
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 131
    .local v4, "l_bg":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleROut:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$000(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 133
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const v8, 0x7f100978

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, "img":Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    .local v5, "l_img":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$100(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 142
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->this$0:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->mCircleRIn:I
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->access$100(Lcom/lenovo/scg/camera/mode/StrobeModeSelect;)I

    move-result v8

    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 143
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    check-cast v8, Landroid/view/View;

    const v9, 0x7f100974

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 148
    .local v6, "lefthand":Landroid/view/View;
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->mAttachViewWhenStart:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    check-cast v8, Landroid/view/View;

    const v9, 0x7f100975

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 151
    .local v7, "righthand":Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 99
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onAnimationStart"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeModeSelect$1;->mAttachViewWhenStart:Landroid/view/View;

    const v4, 0x7f100976

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "container":Landroid/view/View;
    const v3, 0x7f100977

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "bg":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    const v3, 0x7f100978

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "img":Landroid/view/View;
    check-cast v2, Lcom/lenovo/scg/camera/ui/RoundImageView;

    .end local v2    # "img":Landroid/view/View;
    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RoundImageView;->setTargetResouce()V

    .line 105
    return-void
.end method
