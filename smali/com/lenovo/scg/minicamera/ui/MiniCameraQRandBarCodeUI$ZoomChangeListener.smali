.class Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;
.super Ljava/lang/Object;
.source "MiniCameraQRandBarCodeUI.java"

# interfaces
.implements Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;
    .param p2, "x1"    # Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$1;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;-><init>(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)V

    return-void
.end method


# virtual methods
.method public onZoomEnd()V
    .locals 2

    .prologue
    .line 748
    const-string v0, "MiniCameraQRandBarCodeUI"

    const-string/jumbo v1, "onZoomEnd!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomBar:Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$500(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraZoomBarCanver;->destoryTimerStart()V

    .line 753
    return-void
.end method

.method public onZoomStart()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mUIController:Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;
    invoke-static {v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$200(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/lenovo/scg/minicamera/ui/IMiniCameraQRandBarCodeUIController;->onZoomChanged(I)I

    move-result v1

    # setter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomValue:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$102(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;I)I

    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$300(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRenderer:Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$300(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;

    move-result-object v1

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomRatios:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$400(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI$ZoomChangeListener;->this$0:Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;

    # getter for: Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->mZoomValue:I
    invoke-static {v2}, Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;->access$100(Lcom/lenovo/scg/minicamera/ui/MiniCameraQRandBarCodeUI;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/minicamera/ui/MiniCameraZoomRenderer;->setZoomValue(I)V

    .line 734
    :cond_0
    return-void
.end method
