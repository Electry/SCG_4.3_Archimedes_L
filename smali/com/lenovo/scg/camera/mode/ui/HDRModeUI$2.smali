.class Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$2;
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
    .line 67
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

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
    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$2;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$500(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 73
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 70
    return-void
.end method
