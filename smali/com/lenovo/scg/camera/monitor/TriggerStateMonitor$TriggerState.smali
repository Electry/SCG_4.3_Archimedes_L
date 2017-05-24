.class final enum Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;
.super Ljava/lang/Enum;
.source "TriggerStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TriggerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum IN_ON_AUTO_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum IN_ON_AUTO_FOCUS_MOVING:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum IN_ON_CAMERA_SHUTTER_CLICK:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum IN_ON_SHUTTER_BUTTON_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum IN_ON_SINGLE_TAP_UP:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

.field public static final enum NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "IN_ON_SINGLE_TAP_UP"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SINGLE_TAP_UP:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "IN_ON_CAMERA_SHUTTER_CLICK"

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_CAMERA_SHUTTER_CLICK:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "IN_ON_SHUTTER_BUTTON_FOCUS"

    invoke-direct {v0, v1, v6}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SHUTTER_BUTTON_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "IN_ON_AUTO_FOCUS"

    invoke-direct {v0, v1, v7}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    new-instance v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    const-string v1, "IN_ON_AUTO_FOCUS_MOVING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS_MOVING:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->NONE:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SINGLE_TAP_UP:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_CAMERA_SHUTTER_CLICK:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_SHUTTER_BUTTON_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->IN_ON_AUTO_FOCUS_MOVING:Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->$VALUES:[Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->$VALUES:[Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    invoke-virtual {v0}, [Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/camera/monitor/TriggerStateMonitor$TriggerState;

    return-object v0
.end method
