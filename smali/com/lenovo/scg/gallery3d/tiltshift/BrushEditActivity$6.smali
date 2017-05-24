.class Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$6;
.super Ljava/lang/Object;
.source "BrushEditActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity$6;->this$0:Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->mInkView:Lcn/jingling/sdkdemo/widgets/InkCanvas;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;->access$800(Lcom/lenovo/scg/gallery3d/tiltshift/BrushEditActivity;)Lcn/jingling/sdkdemo/widgets/InkCanvas;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/jingling/sdkdemo/widgets/InkCanvas;->setPenWidth(I)V

    .line 327
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 322
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 318
    return-void
.end method
