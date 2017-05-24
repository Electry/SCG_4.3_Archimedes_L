.class public Lcom/lenovo/scg/camera/function/ProFunctionUI;
.super Lcom/lenovo/scg/camera/function/FunctionUI;
.source "ProFunctionUI.java"


# static fields
.field public static mIsFirstEnter:Z


# instance fields
.field private final MSG_ENTER:I

.field private final SHOW:I

.field private mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

.field private mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mIsFirstEnter:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->SHOW:I

    .line 249
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->MSG_ENTER:I

    .line 251
    new-instance v0, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI$1;-><init>(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/function/ProFunctionUI;)Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->initProSmartUIView()V

    return-void
.end method

.method private initProSmartUIView()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 129
    .local v1, "rlControls":Landroid/widget/RelativeLayout;
    const v3, 0x7f1008f2

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, "vOldView":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v3, "ProSmartUI"

    const-string v4, "initProSmartUIView"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040182

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getProSmartStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->enter()V

    goto :goto_0
.end method


# virtual methods
.method public addProSmartUIView()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "ProSmartUI"

    const-string v1, "addProSmartUIView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->enter()V

    .line 154
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiAdd(Z)V

    .line 155
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI()V

    .line 158
    :cond_0
    return-void
.end method

.method public clearScreen([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 182
    const/4 v5, 0x2

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    aput-object v6, v4, v5

    .line 183
    .local v4, "views":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 184
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->removeSmartUIView()V

    .line 189
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enter()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 58
    const-string v4, "ProSmartUI"

    const-string/jumbo v5, "wangsm3 enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    .local v0, "t1":J
    iget-object v4, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/PhotoUI;->getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->initShortcutView()V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->initProSmartUIView()V

    .line 68
    iget-object v4, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "t2":J
    const-string/jumbo v4, "profunction enter cost: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public getShortcutView()Lcom/lenovo/scg/camera/shortcut/ShortcutView;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    return-object v0
.end method

.method public initShortcutView()V
    .locals 9

    .prologue
    const v8, 0x7f1008dd

    const/4 v4, 0x1

    const/4 v7, -0x2

    .line 94
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 95
    .local v1, "rlControls":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, "vOldView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 99
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040180

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iput-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .line 100
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setPhotoUI(Lcom/lenovo/scg/camera/PhotoUI;)V

    .line 101
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v3, p0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setProFunctionUI(Lcom/lenovo/scg/camera/function/ProFunctionUI;)V

    .line 103
    const-string v3, "initShortcutView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v6}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getCameraId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V

    .line 105
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v3, v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setController(Lcom/lenovo/scg/camera/shortcut/ShortcutController;)V

    .line 107
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v3, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->myHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 114
    if-nez v2, :cond_1

    move v3, v4

    :goto_0
    const-string v4, "initShortcutView error"

    invoke-static {v3, v4}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 115
    return-void

    .line 114
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->onBackPressed()Z

    move-result v0

    .line 225
    :cond_0
    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->removeSmartUIView()V

    .line 228
    :cond_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 237
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->hideShortcutPanel(Z)Z

    .line 240
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 245
    return-void
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "ProSmartUI"

    const-string/jumbo v1, "quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->releaseShortcutView()V

    .line 44
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->exit()V

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    .line 49
    :cond_0
    return-void
.end method

.method public releaseShortcutView()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getControlView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    .line 122
    :cond_0
    return-void
.end method

.method public removeSmartUIView()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "ProSmartUI"

    const-string/jumbo v1, "removeSmartUIView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->exit()V

    .line 168
    invoke-static {}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiAdd(Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->setOrientation(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;->getSettingUI()Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/setting/uicontroll/SettingUI;->isBigWheelShowed()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setOrientation(IZ)V

    .line 91
    :cond_1
    return-void

    .line 89
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmartUIViewShow(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getProSmartStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "ProSmartUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartUIViewShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->setVisibility(I)V

    .line 178
    :cond_0
    return-void

    .line 176
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showScreen([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 193
    const-string v5, "ProSmartUI"

    const-string/jumbo v6, "showScreen, exclude"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mSmartEngineView:Lcom/lenovo/scg/camera/smartengine/SmartEngineView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/smartengine/SmartEngineView;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    invoke-virtual {v5}, Lcom/lenovo/scg/camera/shortcut/ShortcutView;->getProSmartStatus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->addProSmartUIView()V

    .line 200
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    aput-object v6, v4, v5

    .line 201
    .local v4, "views":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 202
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public showScreenOnPause([I)V
    .locals 7
    .param p1, "exclude"    # [I

    .prologue
    .line 209
    const-string v5, "ProSmartUI"

    const-string/jumbo v6, "showScreen, exclude"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v5, 0x1

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lenovo/scg/camera/function/ProFunctionUI;->mShortcutView:Lcom/lenovo/scg/camera/shortcut/ShortcutView;

    aput-object v6, v4, v5

    .line 211
    .local v4, "views":[Landroid/view/View;
    move-object v0, v4

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 212
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 213
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 211
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
