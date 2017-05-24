.class public Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;
.super Landroid/widget/LinearLayout;
.source "ShortcutBigPanel.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "ShortcutBigPanel"

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "ShortcutBigPanel"

    const-string v1, "ShortcutViewItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 40
    const-string v0, "ShortcutBigPanel"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 46
    const-string v0, "ShortcutBigPanel"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const-string v0, "ShortcutBigPanel"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const v0, 0x7f1008db

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    .line 35
    return-void
.end method

.method public setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 55
    return-void
.end method

.method public setShortcutAdapterController(Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;)V
    .locals 0
    .param p1, "adapterController"    # Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    .line 51
    return-void
.end method

.method public showListView(Ljava/lang/String;)V
    .locals 4
    .param p1, "listname"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v1, "ShortcutBigPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showListView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v1, "flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutFlashAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutFlashAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 62
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutFlashAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutFlashAdapter;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "function"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 65
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 66
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutFunctionAdapter;
    :cond_2
    const-string/jumbo v1, "metering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 68
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 69
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutMeteringAdapter;
    :cond_3
    const-string v1, "antibanding"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 71
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 72
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutAntibandingAdapter;
    :cond_4
    const-string/jumbo v1, "voicekey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 74
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 75
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVoiceKeyAdapter;
    :cond_5
    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutVideoAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutVideoAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 77
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVideoAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 78
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVideoAdapter;
    :cond_6
    const-string v1, "line"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 79
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutLineAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutLineAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 80
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutLineAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 81
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutLineAdapter;
    :cond_7
    const-string/jumbo v1, "video_quality"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 82
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 83
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 84
    .end local v0    # "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutVQualityAdapter;
    :cond_8
    const-string/jumbo v1, "size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mAdapterController:Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;

    iget-object v3, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/shortcut/ShortcutAdapterController;Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 86
    .local v0, "adapter":Lcom/lenovo/scg/camera/shortcut/ShortcutSizeAdapter;
    iget-object v1, p0, Lcom/lenovo/scg/camera/shortcut/ShortcutBigPanel;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method
