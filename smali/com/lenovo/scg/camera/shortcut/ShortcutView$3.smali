.class Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;
.super Ljava/lang/Object;
.source "ShortcutView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/ShortcutView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 793
    const-string v2, "ShortcutView"

    const-string v3, "mFadeOutAnimation end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v1, 0x0

    .line 795
    .local v1, "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    check-cast v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;

    .line 797
    .restart local v1    # "info":Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;
    const-string v2, "ShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info.name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v2, v1, Lcom/lenovo/scg/camera/shortcut/ShortcutView$ShortcutInfo;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 800
    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutView$3;->this$0:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/ShortcutView;->mShortcutItem:[Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->access$400(Lcom/lenovo/scg/camera/shortcut/ShortcutView;)[Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 795
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 789
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 785
    return-void
.end method
