.class Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;
.super Ljava/lang/Object;
.source "HDRModeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mHdrMode:Lcom/lenovo/scg/camera/mode/HDRMode;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$400(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Lcom/lenovo/scg/camera/mode/HDRMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mToneSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mBrightnessSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$100(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mMinBrightness:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$200(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->mSaturationSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;->access$300(Lcom/lenovo/scg/camera/mode/ui/HDRModeUI;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/mode/HDRMode;->setDevelopParam(III)V

    .line 59
    return-void
.end method
