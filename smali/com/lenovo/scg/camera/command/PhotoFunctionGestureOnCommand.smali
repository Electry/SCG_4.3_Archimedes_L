.class public Lcom/lenovo/scg/camera/command/PhotoFunctionGestureOnCommand;
.super Ljava/lang/Object;
.source "PhotoFunctionGestureOnCommand.java"

# interfaces
.implements Lcom/lenovo/scg/camera/command/Command;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getMapWay2Status()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->VSIGN:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getMapWay2Status()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;->WAVE:Lcom/lenovo/scg/camera/way/CaptureWayFactory$WAY;

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->onWayStatusChanged()V

    .line 19
    return-void
.end method
