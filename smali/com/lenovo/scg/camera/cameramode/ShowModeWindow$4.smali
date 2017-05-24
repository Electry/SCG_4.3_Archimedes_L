.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initAutoProButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->hideGaussBlur2DBitmap()V

    .line 671
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V

    .line 678
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startChangeFuncAnim()V

    goto :goto_0
.end method

.method public onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 8
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const v3, 0x7f090237

    const/4 v7, 0x1

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mWindowMode:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1700(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v0

    if-nez v0, :cond_2

    .line 627
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1800(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1502(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dGridImage;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 629
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v1, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f090238

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 631
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    const v1, 0x7f020388

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 633
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 636
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 638
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v2, 0x7f090239

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023a

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 665
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    .line 666
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 642
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023b

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023c

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto :goto_0

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mLe3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    # setter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1602(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dGridImage;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    .line 648
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v1, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f090238

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setSize(FF)V

    .line 650
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    const v1, 0x7f02038c

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setBitmap(IILjava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenter(I)V

    .line 652
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v1

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 655
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v0

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 657
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v2, 0x7f090239

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023a

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto/16 :goto_0

    .line 660
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 661
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mScreenWidth:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$2200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023b

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    const v3, 0x7f09023c

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getDimenValue(I)F
    invoke-static {v2, v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    goto/16 :goto_0
.end method

.method public onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mAutoButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1500(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mProButtonHiView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1600(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$4;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->requestRender()V

    .line 622
    return-void
.end method
