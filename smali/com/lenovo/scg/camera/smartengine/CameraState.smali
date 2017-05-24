.class public Lcom/lenovo/scg/camera/smartengine/CameraState;
.super Ljava/lang/Object;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/smartengine/CameraState$Focus;,
        Lcom/lenovo/scg/camera/smartengine/CameraState$Snap;
    }
.end annotation


# static fields
.field private static instance:Lcom/lenovo/scg/camera/smartengine/CameraState;


# instance fields
.field private currentFPS:J

.field private focusState:I

.field private isSetFPS:Z

.field private snapState:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->currentFPS:J

    .line 8
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->isSetFPS:Z

    .line 13
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->focusState:I

    .line 14
    iput v2, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->snapState:I

    .line 15
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/smartengine/CameraState;
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/lenovo/scg/camera/smartengine/CameraState;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/CameraState;->instance:Lcom/lenovo/scg/camera/smartengine/CameraState;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lenovo/scg/camera/smartengine/CameraState;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/smartengine/CameraState;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/smartengine/CameraState;->instance:Lcom/lenovo/scg/camera/smartengine/CameraState;

    .line 20
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/smartengine/CameraState;->instance:Lcom/lenovo/scg/camera/smartengine/CameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentFPS()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->currentFPS:J

    return-wide v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->focusState:I

    return v0
.end method

.method public getSnapState()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->snapState:I

    return v0
.end method

.method public isSetFPS()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->isSetFPS:Z

    return v0
.end method

.method public setFPS(J)V
    .locals 3
    .param p1, "fps"    # J

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 40
    iput-wide p1, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->currentFPS:J

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->isSetFPS:Z

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->isSetFPS:Z

    goto :goto_0
.end method

.method public setFocusState(I)V
    .locals 0
    .param p1, "focusState"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->focusState:I

    .line 28
    return-void
.end method

.method public setSnapState(I)V
    .locals 0
    .param p1, "snapState"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/scg/camera/smartengine/CameraState;->snapState:I

    .line 34
    return-void
.end method
