.class public Lcom/lenovo/scg/camera/function/AutoFunctionUI;
.super Lcom/lenovo/scg/camera/function/FunctionUI;
.source "AutoFunctionUI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/scg/camera/function/FunctionUI;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 6
    .param p1, "exclude"    # [I

    .prologue
    .line 58
    const/4 v5, 0x0

    new-array v4, v5, [Landroid/view/View;

    .line 59
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

    .line 60
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeOut(Landroid/view/View;)V

    .line 59
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public enter()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "AutoFunctionUI"

    const-string/jumbo v1, "wangsm3 enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/AutoFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/PhotoUI;->getSwitchToFrontBotton()Lcom/lenovo/scg/camera/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/AutoFunctionUI;->mUI:Lcom/lenovo/scg/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/PhotoUI;->displayScreen([I)V

    .line 41
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "resutl":Z
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    return-void
.end method

.method public quit()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 53
    return-void
.end method

.method public showScreen([I)V
    .locals 6
    .param p1, "exclude"    # [I

    .prologue
    .line 69
    const/4 v5, 0x0

    new-array v4, v5, [Landroid/view/View;

    .line 70
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

    .line 71
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5, p1}, Lcom/lenovo/scg/camera/CameraUtil;->exclude(I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    invoke-static {v3}, Lcom/lenovo/scg/camera/CameraUtil;->fadeIn(Landroid/view/View;)V

    .line 70
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
