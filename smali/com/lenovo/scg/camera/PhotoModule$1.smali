.class Lcom/lenovo/scg/camera/PhotoModule$1;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Lcom/lenovo/scg/camera/mode/CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public capture(Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mPaused:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$000(Lcom/lenovo/scg/camera/PhotoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const-string v0, "mCaptureListener: has Paused && return"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->isAllowWayCapture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    const-string v0, "mCaptureListener: !isAllowWayCapture() && return"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    iget-boolean v0, v0, Lcom/lenovo/scg/camera/CameraActivity;->mShowCameraAppView:Z

    if-nez v0, :cond_2

    .line 466
    new-array v0, v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    .line 467
    const-string v0, "mCaptureListener: !mShowCameraAppView() && return"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZZ)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mCaptureWayManager:Lcom/lenovo/scg/camera/way/CaptureWayManager;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->setAllowWayCapture(ZI)V

    .line 477
    invoke-static {}, Lcom/lenovo/scg/camera/way/Prompter;->getInstance()Lcom/lenovo/scg/camera/way/Prompter;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v1, v1, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/Prompter;->setContext(Landroid/app/Activity;)V

    .line 478
    invoke-static {}, Lcom/lenovo/scg/camera/way/Prompter;->getInstance()Lcom/lenovo/scg/camera/way/Prompter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/way/Prompter;->prompt(Ljava/lang/String;)V

    .line 481
    const-string v0, "CAM_PhotoModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureListener:tack picture --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$1;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->onCameraShutterClick()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$200(Lcom/lenovo/scg/camera/PhotoModule;)V

    goto :goto_0
.end method
