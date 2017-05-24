.class public Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;
.super Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;
.source "MiniCameraActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsBGDataEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;-><init>()V

    return-void
.end method

.method private avart()V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "click_activity_oncreate"

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    .line 96
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    .line 64
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v1

    .line 65
    .local v1, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v0

    .line 66
    .local v0, "isAvatarShareReportSuppored":Z
    const-string v2, "CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate, mIsBGDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarShareReportSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz v1, :cond_3

    .line 70
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    if-nez v2, :cond_2

    .line 72
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    .line 91
    :cond_1
    :goto_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 94
    const-string v2, "click_activity_oncreate"

    invoke-static {v2}, Lcom/lenovo/scg/minicamera/camera/utils/AnalyticsTrackerUtilForMiniCamera;->mainPageTraceEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    goto :goto_1

    .line 83
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->disableReport()V

    goto :goto_1
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f100679

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 106
    return-void
.end method

.method private initializeByIntent()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->setExtrasByIntent(Landroid/content/Intent;)V

    .line 102
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestcode"    # I
    .param p2, "resultcode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    const-string v0, "CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult, requestcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0, p1, p2, p3}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onActivityResult(IILandroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onBackPressed()V

    .line 169
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->setCameraBootStartTime()V

    .line 43
    const v0, 0x7f0400fe

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->avart()V

    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->initViews()V

    .line 49
    new-instance v0, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;

    invoke-direct {v0}, Lcom/lenovo/scg/minicamera/mode/MiniCameraQRandBarCodeMode;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    iget-object v1, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0, v1}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->init(Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;Landroid/view/View;)V

    .line 52
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->initializeByIntent()V

    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onDestroy()V

    .line 144
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onPauseBeforeSuper()V

    .line 134
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onPauseAfterSuper()V

    .line 138
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 110
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v2}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onResumeBeforeSuper()V

    .line 111
    invoke-super {p0}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->onResume()V

    .line 112
    iget-object v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mCurrentMode:Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;

    invoke-interface {v2}, Lcom/lenovo/scg/minicamera/mode/IMiniCameraMode;->onResumeAfterSuper()V

    .line 114
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    .line 115
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v1

    .line 116
    .local v1, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v0

    .line 117
    .local v0, "isAvatarShareReportSuppored":Z
    const-string v2, "CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume, mIsBGDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarShareReportSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz v1, :cond_0

    .line 121
    iget-boolean v2, p0, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivity;->mIsBGDataEnable:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 128
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/lenovo/scg/minicamera/activity/MiniCameraActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
