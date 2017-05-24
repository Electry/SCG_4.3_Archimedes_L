.class Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;
.super Ljava/lang/Object;
.source "PhotoModuleSuperEx.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1845
    const-string v2, "ChexkBox is : "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 1848
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1982
    :goto_0
    return-void

    .line 1851
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_zsd_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1856
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_camera_devices_operate_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1862
    :sswitch_2
    if-nez p2, :cond_0

    .line 1864
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const-string v3, "camera_setting_picture_size_key"

    const-string v4, "16x9"

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_full_pic_video_size_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1868
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$1300(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/camera/PictureSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1869
    .local v1, "mSize":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const-string v3, "camera_setting_picture_size_key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_full_pic_video_size_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1876
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :sswitch_3
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    const-string v3, "developer_setting_full_preview_size_key"

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1877
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_full_preview_size_key"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1879
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    # getter for: Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->mCameraId:I
    invoke-static {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->access$1400(Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;)I

    move-result v2

    sget-object v3, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;->PSIZE_16_9:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;

    sget-object v4, Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;->MAX_SIZE:Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;

    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/camera/PreviewSizeFacade;->getSuiteSize(ILcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SizeRatioType;Lcom/lenovo/scg/common/utils/camera/BaseSizeFacade$SuiteSizeType;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1880
    .restart local v1    # "mSize":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    const-string v3, "developer_setting_full_preview_size_key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->putParameterToSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_full_preview_size_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1889
    .end local v1    # "mSize":Landroid/hardware/Camera$Size;
    :sswitch_4
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_monitor_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1896
    :sswitch_5
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_focus_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1901
    :sswitch_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_art_hdr_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1905
    :sswitch_7
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_super_night_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1909
    :sswitch_8
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_real_night_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1913
    :sswitch_9
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_front_beauty_debug_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1918
    :sswitch_a
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_auto_focusmode_list_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1923
    :sswitch_b
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_close_agender_detect_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1928
    :sswitch_c
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_display_ae_area_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1933
    :sswitch_d
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "camera_capture_way_info_show"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1938
    :sswitch_e
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_hdr_dump_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1943
    :sswitch_f
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_hdr_zsl_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1948
    :sswitch_10
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_lowlit_zsl_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1953
    :sswitch_11
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_strobe_debug_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1958
    :sswitch_12
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_mem_analysis_log_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1963
    :sswitch_13
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_panorama_ex_lock_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1968
    :sswitch_14
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_panorama_4K_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1973
    :sswitch_15
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_video_recording_mode"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1978
    :sswitch_16
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx$6;->this$0:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "developer_setting_rewind_dump_key"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1848
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10040d -> :sswitch_4
        0x7f100413 -> :sswitch_0
        0x7f100414 -> :sswitch_5
        0x7f100416 -> :sswitch_b
        0x7f100418 -> :sswitch_c
        0x7f10041b -> :sswitch_1
        0x7f10041e -> :sswitch_2
        0x7f100420 -> :sswitch_3
        0x7f100423 -> :sswitch_e
        0x7f100426 -> :sswitch_f
        0x7f100429 -> :sswitch_10
        0x7f10042c -> :sswitch_11
        0x7f10042f -> :sswitch_12
        0x7f100431 -> :sswitch_d
        0x7f100433 -> :sswitch_8
        0x7f100436 -> :sswitch_13
        0x7f100439 -> :sswitch_15
        0x7f10043c -> :sswitch_14
        0x7f10043f -> :sswitch_16
        0x7f100444 -> :sswitch_6
        0x7f100445 -> :sswitch_7
        0x7f100448 -> :sswitch_9
        0x7f10045b -> :sswitch_a
    .end sparse-switch
.end method
