.class Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;
.super Ljava/util/TimerTask;
.source "SensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/smartengine/SensorService;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/smartengine/SensorService;Lcom/lenovo/scg/camera/smartengine/SensorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/smartengine/SensorService;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/smartengine/SensorService$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;-><init>(Lcom/lenovo/scg/camera/smartengine/SensorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->isBackRGBSensorSupport:Z
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$100(Lcom/lenovo/scg/camera/smartengine/SensorService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const-string v1, "[smart_app]SensorService"

    const-string v2, "MyTimerTask mTimer cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$200(Lcom/lenovo/scg/camera/smartengine/SensorService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 139
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$MyTimerTask;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    const/4 v2, 0x0

    # setter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->mTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$202(Lcom/lenovo/scg/camera/smartengine/SensorService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v1, "[smart_app]SensorService"

    const-string v2, "MyTimerTask readBackRGB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/ExSensorData;->readBackRGB()[I

    move-result-object v0

    .line 145
    .local v0, "backRgb":[I
    const-string v1, "[smart_app]SensorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyTimerTask readBackRGB end, backRgb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
