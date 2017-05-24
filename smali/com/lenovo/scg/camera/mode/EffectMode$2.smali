.class Lcom/lenovo/scg/camera/mode/EffectMode$2;
.super Ljava/lang/Object;
.source "EffectMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/EffectMode;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

.field final synthetic val$type:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/EffectMode;Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$2;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/EffectMode$2;->val$type:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/EffectMode$2;->this$0:Lcom/lenovo/scg/camera/mode/EffectMode;

    # getter for: Lcom/lenovo/scg/camera/mode/EffectMode;->mEffectModeController:Lcom/lenovo/scg/camera/mode/controller/EffectModeController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/EffectMode;->access$200(Lcom/lenovo/scg/camera/mode/EffectMode;)Lcom/lenovo/scg/camera/mode/controller/EffectModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/EffectMode$2;->val$type:Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;

    invoke-interface {v0, v1}, Lcom/lenovo/scg/camera/mode/controller/EffectModeController;->lockScreenRotation(Lcom/lenovo/scg/gallery3d/ui/GLRootView$LockScreenType;)V

    .line 582
    return-void
.end method
