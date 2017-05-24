.class Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;
.super Ljava/lang/Object;
.source "StrobeMode.java"

# interfaces
.implements Lcom/lenovo/scg/common/animation/MulitiFrameCaptureAnim$MulitiFrameCaptureAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/StrobeMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MulitiFrameAnimationEnd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/StrobeMode;Lcom/lenovo/scg/camera/mode/StrobeMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/StrobeMode;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/StrobeMode$1;

    .prologue
    .line 905
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;-><init>(Lcom/lenovo/scg/camera/mode/StrobeMode;)V

    return-void
.end method


# virtual methods
.method public onAnimEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 910
    const-string v0, "StrobeMode"

    const-string v1, "MulitiFrameAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mIsMulitiFrameAnimationEnd:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$1902(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z

    .line 912
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$2000(Lcom/lenovo/scg/camera/mode/StrobeMode;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "StrobeMode"

    const-string/jumbo v1, "onAnimEnd View.VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # getter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectUI:Lcom/lenovo/scg/camera/mode/StrobeModeSelect;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$700(Lcom/lenovo/scg/camera/mode/StrobeMode;)Lcom/lenovo/scg/camera/mode/StrobeModeSelect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/StrobeModeSelect;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/StrobeMode$MulitiFrameAnimationEnd;->this$0:Lcom/lenovo/scg/camera/mode/StrobeMode;

    # setter for: Lcom/lenovo/scg/camera/mode/StrobeMode;->mSelectViewVisible:Z
    invoke-static {v0, v2}, Lcom/lenovo/scg/camera/mode/StrobeMode;->access$2002(Lcom/lenovo/scg/camera/mode/StrobeMode;Z)Z

    .line 917
    :cond_0
    return-void
.end method
