.class public Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
.super Ljava/lang/Object;
.source "GestrueAssistantForAeAfLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;,
        Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;,
        Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    }
.end annotation


# static fields
.field private static final HAS_MOVE:I = 0x5

.field private static final LAND_X_MAX:I = 0x258

.field private static final LAND_Y_MIN:I = 0x1f4

.field private static final MAX_CHANGE_ALPHA_Y:F = 1800.0f

.field private static final MIN_CHANGE_ALPHA_Y:F = 1400.0f

.field private static final MSG_IS_LONG_PRESS:I = 0x0

.field private static final MSG_IS_POINTER_TAP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GestrueAssistantForAeAfLock"

.field private static final VERTICAL_X_MAX:I = 0x1f4

.field private static final VERTICAL_Y_MAX:I = 0x2ee

.field private static final X_VALID_MAX:I = 0x406

.field private static final X_VALID_MIN:I = 0x9e

.field private static final Y_VALID_MAX:I = 0x7ec

.field private static final Y_VALID_MIN:I = 0x9e

.field private static mAssistant:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

.field public static mMapMode2AeAfLockUsable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

.field private mAeTouchX4Smart:I

.field private mAeTouchY4Smart:I

.field private mAeTouchY4Zoom:I

.field private mAfTouchX4Smart:I

.field private mAfTouchY4Smart:I

.field private mAfTouchY4Zoom:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

.field private mLongPressTimeout:I

.field private mOrientation:I

.field private mPosX:I

.field private mPosX2:I

.field private mPosY:I

.field private mPosY2:I

.field mSmartUiAdd:Z

.field private mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

.field private mTapTimeout:I

