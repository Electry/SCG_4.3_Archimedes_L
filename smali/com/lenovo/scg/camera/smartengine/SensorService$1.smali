.class Lcom/lenovo/scg/camera/smartengine/SensorService$1;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/smartengine/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/smartengine/SensorService;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 265
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 203
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 204
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 206
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-virtual {v1, v7}, Lcom/lenovo/scg/camera/smartengine/SensorService;->setGSensorChangedFlag(Z)V

    .line 211
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v2

    aget v2, v2, v6

    aput v2, v1, v9

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v2

    aget v2, v2, v7

    aput v2, v1, v10

    .line 213
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v3

    aget v3, v3, v8

    aput v3, v1, v2

    .line 214
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 215
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 216
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->gSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$300(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    aput v2, v1, v8

    goto :goto_0

    .line 223
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v2

    aget v2, v2, v6

    aput v2, v1, v9

    .line 224
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v2

    aget v2, v2, v7

    aput v2, v1, v10

    .line 225
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v3}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v3

    aget v3, v3, v8

    aput v3, v1, v2

    .line 226
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 228
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->oSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$400(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    aput v2, v1, v8

    goto/16 :goto_0

    .line 235
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    # setter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->lSensorData:F
    invoke-static {v1, v2}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$502(Lcom/lenovo/scg/camera/smartengine/SensorService;F)F

    goto/16 :goto_0

    .line 240
    :sswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorStatus:J

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-wide v2, v2, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorStatus:J

    iget-object v4, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-wide v4, v4, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorSaveStatus:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorChangeStatus:J

    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-object v2, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-wide v2, v2, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorStatus:J

    iput-wide v2, v1, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorSaveStatus:J

    .line 243
    const-string/jumbo v1, "sensorlogRGB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sensorChangeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    iget-wide v4, v3, Lcom/lenovo/scg/camera/smartengine/SensorService;->sensorChangeStatus:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    aput v2, v1, v6

    .line 245
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    aput v2, v1, v7

    .line 246
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    aput v2, v1, v8

    .line 247
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    aput v2, v1, v9

    .line 248
    iget-object v1, p0, Lcom/lenovo/scg/camera/smartengine/SensorService$1;->this$0:Lcom/lenovo/scg/camera/smartengine/SensorService;

    # getter for: Lcom/lenovo/scg/camera/smartengine/SensorService;->fRGBSensorData:[F
    invoke-static {v1}, Lcom/lenovo/scg/camera/smartengine/SensorService;->access$600(Lcom/lenovo/scg/camera/smartengine/SensorService;)[F

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v10

    aput v2, v1, v10

    goto/16 :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x1fa2645 -> :sswitch_3
    .end sparse-switch
.end method
