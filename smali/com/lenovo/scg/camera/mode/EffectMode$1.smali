.class Lcom/lenovo/scg/camera/mode/EffectMode$1;
.super Ljava/lang/Object;
.source "EffectMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/EffectMode;->destoryWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/EffectMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/EffectMode;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$1;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$1;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$000(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;->destoryEffectWindow()V

    .line 567
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$1;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectUI:Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;
    invoke-static {v0, v1}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$002(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;)Lcom/lenovo/scg/camera/mode/ui/EffectModeUI;

    .line 568
    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destoryWindow in EffectMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method
