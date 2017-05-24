.class Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;
.super Ljava/lang/Object;
.source "SuperNightModeUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 256
    const-string v0, "SuperNightModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kbg374, seek bar, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    return-void

    .line 259
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1600(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1700(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9884\u89c8\u53bb\u566a\u7a0b\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1800(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u9884\u89c8\u4eae\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1900(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u4eae\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    :pswitch_5
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u53bb\u566a\u7a0b\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 275
    :pswitch_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u9510\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 278
    :pswitch_7
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u9971\u548c\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$600(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 281
    :pswitch_8
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u5bf9\u6bd4\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$800(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 284
    :pswitch_9
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u66dd\u5149\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v2

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 287
    :pswitch_a
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$2500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u62cd\u7167\u5f20\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x7f1002b3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 253
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 250
    return-void
.end method
