.class Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;
.super Ljava/lang/Object;
.source "NightMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/lescf/LeSCFLowLightModeStub$onShotEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/NightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myOnShotEndListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/NightMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/NightMode;)V
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotEnd()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "SuperNightMode"

    const-string/jumbo v1, "onShotEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/NightMode$myOnShotEndListener;->this$0:Lcom/lenovo/scg/camera/mode/NightMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/NightMode;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->hideLoadingTips()V

    .line 582
    return-void
.end method
