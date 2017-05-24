.class Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraSettingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isWant2HideBigWheel()Z
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v1, v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isNormalOrHDRMode()Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWant2ShowBigWheel()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v0, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v1, v1, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$300(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isProFunction()Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$400(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isNormalOrHDRMode()Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$500(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    .line 267
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 282
    const-string v2, "SettingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "       startY:      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v4, v4, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->startY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    endY:        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget v4, v4, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    if-eqz v2, :cond_1

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-boolean v2, v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowAnim:Z

    if-eqz v2, :cond_2

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getStateManager()Lcom/lenovo/scg/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/StateManager;->getTopState()Lcom/lenovo/scg/gallery3d/app/ActivityState;

    move-result-object v0

    .line 295
    .local v0, "ast":Lcom/lenovo/scg/gallery3d/app/ActivityState;
    instance-of v2, v0, Lcom/lenovo/scg/gallery3d/app/CameraBrowsePage;

    if-eqz v2, :cond_3

    .line 296
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # invokes: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isVideoRecording()Z
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$100(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->isWant2ShowBigWheel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    const-string/jumbo v2, "onFling_showBigWheel-start"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput-boolean v1, v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    .line 317
    const-string v2, "SettingUI"

    const-string v3, "Pop up photo setting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const/high16 v4, -0x3d380000    # -100.0f

    const v5, 0x3f333333    # 0.7f

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v6, v6, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->shutterButtonShowBigWheel(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 320
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # setter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z
    invoke-static {v2, v1}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$302(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;Z)Z

    .line 321
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 324
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "onFling_showBigWheel-end"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->isWant2HideBigWheel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 330
    const-string/jumbo v2, "onFling_hideBigWheel-start"

    invoke-static {v2, v5}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iput-boolean v1, v2, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->bInShowProWheel:Z

    .line 341
    const-string v2, "SettingUI"

    const-string v3, "Pop up photo setting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->shutterButtonAnimSet:Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$200(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    iget-object v6, v6, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->shutterButtonHideBigWheel(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # setter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isAnimed:Z
    invoke-static {v2, v7}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$302(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;Z)Z

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;
    invoke-static {v2}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;)Lcom/lenovo/scg/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraActivity;->getShutterButton()Lcom/lenovo/scg/camera/ShutterButton;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/lenovo/scg/camera/ShutterButton;->setPressed(Z)V

    .line 347
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "onFling_hideBigWheel-end"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 352
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI$CameraSettingGestureListener;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->endY:F

    .line 275
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
