.class public Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;
.super Ljava/lang/Object;
.source "CameraSwitchControlUtils.java"


# static fields
.field public static final mDelayTime:I = 0xfa

.field public static mIsSwitching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->mIsSwitching:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endSwitchCamera()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->mIsSwitching:Z

    .line 14
    return-void
.end method

.method public static isSwitchingCamera()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->mIsSwitching:Z

    return v0
.end method

.method public static startSwitchCamera()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/scg/common/utils/camera/CameraSwitchControlUtils;->mIsSwitching:Z

    .line 10
    return-void
.end method
