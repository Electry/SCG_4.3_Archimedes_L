.class public Lcom/lenovo/scg/camera/function/FunctionUIManager;
.super Ljava/lang/Object;
.source "FunctionUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCG FunctionUIManager"

.field private static mInstance:Lcom/lenovo/scg/camera/function/FunctionUIManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFunctionType:I

.field private mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

.field private mPreFunctionType:I

.field private m_nRotation:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mContext:Landroid/content/Context;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->m_nRotation:I

    .line 35
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    .line 36
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/lenovo/scg/camera/function/FunctionUIManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mInstance:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/lenovo/scg/camera/function/FunctionUIManager;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/function/FunctionUIManager;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mInstance:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mInstance:Lcom/lenovo/scg/camera/function/FunctionUIManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUI;->clearScreen([I)V

    .line 212
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUI;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurFunctionType()I
    .locals 4

    .prologue
    .line 128
    iget v2, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 129
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 131
    .local v0, "currentFunction":I
    if-eqz v1, :cond_0

    .line 132
    const-string v2, "AUTO_PRO_FUNCTION"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    :cond_0
    iput v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    .line 136
    .end local v0    # "currentFunction":I
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    iget v2, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    return v2
.end method

.method public getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    return-object v0
.end method

.method public getPreFunctionType()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    return v0
.end method

.method public isImageCaptureIntent()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getBaseController()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->isImageCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getBaseController()Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->isVideoIntent()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 167
    :cond_1
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUI;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUI;->quit()V

    .line 68
    :cond_0
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    .line 69
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    .line 70
    iput-object v2, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    .line 71
    sput-object v2, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mInstance:Lcom/lenovo/scg/camera/function/FunctionUIManager;

    .line 72
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->m_nRotation:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    .line 46
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    .line 47
    iput v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    .line 48
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUI;->setOrientation(I)V

    .line 198
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->m_nRotation:I

    .line 199
    return-void
.end method

.method public showScreen([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUI;->showScreen([I)V

    .line 225
    :cond_0
    return-void
.end method

.method public showScreenOnPause([I)V
    .locals 1
    .param p1, "exclude"    # [I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    check-cast v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    .line 229
    .local v0, "pfu":Lcom/lenovo/scg/camera/function/ProFunctionUI;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->showScreenOnPause([I)V

    .line 232
    :cond_0
    return-void
.end method

.method public switch2Function(ILjava/lang/Object;)V
    .locals 3
    .param p1, "function"    # I
    .param p2, "para"    # Ljava/lang/Object;

    .prologue
    .line 83
    const-string v0, "SCG FunctionUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch2Function : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    iput v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    .line 86
    iput p1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    .line 88
    iget v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    iget v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mCurFunctionType:I

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUI;->quit()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    .line 99
    :cond_1
    invoke-static {p1, p2}, Lcom/lenovo/scg/camera/function/FunctionUIFactory;->createFunction(ILjava/lang/Object;)Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    .line 100
    const-string v0, "mFunction.enter"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEn(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FunctionUI;->enter()V

    .line 102
    const-string v0, "mFunction.enter"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->performInvestEx(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mFunction:Lcom/lenovo/scg/camera/function/FunctionUI;

    iget v1, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->m_nRotation:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUI;->setOrientation(I)V

    goto :goto_0
.end method

.method public switchFunctionBack(Ljava/lang/Object;)V
    .locals 3
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "switchFunctionBack"

    invoke-static {v0, v1}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfTure(ZLjava/lang/String;)V

    .line 116
    const-string v0, "SCG FunctionUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch2Function switchFunctionBack : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p0, Lcom/lenovo/scg/camera/function/FunctionUIManager;->mPreFunctionType:I

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->switch2Function(ILjava/lang/Object;)V

    .line 118
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
