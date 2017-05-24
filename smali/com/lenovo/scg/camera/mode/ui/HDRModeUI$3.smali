.class Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;
.super Ljava/lang/Object;
.source "HDRModeUI.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

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
    .line 90
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$600(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$3;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMinBrightness:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 84
    return-void
.end method
