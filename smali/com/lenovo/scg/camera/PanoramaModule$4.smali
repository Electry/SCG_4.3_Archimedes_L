.class Lcom/lenovo/scg/camera/PanoramaModule$4;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PanoramaModule;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PanoramaModule;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .param p1, "isFinished"    # Z
    .param p2, "panningRateX"    # F
    .param p3, "panningRateY"    # F
    .param p4, "progressX"    # F
    .param p5, "progressY"    # F

    .prologue
    const/high16 v5, 0x43200000    # 160.0f

    .line 609
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2300(Lcom/lenovo/scg/camera/PanoramaModule;)F

    move-result v4

    mul-float v0, p4, v4

    .line 610
    .local v0, "accumulatedHorizontalAngle":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2400(Lcom/lenovo/scg/camera/PanoramaModule;)F

    move-result v4

    mul-float v1, p5, v4

    .line 611
    .local v1, "accumulatedVerticalAngle":F
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 612
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    const/4 v5, 0x0

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->stopCapture(Z)V
    invoke-static {v4, v5}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2500(Lcom/lenovo/scg/camera/PanoramaModule;Z)V

    .line 618
    :goto_0
    return-void

    .line 614
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mHorizontalViewAngle:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2300(Lcom/lenovo/scg/camera/PanoramaModule;)F

    move-result v4

    mul-float v2, p2, v4

    .line 615
    .local v2, "panningRateXInDegree":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # getter for: Lcom/lenovo/scg/camera/PanoramaModule;->mVerticalViewAngle:F
    invoke-static {v4}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2400(Lcom/lenovo/scg/camera/PanoramaModule;)F

    move-result v4

    mul-float v3, p3, v4

    .line 616
    .local v3, "panningRateYInDegree":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/PanoramaModule$4;->this$0:Lcom/lenovo/scg/camera/PanoramaModule;

    # invokes: Lcom/lenovo/scg/camera/PanoramaModule;->updateProgress(FFFF)V
    invoke-static {v4, v2, v3, v0, v1}, Lcom/lenovo/scg/camera/PanoramaModule;->access$2600(Lcom/lenovo/scg/camera/PanoramaModule;FFFF)V

    goto :goto_0
.end method
