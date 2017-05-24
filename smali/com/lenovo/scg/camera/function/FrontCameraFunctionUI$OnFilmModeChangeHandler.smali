.class public Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;
.super Ljava/lang/Object;
.source "FrontCameraFunctionUI.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnFilmModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmModeChange(Z)V
    .locals 4
    .param p1, "bIsFilm"    # Z

    .prologue
    .line 502
    const-string v1, "FrontCameraFunctionUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFilmModeChange, bIsFilm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontView:Lcom/lenovo/scg/camera/front/FrontView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$000(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/front/FrontView;->setIsFilmMode(Z)V

    .line 506
    :cond_0
    if-eqz p1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontWindow;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontWindow;->setVisibility(I)V

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 512
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v0, v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 513
    .local v0, "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->unlockScreenRotation()V

    .line 525
    .end local v0    # "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    :cond_2
    :goto_0
    return-void

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mFrontWindow:Lcom/lenovo/scg/camera/front/FrontWindow;
    invoke-static {v1}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->access$100(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)Lcom/lenovo/scg/camera/front/FrontWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/front/FrontWindow;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v1, v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getmCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 520
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v0, v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    .line 521
    .restart local v0    # "p":Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockVerticalScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    goto :goto_0
.end method
