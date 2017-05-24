.class Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;
.super Ljava/lang/Object;
.source "ShowModeWindow.java"

# interfaces
.implements Lcom/lenovo/scg/common/le3d/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->initModeView(Lcom/lenovo/scg/camera/cameramode/CameraMode;IZ)V
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
    .line 335
    iput-object p1, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const/4 v1, 0x0

    .line 369
    const-string v0, "ShowModeWindow.onClick"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mCameraModeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$400(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # invokes: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->getControllerProxy()Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1300(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeControllerProxy;->finishGaussExt()V

    .line 376
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->startEnterModeAnimation(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    throw v0
.end method

.method public onPressDown(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 6
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 345
    instance-of v3, p1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    if-eqz v3, :cond_0

    .line 346
    check-cast p1, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .end local p1    # "view":Lcom/lenovo/scg/common/le3d/Le3dView;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getViewByIndex(I)Lcom/lenovo/scg/common/le3d/Le3dView;

    move-result-object v2

    .line 347
    .local v2, "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterXInScreen()F

    move-result v0

    .line 349
    .local v0, "centerXInScreen":F
    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/Le3dView;->getCenterYInScreen()F

    move-result v1

    .line 350
    .local v1, "centerYInScreen":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mOrientation:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1000(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 352
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 353
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getCenterYInScreen()F

    move-result v3

    add-float/2addr v1, v3

    .line 360
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setCenterPointInScreen(FF)V

    .line 361
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 362
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->requestRender()V

    .line 365
    .end local v0    # "centerXInScreen":F
    .end local v1    # "centerYInScreen":F
    .end local v2    # "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_0
    return-void

    .line 355
    .restart local v0    # "centerXInScreen":F
    .restart local v1    # "centerYInScreen":F
    .restart local v2    # "image":Lcom/lenovo/scg/common/le3d/Le3dView;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setRotateZ(F)V

    .line 356
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mChildTextBgHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1100(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float/2addr v0, v3

    .line 357
    iget-object v3, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mModeContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;
    invoke-static {v3}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$1200(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->getCenterXInScreen()F

    move-result v3

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public onPressUp(Lcom/lenovo/scg/common/le3d/Le3dView;)V
    .locals 2
    .param p1, "view"    # Lcom/lenovo/scg/common/le3d/Le3dView;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->setVisible(Z)V

    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow$2;->this$0:Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;

    # getter for: Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->mHiModeView:Lcom/lenovo/scg/common/le3d/Le3dGridImage;
    invoke-static {v0}, Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;->access$900(Lcom/lenovo/scg/camera/cameramode/ShowModeWindow;)Lcom/lenovo/scg/common/le3d/Le3dGridImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dGridImage;->requestRender()V

    .line 341
    return-void
.end method
