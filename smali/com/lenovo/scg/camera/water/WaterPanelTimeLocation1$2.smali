.class Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;
.super Ljava/lang/Object;
.source "WaterPanelTimeLocation1.java"

# interfaces
.implements Lcom/lenovo/scg/camera/water/LenovoWeatherAssist$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForcastUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->access$100(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "WaterPanelTimeLocation1"

    const-string/jumbo v1, "onForcastUpdate, mUserWeatherText == null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "WaterPanelTimeLocation1"

    const-string/jumbo v1, "onForcastUpdate, weather is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$2;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserWeatherText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->access$100(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