.field private mZoomBarCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAssistant:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .line 425
    new-instance v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$2;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mMapMode2AeAfLockUsable:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mLongPressTimeout:I

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mTapTimeout:I

    .line 35
    new-instance v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    invoke-direct {v0, p0, v2}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;-><init>(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    .line 37
    invoke-static {}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->getInstance()Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mZoomBarCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    .line 39
    iput-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    .line 43
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    .line 44
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    .line 45
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    .line 46
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    .line 50
    new-instance v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$1;-><init>(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    .line 270
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Zoom:I

    .line 271
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Zoom:I

    .line 298
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchX4Smart:I

    .line 299
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Smart:I

    .line 300
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchX4Smart:I

    .line 301
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Smart:I

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mSmartUiAdd:Z

    .line 359
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mOrientation:I

    .line 411
    sget-object v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->NO_LOCK:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    iput-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    .line 163
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    return v0
.end method

.method static synthetic access$402(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    return p1
.end method

.method static synthetic access$500(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->isEnableByMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    return v0
.end method

.method static synthetic access$602(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->validPos()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAssistant:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;

    return-object v0
.end method

.method private isEnableByMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 128
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "isEnableByMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v1

    .line 130
    .local v1, "mManager":Lcom/lenovo/scg/camera/mode/ModeManager;
    if-nez v1, :cond_0

    .line 131
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "isEnableByMode() mManager == null && return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return v2

    .line 134
    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentMode()Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    move-result-object v0

    .line 135
    .local v0, "cMode":Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    if-nez v0, :cond_1

    .line 136
    const-string v3, "GestrueAssistantForAeAfLock"

    const-string v4, "isEnableByMode() cMode == null && return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    const-string v2, "GestrueAssistantForAeAfLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnableByMode() cMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mMapMode2AeAfLockUsable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method private isLand()Z
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSmartUiVisible(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    .line 373
    const-string v1, "GestrueAssistantForAeAfLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSmartUiVisible --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v0

    .line 375
    .local v0, "mFunctionUI":Lcom/lenovo/scg/camera/function/FunctionUI;
    instance-of v1, v0, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "GestrueAssistantForAeAfLock"

    const-string/jumbo v2, "setSmartUiVisible() is ProFunctionUI "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getInstance()Lcom/lenovo/scg/camera/function/FunctionUIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/function/FunctionUIManager;->getCurFunctionUI()Lcom/lenovo/scg/camera/function/FunctionUI;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/function/ProFunctionUI;->setSmartUIViewShow(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method private validPos()V
    .locals 4

    .prologue
    const/16 v3, 0x7ec

    const/16 v2, 0x406

    const/16 v1, 0x9e

    .line 254
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    .line 255
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    .line 257
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    .line 258
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    .line 260
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    .line 261
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    .line 263
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    .line 264
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    .line 266
    return-void
.end method


# virtual methods
.method public getState()Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    return-object v0
.end method

.method public onActionDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    const-string v1, "GestrueAssistantForAeAfLock"

    const-string/jumbo v2, "onActionDown()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v1, "GestrueAssistantForAeAfLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionDown(): mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    .line 178
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v2, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v1, v2, :cond_2

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    iget v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    invoke-interface {v1, v2, v3}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onActionDown(II)V

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 187
    iget v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 188
    const-string v1, "GestrueAssistantForAeAfLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionDown() x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "GestrueAssistantForAeAfLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionDown() y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v1, "GestrueAssistantForAeAfLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActionDown() mTapTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mLongPressTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onActionMove(Landroid/view/MotionEvent;Z)Z
    .locals 7
    .param p1, "m"    # Landroid/view/MotionEvent;
    .param p2, "valid"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    const-string v4, "GestrueAssistantForAeAfLock"

    const-string/jumbo v5, "onActionMove()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-nez p2, :cond_2

    .line 216
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 246
    :cond_1
    :goto_0
    return v2

    .line 222
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 223
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 224
    .local v1, "y":I
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v4, v5, :cond_5

    .line 225
    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    .line 226
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    .line 231
    :cond_3
    :goto_1
    const-string v4, "GestrueAssistantForAeAfLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionMove(): x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v4, "GestrueAssistantForAeAfLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionMove(): y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v4, "GestrueAssistantForAeAfLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActionMove(): mState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v4, v5, :cond_1

    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    if-eqz v4, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->validPos()V

    .line 237
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToZoomBar(I)V

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI(II)V

    .line 239
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v4, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v2, v4, :cond_6

    .line 240
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    iget v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    iget v5, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    invoke-interface {v2, v4, v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onActionMove(II)V

    :goto_2
    move v2, v3

    .line 244
    goto/16 :goto_0

    .line 227
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v5, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AF:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v4, v5, :cond_3

    .line 228
    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    .line 229
    iput v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    goto/16 :goto_1

    .line 242
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    iget v4, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    iget v5, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    invoke-interface {v2, v4, v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onActionMove(II)V

    goto :goto_2
.end method

.method public onActionPointerDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 382
    const-string v1, "GestrueAssistantForAeAfLock"

    const-string/jumbo v2, "onActionPointerDown()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x1:I

    .line 386
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y1:I

    .line 387
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    iput v2, v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->x2:I

    .line 388
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    iput v2, v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;->y2:I

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeAfDifferLockPos:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfDifferLockPos;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 390
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mTapTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 391
    return-void
.end method

.method public onActionPointerUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    const-string v0, "GestrueAssistantForAeAfLock"

    const-string/jumbo v1, "onActionPointerUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    return-void
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "m"    # Landroid/view/MotionEvent;

    .prologue
    .line 196
    const-string v2, "GestrueAssistantForAeAfLock"

    const-string/jumbo v3, "onActionUp()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 199
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 200
    .local v1, "y":I
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;->onActionUp(II)V

    .line 203
    :cond_0
    return-void
.end method

.method public sayToProSmartUI()V
    .locals 3

    .prologue
    .line 347
    const-string v0, "GestrueAssistantForAeAfLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sayToProSmartUI() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_0

    .line 349
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    iget v1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI(II)V

    .line 351
    :cond_0
    return-void
.end method

.method public sayToProSmartUI(II)V
    .locals 8
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    const/16 v7, 0x2ee

    const/16 v6, 0x258

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x1f4

    .line 309
    const-string v0, "GestrueAssistantForAeAfLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sayToProSmartUI("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") && mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_3

    .line 311
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX:I

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchX4Smart:I

    .line 312
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Smart:I

    .line 313
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchX4Smart:I

    .line 314
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    iput v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Smart:I

    .line 323
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->isLand()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchX4Smart:I

    if-le v0, v6, :cond_0

    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Smart:I

    if-lt v0, v3, :cond_1

    :cond_0
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchX4Smart:I

    if-le v0, v6, :cond_5

    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Smart:I

    if-ge v0, v3, :cond_5

    .line 326
    :cond_1
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiVisible(Z)V

    .line 344
    :cond_2
    :goto_1
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v1, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v0, v1, :cond_4

    .line 316
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchX4Smart:I

    .line 317
    iput p2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Smart:I

    goto :goto_0

    .line 319
    :cond_4
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchX4Smart:I

    .line 320
    iput p2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Smart:I

    goto :goto_0

    .line 328
    :cond_5
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mSmartUiAdd:Z

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiVisible(Z)V

    goto :goto_1

    .line 333
    :cond_6
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchX4Smart:I

    if-ge v0, v3, :cond_7

    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Smart:I

    if-lt v0, v7, :cond_8

    :cond_7
    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchX4Smart:I

    if-ge v0, v3, :cond_9

    iget v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Smart:I

    if-ge v0, v7, :cond_9

    .line 335
    :cond_8
    invoke-direct {p0, v4}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiVisible(Z)V

    goto :goto_1

    .line 337
    :cond_9
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mSmartUiAdd:Z

    if-eqz v0, :cond_2

    .line 338
    invoke-direct {p0, v5}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->setSmartUiVisible(Z)V

    goto :goto_1
.end method

.method public sayToZoomBar(I)V
    .locals 5
    .param p1, "py"    # I

    .prologue
    const/high16 v4, 0x44af0000    # 1400.0f

    .line 274
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v3, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->AEAF_DIFFER_LOCKED:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v2, v3, :cond_0

    .line 275
    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY:I

    iput v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Zoom:I

    .line 276
    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    iput v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Zoom:I

    .line 283
    :goto_0
    iget v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Zoom:I

    iget v3, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Zoom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v1, v2

    .line 285
    .local v1, "y":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 286
    .local v0, "alpha":F
    cmpg-float v2, v1, v4

    if-gtz v2, :cond_2

    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    .line 293
    :goto_1
    const-string v2, "GestrueAssistantForAeAfLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sayToZoomBar() alpha = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mZoomBarCanver:Lcom/lenovo/scg/camera/ui/ZoomBarCanver;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/ui/ZoomBarCanver;->setAlpha(F)V

    .line 295
    return-void

    .line 277
    .end local v0    # "alpha":F
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    sget-object v3, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;->TOUCH_IN_AE:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    if-ne v2, v3, :cond_1

    .line 278
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAeTouchY4Zoom:I

    goto :goto_0

    .line 280
    :cond_1
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mAfTouchY4Zoom:I

    goto :goto_0

    .line 288
    .restart local v0    # "alpha":F
    .restart local v1    # "y":F
    :cond_2
    const/high16 v2, 0x44e10000    # 1800.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    .line 289
    const/4 v0, 0x0

    goto :goto_1

    .line 291
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v1, v4

    const/high16 v4, 0x43c80000    # 400.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    goto :goto_1
.end method

.method public setAeAfLockListenter(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mListener:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AeAfLockListener;

    .line 171
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mOrientation:I

    .line 362
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->sayToProSmartUI()V

    .line 363
    return-void
.end method

.method public setPoint2(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosX2:I

    .line 400
    iput p2, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mPosY2:I

    .line 401
    return-void
.end method

.method public setSmartUiAdd(Z)V
    .locals 3
    .param p1, "add"    # Z

    .prologue
    .line 355
    const-string v0, "GestrueAssistantForAeAfLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartUiAdd --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mSmartUiAdd:Z

    .line 357
    return-void
.end method

.method public setState(Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;)V
    .locals 3
    .param p1, "state"    # Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    .prologue
    .line 418
    const-string v0, "GestrueAssistantForAeAfLock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput-object p1, p0, Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock;->mState:Lcom/lenovo/scg/camera/focus/GestrueAssistantForAeAfLock$AEAFLOCKSTATE;

    .line 420
    return-void
.end method
