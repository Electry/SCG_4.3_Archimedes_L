.class public Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;
.super Ljava/lang/Object;
.source "CaptureLoadingAnimate.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

.field private mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

.field private mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .line 30
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public hideShortLoadingAnimTips()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->hideTips()V

    .line 48
    :cond_0
    return-void
.end method

.method public setController(Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    .line 35
    return-void
.end method

.method public startLongLoadingAnim(Z)V
    .locals 3
    .param p1, "hasBackground"    # Z

    .prologue
    .line 57
    new-instance v0, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->startAnim(Z)V

    .line 59
    return-void
.end method

.method public startShortLoadingAnim(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;Z)V
    .locals 3
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;
    .param p2, "isShowTips"    # Z

    .prologue
    .line 39
    new-instance v0, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mController:Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;-><init>(Landroid/content/Context;Lcom/lenovo/scg/camera/mode/loading/LoadingAnimateController;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->startAnim(Z)V

    .line 42
    return-void
.end method

.method public stopLongLoadingAnim()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mLongLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/LongLoadingAnimation;->stopAnim()V

    .line 63
    return-void
.end method

.method public stopShortLoadingAnim()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/loading/CaptureLoadingAnimate;->mShortLoadingAnim:Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/loading/ShortLoadingAnimation;->stopAnim()V

    .line 53
    return-void
.end method
