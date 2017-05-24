.class Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;
.super Ljava/lang/Object;
.source "WaterPanelTimeLocation1.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


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
    .line 232
    iput-object p1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 3
    .param p1, "location"    # Lcom/baidu/location/BDLocation;

    .prologue
    const v2, 0x7f0f07d0

    .line 236
    if-nez p1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->access$000(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    iget-object v1, v1, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->access$000(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    # getter for: Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mUserLocationText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->access$000(Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1$1;->this$0:Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;

    iget-object v1, v1, Lcom/lenovo/scg/camera/water/WaterPanelTimeLocation1;->mController:Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v1}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->getCameraActivity()Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .param p1, "arg0"    # Lcom/baidu/location/BDLocation;

    .prologue
    .line 258
    return-void
.end method
