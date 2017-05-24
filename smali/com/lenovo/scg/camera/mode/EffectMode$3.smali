.class Lcom/lenovo/scg/camera/mode/EffectMode$3;
.super Ljava/lang/Object;
.source "EffectMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/EffectMode;->unlockScreenRotation()V
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
    .line 588
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$3;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$3;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->unlockScreenRotation()V

    .line 594
    return-void
.end method
