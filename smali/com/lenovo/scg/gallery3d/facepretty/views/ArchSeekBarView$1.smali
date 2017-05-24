.class Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;
.super Ljava/lang/Object;
.source "ArchSeekBarView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->bindSeekbar(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

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
    .line 62
    const-string v0, "SeekBarHor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v0

    int-to-float v1, p2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnRotationChanged(F)V

    .line 64
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 57
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$1;->this$0:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;

    # getter for: Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->onRotationChangeListener:Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;->access$000(Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView;)Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/facepretty/views/ArchSeekBarView$OnRotationChangeListener;->OnRotationChangeFinished(F)V

    .line 51
    return-void
.end method
