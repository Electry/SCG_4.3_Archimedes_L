.class Lcom/lenovo/scg/camera/mode/StrobeMode$5;
.super Ljava/lang/Object;
.source "StrobeMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/StrobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 756
    const-string v3, "StrobeMode"

    const-string/jumbo v4, "onFadeClick"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    if-eqz p1, :cond_2

    .line 761
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 762
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1802(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z

    .line 763
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getButtonFade()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0203cc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 764
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getButtonFade()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 781
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    iget v3, v3, Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArraylength:I

    if-ge v0, v3, :cond_7

    .line 782
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1800(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 783
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    aget v3, v3, v0

    if-lez v3, :cond_3

    .line 784
    add-int/lit8 v1, v1, 0x1

    .line 785
    if-ne v1, v5, :cond_5

    .line 788
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    aput v6, v3, v0

    .line 789
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findSelectViewWithTag(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0203bd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 781
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 766
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsFade:Z
    invoke-static {v3, v5}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1802(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z

    .line 767
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getButtonFade()Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x7f0203c8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->getButtonFade()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    .line 791
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    rsub-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v4, v4, 0x100

    div-int/lit8 v4, v4, 0xa

    aput v4, v3, v0

    goto :goto_3

    .line 795
    :cond_6
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    aget v3, v3, v0

    if-lez v3, :cond_3

    .line 796
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    aput v6, v3, v0

    .line 797
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->findSelectViewWithTag(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0203be

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 802
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 803
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xe

    iput v3, v2, Landroid/os/Message;->what:I

    .line 804
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mAreaAlphaArray:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$000(Lcom/lenovo/scg/camera/mode/StrobeMode;)[I

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 805
    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$5;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mStrobePhotoEngineThreadHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$200(Lcom/lenovo/scg/camera/mode/StrobeMode;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
