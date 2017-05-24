.class Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;
.super Ljava/lang/Object;
.source "HDRMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFHdrModeStub$onShotEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/HDRMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myOnShotEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/HDRMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/HDRMode;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotEnd()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "HDRMode"

    const-string/jumbo v1, "onShotEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/HDRMode$myOnShotEndListener;->this$0:Lcom/lenovo/scg/camera/mode/HDRMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/HDRMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->hideLoadingTips()V

    .line 453
    return-void
.end method
