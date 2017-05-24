.class public Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;
.super Ljava/lang/Object;
.source "CameraLineWaterLevelUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraLineWaterLevelUI->"


# instance fields
.field private lp:Landroid/widget/RelativeLayout$LayoutParams;

.field private mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

.field private mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

.field private mLevelViewID:I

.field private mLine:Lcom/lenovo/scg/camera/shortcut/Line;

.field private mLineID:I

.field private mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/setting/CameraSettingController;Lcom/lenovo/scg/camera/CameraActivity;)V
    .locals 1
    .param p1, "mSettingController"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;
    .param p2, "mCameraActivity"    # Lcom/lenovo/scg/camera/CameraActivity;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    .line 31
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    const/16 v0, 0x11

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLineID:I

    .line 33
    const/16 v0, 0x12

    iput v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelViewID:I

    .line 36
    iput-object p2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 39
    return-void
.end method

.method private updatePreviewRect()V
    .locals 4

    .prologue
    .line 133
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v3}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getParametersInCache()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 135
    .local v0, "mParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 137
    .local v1, "mPreviewSize":Landroid/hardware/Camera$Size;
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->getPreviewRect(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v2

    .line 138
    .local v2, "mRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-virtual {v3, v2}, Lcom/lenovo/scg/camera/shortcut/Line;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 140
    .end local v1    # "mPreviewSize":Landroid/hardware/Camera$Size;
    .end local v2    # "mRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeLevel()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "close level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraControlLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 73
    :cond_0
    return-void
.end method

.method public closeLine()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method

.method public openLevel()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 42
    const-string v0, "CameraLineWaterLevelUI->"

    const-string/jumbo v1, "open level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/LevelView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelViewID:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/shortcut/LevelView;->setId(I)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_shui_ping_yi_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    const v3, 0x7f0f0010

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraControlLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelViewID:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraControlLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLevelView:Lcom/lenovo/scg/camera/shortcut/LevelView;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const-string v0, "CameraLineWaterLevelUI->"

    const-string/jumbo v1, "open Level success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    const-string v0, "CameraLineWaterLevelUI->"

    const-string/jumbo v1, "open Level failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openLine()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const v4, 0x7f0f0006

    const/high16 v3, -0x80000000

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/lenovo/scg/camera/shortcut/Line;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLineID:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/shortcut/Line;->setId(I)V

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->updatePreviewRect()V

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_goutu_line_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLineID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 95
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view access---4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Line;->show4Line()V

    .line 124
    :cond_2
    :goto_1
    return-void

    .line 98
    :cond_3
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view failed---4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_goutu_line_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLineID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 107
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view access---9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Line;->show9Line()V

    goto :goto_1

    .line 110
    :cond_5
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view failed---9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getDefaultPreferences()Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;

    move-result-object v0

    const-string v1, "camera_setting_goutu_line_key"

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v2, v4}, Lcom/lenovo/scg/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/setting/preference/ComboSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLineID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    .line 117
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view access---luoxuan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraAppRootFrameLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :goto_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/CameraLineWaterLevelUI;->mLine:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/Line;->showInfiniteLine()V

    goto/16 :goto_1

    .line 120
    :cond_7
    const-string v0, "CameraLineWaterLevelUI->"

    const-string v1, "add view failed----luoxuan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
