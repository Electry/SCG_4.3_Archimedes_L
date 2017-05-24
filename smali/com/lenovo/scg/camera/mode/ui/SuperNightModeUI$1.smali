.class Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;
.super Ljava/lang/Object;
.source "SuperNightModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->onFinishInflate()V
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
    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    const-string v0, "SuperNightModeUI"

    const-string v1, "kbg374, on click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mSuperNightMode:Lcom/lenovo/scg/camera/mode/NightMode;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Lcom/lenovo/scg/camera/mode/NightMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewDeNoiseSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewBrightnessSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/NightMode;->setPreviewParam(II)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mSuperNightMode:Lcom/lenovo/scg/camera/mode/NightMode;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Lcom/lenovo/scg/camera/mode/NightMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicBrightnessSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SHARPNESS_VALUES:[I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSharpnessSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->SATURATION_VALUES:[I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$600(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicSaturationSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$700(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->CONTRAST_VALUES:[I
    invoke-static {v4}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$800(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicContrastSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$900(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicDeNoiseSeekBar:Landroid/widget/SeekBar;
    invoke-static {v5}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1000(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->EV_VALUES:[I
    invoke-static {v6}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1100(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)[I

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicEvSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1200(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    aget v6, v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mTakePicNumSeekBar:Landroid/widget/SeekBar;
    invoke-static {v7}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1300(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->ISO_VALUES:Ljava/util/List;
    invoke-static {v8}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1500(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->mPreviewISOSeekBar:Landroid/widget/SeekBar;
    invoke-static {v9}, Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;->access$1400(Lcom/lenovo/scg/camera/mode/ui/SuperNightModeUI;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "auto"

    invoke-virtual/range {v0 .. v9}, Lcom/lenovo/scg/camera/mode/NightMode;->setTakePicParam(IIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
