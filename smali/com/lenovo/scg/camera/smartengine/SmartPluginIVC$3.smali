.class Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;
.super Ljava/lang/Object;
.source "SmartPluginIVC.java"

# interfaces
.implements Lledroid/nac/ShellCommand$ShellCommandResponseEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->enableRGBSensor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final RGBSENSOR_ENABLE:Ljava/lang/String; = "green.red.blue"


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellCommandResponse(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmdId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRGBSensor onShellCommandResponse cmdId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reply:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    const-string v1, "green.red.blue"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->access$002(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;Z)Z

    .line 522
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRGBSensor onShellCommandResponse m_bRGBSensorEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC$3;->this$0:Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->m_bRGBSensorEnable:Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->access$000(Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    return-void
.end method

.method public onShellCommandResponseFinished(I)V
    .locals 3
    .param p1, "exeId"    # I

    .prologue
    .line 533
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRGBSensor onShellCommandResponseFinished exeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method

.method public onShellCommandResponseStarted(I)V
    .locals 3
    .param p1, "exeId"    # I

    .prologue
    .line 528
    const-string v0, "[smart_app]SmartPluginIVC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRGBSensor onShellCommandResponseStarted exeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method
