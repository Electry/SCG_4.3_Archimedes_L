.class Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;
.super Ljava/lang/Object;
.source "EyePosition.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/EyePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/EyePosition;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/app/EyePosition;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/app/EyePosition;Lcom/lenovo/scg/gallery3d/app/EyePosition$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/app/EyePosition;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/app/EyePosition$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;-><init>(Lcom/lenovo/scg/gallery3d/app/EyePosition;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    return-void

    .line 218
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    # invokes: Lcom/lenovo/scg/gallery3d/app/EyePosition;->onGyroscopeChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->access$100(Lcom/lenovo/scg/gallery3d/app/EyePosition;FFF)V

    goto :goto_0

    .line 222
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/EyePosition$PositionListener;->this$0:Lcom/lenovo/scg/gallery3d/app/EyePosition;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    # invokes: Lcom/lenovo/scg/gallery3d/app/EyePosition;->onAccelerometerChanged(FFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/app/EyePosition;->access$200(Lcom/lenovo/scg/gallery3d/app/EyePosition;FFF)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
