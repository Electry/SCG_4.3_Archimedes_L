.class Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;
.super Ljava/lang/Object;
.source "PositionChangeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/focus/PositionChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v6, 0x28

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    .line 123
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 124
    .local v0, "rX":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v7

    .line 125
    .local v1, "rY":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v2, v3, v4

    .line 126
    .local v2, "rZ":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v0, v5

    float-to-int v4, v4

    # += operator for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$712(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 127
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v1, v5

    float-to-int v4, v4

    # += operator for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$812(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v2, v5

    float-to-int v4, v4

    # += operator for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$912(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 130
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$300(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    if-nez v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$700(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1002(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 135
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$800(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1102(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 136
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$900(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1202(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    goto :goto_0

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$700(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_3

    .line 141
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rot ----- X ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$700(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    .line 151
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$700(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1002(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 152
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$800(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1102(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 153
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$900(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1202(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    goto/16 :goto_0

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$800(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_4

    .line 144
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rot ----- Y ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationY:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$800(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotY:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    goto :goto_1

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$900(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_2

    .line 147
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rot ----- Z ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mRotationZ:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$900(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedRotZ:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$1200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$2;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    goto/16 :goto_1
.end method
