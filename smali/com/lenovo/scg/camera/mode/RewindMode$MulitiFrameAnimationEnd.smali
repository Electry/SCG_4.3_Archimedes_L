.class Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;
.super Ljava/lang/Object;
.source "RewindMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/RewindMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MulitiFrameAnimationEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RewindMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/RewindMode;Lcom/lenovo/scg/camera/mode/RewindMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/RewindMode;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/RewindMode$1;

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;-><init>(Lcom/lenovo/scg/camera/mode/RewindMode;)V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 2

    .prologue
    .line 1307
    const-string v0, "REwindMode"

    const-string/jumbo v1, "onAnimEnd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mbAttachEnd:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$900(Lcom/lenovo/scg/camera/mode/RewindMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    # getter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1000(Lcom/lenovo/scg/camera/mode/RewindMode;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RewindMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/RewindMode;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/camera/mode/RewindMode;->mbCapAnimEnd:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/RewindMode;->access$1102(Lcom/lenovo/scg/camera/mode/RewindMode;Z)Z

    .line 1312
    return-void
.end method
