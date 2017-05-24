.class final Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;
.super Ljava/util/HashSet;
.source "TriggerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 26
    const-string/jumbo v0, "setAutoExposureLockIfSupported"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v0, "setFocusAreasIfSupported"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-string/jumbo v0, "setMeteringAreasIfSupported"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-string/jumbo v0, "updateExposure"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;->add(Ljava/lang/Object;)Z

    .line 30
    const-string/jumbo v0, "updateFocusGroup"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
