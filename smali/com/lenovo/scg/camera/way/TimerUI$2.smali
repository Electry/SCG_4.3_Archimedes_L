.class Lcom/lenovo/scg/camera/way/TimerUI$2;
.super Ljava/lang/Object;
.source "TimerUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/way/TimerUI;->showTimerRemind(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerUI;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    iput-object p2, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$200(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 132
    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v4, 0x7f10015a

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    # setter for: Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3, v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$202(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mUIRootView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$200(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-nez v1, :cond_2

    .line 135
    const-string v1, "TimerUI"

    const-string/jumbo v2, "showTimerRemind() mRootView == null && return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    const-string v1, "TimerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTimerRemind(): hasAddTimerView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$300(Lcom/lenovo/scg/camera/way/TimerUI;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$300(Lcom/lenovo/scg/camera/way/TimerUI;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # setter for: Lcom/lenovo/scg/camera/way/TimerUI;->hasAddTimerView:Z
    invoke-static {v1, v0}, Lcom/lenovo/scg/camera/way/TimerUI;->access$302(Lcom/lenovo/scg/camera/way/TimerUI;Z)Z

    .line 141
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/lenovo/scg/camera/way/TimerUI;->creatTimerView(Landroid/content/Context;)V
    invoke-static {v1, v3}, Lcom/lenovo/scg/camera/way/TimerUI;->access$400(Lcom/lenovo/scg/camera/way/TimerUI;Landroid/content/Context;)V

    .line 142
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # invokes: Lcom/lenovo/scg/camera/way/TimerUI;->initAnimation()V
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$500(Lcom/lenovo/scg/camera/way/TimerUI;)V

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->resetTimerView()V

    .line 147
    const-string v1, "TimerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTimerRemind(): time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    sget-object v3, Lcom/lenovo/scg/camera/way/TimerUI;->TIMER_ICON_IDS:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/lenovo/scg/camera/way/TimerUI;->TIMER_ICON_IDS:[I

    iget v5, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mTimerView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/way/TimerUI;->access$000(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mAnimationSet:Landroid/view/animation/AnimationSet;
    invoke-static {v3}, Lcom/lenovo/scg/camera/way/TimerUI;->access$100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/view/animation/AnimationSet;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget v1, p0, Lcom/lenovo/scg/camera/way/TimerUI$2;->val$time:I

    if-ne v1, v0, :cond_4

    .line 156
    .local v0, "id":I
    :goto_1
    invoke-static {}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->getInstance()Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/way/SoundPlayerAssistant;->play(I)V

    goto/16 :goto_0

    .end local v0    # "id":I
    :cond_4
    move v0, v2

    .line 155
    goto :goto_1
.end method
