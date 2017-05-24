.class Lcom/lenovo/scg/camera/shortcut/LevelView$1;
.super Ljava/lang/Object;
.source "LevelView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/shortcut/LevelView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private CurrentZLevel:I

.field private lastTime:J

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/LevelView;)V
    .locals 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->CurrentZLevel:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->lastTime:J

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 85
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->lastTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 86
    const-string v6, "LevelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "z"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v12

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v12

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 91
    .local v5, "zLevel":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 92
    const/4 v5, 0x0

    .line 94
    :cond_0
    iget v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->CurrentZLevel:I

    if-ne v5, v6, :cond_2

    .line 143
    .end local v5    # "zLevel":I
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v5    # "zLevel":I
    :cond_2
    if-nez v5, :cond_4

    .line 99
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f02035c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 101
    .local v3, "matrix":Landroid/graphics/Matrix;
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v3, v10, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 102
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z
    invoke-static {v6, v7}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$102(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z

    .line 109
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_1
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRotation()F

    move-result v6

    const/high16 v7, 0x42b40000    # 90.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRotation()F

    move-result v6

    const/high16 v7, 0x43870000    # 270.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_5

    .line 110
    :cond_3
    const-string v6, "LevelView"

    const-string v7, "==============90     270"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x5

    mul-int/2addr v8, v5

    div-int/lit16 v8, v8, 0xc8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 112
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setY(F)V

    .line 119
    :goto_2
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0xa

    int-to-float v2, v6

    .line 121
    .local v2, "mCircleR":F
    const/high16 v6, 0x42440000    # 49.0f

    div-float v6, v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v2

    sub-float v4, v10, v6

    .line 122
    .local v4, "scalValue":F
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gtz v6, :cond_6

    .line 123
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :goto_3
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 130
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isThumbHI:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$300(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$100(Lcom/lenovo/scg/camera/shortcut/LevelView;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 131
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020357

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_4
    iput v5, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->CurrentZLevel:I

    .line 138
    iput-wide v0, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->lastTime:J

    goto/16 :goto_0

    .line 105
    .end local v2    # "mCircleR":F
    .end local v4    # "scalValue":F
    :cond_4
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f02035b

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # setter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->isZLevelHI:Z
    invoke-static {v6, v11}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$102(Lcom/lenovo/scg/camera/shortcut/LevelView;Z)Z

    goto/16 :goto_1

    .line 114
    :cond_5
    const-string v6, "LevelView"

    const-string v7, "+++++++++++++++++0              180       "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setX(F)V

    .line 116
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-virtual {v7}, Lcom/lenovo/scg/camera/shortcut/LevelView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x5

    mul-int/2addr v8, v5

    div-int/lit16 v8, v8, 0xc8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_2

    .line 125
    .restart local v2    # "mCircleR":F
    .restart local v4    # "scalValue":F
    :cond_6
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mZLevelView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$000(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 133
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/camera/shortcut/LevelView$1;->this$0:Lcom/lenovo/scg/camera/shortcut/LevelView;

    # getter for: Lcom/lenovo/scg/camera/shortcut/LevelView;->mBGView:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/lenovo/scg/camera/shortcut/LevelView;->access$200(Lcom/lenovo/scg/camera/shortcut/LevelView;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020356

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method
