.class Lcom/lenovo/scg/camera/way/TimerUI$4;
.super Ljava/lang/Object;
.source "TimerUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/way/TimerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/way/TimerUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/way/TimerUI;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 519
    const/4 v3, 0x5

    .line 520
    .local v3, "timer":I
    const v1, 0x7f0203ea

    .line 521
    .local v1, "s3Img":I
    const v2, 0x7f0203ec

    .line 522
    .local v2, "s5Img":I
    const v0, 0x7f0203e8

    .line 523
    .local v0, "s10Img":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$700(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 524
    const-string v4, "TimerUI"

    const-string/jumbo v5, "onClick() : 3s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v3, 0x3

    .line 526
    const v1, 0x7f0203eb

    .line 536
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView3s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$700(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 537
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$800(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 538
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$900(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 539
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$1000(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 540
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mLevelListener:Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$1000(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/lenovo/scg/camera/way/TimerUI$TimerLevelChangeListener;->setLevel(I)V

    .line 541
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$1100(Lcom/lenovo/scg/camera/way/TimerUI;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "timer_level_key"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 543
    :cond_1
    return-void

    .line 527
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView5s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$800(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    const-string v4, "TimerUI"

    const-string/jumbo v5, "onClick() : 5s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v3, 0x5

    .line 530
    const v2, 0x7f0203ed

    goto :goto_0

    .line 531
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/camera/way/TimerUI$4;->this$0:Lcom/lenovo/scg/camera/way/TimerUI;

    # getter for: Lcom/lenovo/scg/camera/way/TimerUI;->mView10s:Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-static {v4}, Lcom/lenovo/scg/camera/way/TimerUI;->access$900(Lcom/lenovo/scg/camera/way/TimerUI;)Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 532
    const-string v4, "TimerUI"

    const-string/jumbo v5, "onClick() : 10s"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v3, 0xa

    .line 534
    const v0, 0x7f0203e9

    goto :goto_0
.end method
