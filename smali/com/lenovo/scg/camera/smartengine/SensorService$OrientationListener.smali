.class Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;
.super Landroid/view/OrientationEventListener;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/smartengine/SensorService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    .line 269
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 270
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "ori"    # I

    .prologue
    .line 273
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$OrientationListener;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$700(Lcom/lenovo/scg/camera/smartengine/SensorService;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/lenovo/scg/camera/smartengine/IVCGLLib;->roundOrientation(II)I

    move-result v1

    # setter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->orientation:I
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$702(Lcom/lenovo/scg/camera/smartengine/SensorService;I)I

    goto :goto_0
.end method
