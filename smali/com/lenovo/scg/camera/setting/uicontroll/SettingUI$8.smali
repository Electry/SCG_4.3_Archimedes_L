.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;
.super Landroid/os/Handler;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 1833
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1838
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1839
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1841
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    check-cast v2, Landroid/view/View;

    const v3, 0x7f100008

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1843
    .local v1, "position":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCircleListView:Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/setting/view/LittleCircleListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/setting/view/SettingItem;

    .line 1846
    .local v0, "mItem":Lcom/lenovo/scg/camera/setting/view/SettingItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1850
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_TAKE_PIC_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_1

    .line 1851
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_TAKE_PIC_TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1854
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1855
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_FLASH:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_2

    .line 1856
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_FLASH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mFlashTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1700(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/FlashTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1859
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1860
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_TYPE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_3

    .line 1861
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_VIDEO_TYPE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1800(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1864
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1865
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PIC_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_4

    .line 1866
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_PIC_SIZE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPictureSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1900(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PictureSizeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1869
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1870
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SHUTTER_SOUND:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_5

    .line 1871
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_SHUTTER_SOUND"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mShutterSoundTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/ShutterSoundTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1874
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1875
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_SMART:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_6

    .line 1876
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_SMART"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mSmartTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SmartTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1879
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1880
    :cond_6
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_PRINT_TIME:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_7

    .line 1881
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string v3, "TYPE_PRINT_TIME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mPrintTimeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/PrintTimeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1884
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1885
    :cond_7
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_VIDEO_SIZE:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_8

    .line 1886
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mVideoSizeTypeUI:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSizeTypeUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1887
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1888
    :cond_8
    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/view/SettingItem;->getSettingType()Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    move-result-object v2

    sget-object v3, Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;->TYPE_GPS:Lcom/lenovo/scg/camera/setting/view/SettingBaseItem$SettingType;

    if-ne v2, v3, :cond_9

    .line 1889
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mGpsSwitchUI:Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/setting/uicontroll/GPSSwitchUI;->updatePopCheckBox(Lcom/lenovo/scg/camera/setting/view/SettingItem;)V

    .line 1890
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAutoWheelBg:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$1600(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_0

    .line 1892
    :cond_9
    const-string/jumbo v2, "updatePopViewNameVisibility"

    const-string/jumbo v3, "removeAutoLittleWheelPopView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$8;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->removeAutoLittleWheelPopView()V
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$2500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V

    goto/16 :goto_0

    .line 1839
    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_0
    .end packed-switch
.end method
