.class public Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;
.super Ljava/lang/Object;
.source "EffectMode.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/PhotoView$OnFilmModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/EffectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnFilmModeChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/EffectMode;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilmModeChange(Z)V
    .locals 2
    .param p1, "bIsFilm"    # Z

    .prologue
    .line 671
    if-eqz p1, :cond_2

    .line 672
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->hideEffectWindow()V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 676
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # invokes: Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$1000(Lcom/lenovo/scg/camera/mode/EffectMode;)V

    .line 684
    :cond_1
    :goto_0
    return-void

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->showEffectWindow()V

    .line 680
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->getCameraScreenNail()Lcom/lenovo/scg/camera/CameraScreenNail;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/CameraScreenNail;->SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    .line 681
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$OnFilmModeChangeHandler;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;->LockBothScreen:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    # invokes: Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$1100(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    goto :goto_0
.end method
