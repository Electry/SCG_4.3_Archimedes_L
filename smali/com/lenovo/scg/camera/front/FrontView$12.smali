.class Lcom/lenovo/scg/camera/front/FrontView$12;
.super Ljava/lang/Object;
.source "FrontView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/front/FrontView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/front/FrontView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/front/FrontView;)V
    .locals 0

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1536
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1540
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v1

    .line 1542
    .local v2, "value":F
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_4

    .line 1544
    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/front/FrontView;->setNeedShowSupplyHint(Z)V

    .line 1546
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "camera_first_enter_front"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1548
    .local v0, "firstEnter":Z
    const-string/jumbo v4, "panhui1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSensorChanged, value < 20, mIsPhotoWayHintShow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mIsPhotoWayHintShow:Z
    invoke-static {v6}, Lcom/lenovo/scg/camera/front/FrontView;->access$1000(Lcom/lenovo/scg/camera/front/FrontView;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstEnter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    if-eqz v0, :cond_3

    .line 1554
    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/front/FrontView;->isFrontSettingPanelVisible()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/front/FrontView;->isPhotoFunctionPanelVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v1, v3

    .line 1556
    .local v1, "isFrontPanelVisible":Z
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    # getter for: Lcom/lenovo/scg/camera/front/FrontView;->mIsPhotoWayHintShow:Z
    invoke-static {v3}, Lcom/lenovo/scg/camera/front/FrontView;->access$1000(Lcom/lenovo/scg/camera/front/FrontView;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    .line 1558
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyHint()V

    .line 1567
    .end local v0    # "firstEnter":Z
    .end local v1    # "isFrontPanelVisible":Z
    :cond_2
    :goto_0
    return-void

    .line 1562
    .restart local v0    # "firstEnter":Z
    :cond_3
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/front/FrontView;->showSupplyHint()V

    goto :goto_0

    .line 1565
    .end local v0    # "firstEnter":Z
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/camera/front/FrontView$12;->this$0:Lcom/lenovo/scg/camera/front/FrontView;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/camera/front/FrontView;->setNeedShowSupplyHint(Z)V

    goto :goto_0
.end method
