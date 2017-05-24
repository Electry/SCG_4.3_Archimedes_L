.class Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;
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
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 72
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v6, 0xc8

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    .line 76
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 77
    .local v0, "aX":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v7

    .line 78
    .local v1, "aY":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v2, v3, v4

    .line 80
    .local v2, "aZ":F
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v0, v5

    float-to-int v4, v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$002(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 81
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v1, v5

    float-to-int v4, v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$102(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 82
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    mul-float v4, v2, v5

    float-to-int v4, v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$202(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 84
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$300(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$400(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    if-nez v3, :cond_2

    .line 88
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$402(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 89
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$502(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 90
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$602(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    goto :goto_0

    .line 93
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$400(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_3

    .line 94
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dis ----- X ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$400(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementX:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$000(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisX:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$402(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 96
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    goto :goto_0

    .line 97
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$500(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_4

    .line 98
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dis ----- Y ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$500(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementY:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$100(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisY:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$502(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    goto/16 :goto_0

    .line 101
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I
    invoke-static {v3}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$600(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_0

    .line 102
    const-string v3, "PositionChangeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dis ----- Z ----- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I
    invoke-static {v5}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I
    invoke-static {v6}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$600(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # getter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mDisplacementZ:I
    invoke-static {v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$200(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;)I

    move-result v4

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMarkedDisZ:I
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$602(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;I)I

    .line 104
    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/PositionChangeDetector$1;->this$0:Lcom/lenovo/scg/camera/focus/PositionChangeDetector;

    # setter for: Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->mMoved:Z
    invoke-static {v3, v7}, Lcom/lenovo/scg/camera/focus/PositionChangeDetector;->access$302(Lcom/lenovo/scg/camera/focus/PositionChangeDetector;Z)Z

    goto/16 :goto_0
.end method
