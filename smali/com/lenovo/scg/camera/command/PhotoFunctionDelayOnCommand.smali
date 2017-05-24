.class public Lcom/lenovo/scg/camera/command/PhotoFunctionDelayOnCommand;
.super Ljava/lang/Object;
.source "PhotoFunctionDelayOnCommand.java"

# interfaces
.implements Lcom/lenovo/scg/camera/command/Command;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->getInstance()Lcom/lenovo/scg/camera/way/CaptureWayManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/way/CaptureWayManager;->set3sDelayOn(Z)V

    .line 16
    return-void
.end method
