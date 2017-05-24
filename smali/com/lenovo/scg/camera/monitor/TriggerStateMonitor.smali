.class public Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
.super Ljava/lang/Object;
.source "TriggerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;
    }
.end annotation


# static fields
.field private static mPermissionFunction:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mPermissionFunction:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    return-void
.end method


# virtual methods
.method public havePermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mPermissionFunction:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOnAutoFocus()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOnAutoFocusMoving()Z
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS_MOVING:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOnCameraShutterClick()Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_CAMERA_SHUTTER_CLICK:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOnShutterButtonFocus()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SHUTTER_BUTTON_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInOnSingleTapUp()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SINGLE_TAP_UP:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printTriggerState()V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTriggerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public recordEnterOnAutoFocus()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 64
    return-void
.end method

.method public recordEnterOnAutoFocusMoving()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS_MOVING:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 72
    return-void
.end method

.method public recordEnterOnCameraShutterClick()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_CAMERA_SHUTTER_CLICK:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 48
    return-void
.end method

.method public recordEnterOnShutterButtonFocus()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SHUTTER_BUTTON_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 56
    return-void
.end method

.method public recordEnterOnSingleTapUp()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SINGLE_TAP_UP:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 40
    return-void
.end method

.method public recordExitOnAutoFocus()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 68
    return-void
.end method

.method public recordExitOnAutoFocusMoving()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 76
    return-void
.end method

.method public recordExitOnCameraShutterClick()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 52
    return-void
.end method

.method public recordExitOnShutterButtonFocus()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 60
    return-void
.end method

.method public recordExitOnSingleTapUp()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    iput-object v0, p0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;->mTriggerState:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 44
    return-void
.end method
