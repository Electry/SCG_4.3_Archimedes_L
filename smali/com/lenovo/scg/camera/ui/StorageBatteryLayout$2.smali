.class Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$2;
.super Ljava/lang/Object;
.source "StorageBatteryLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->startHideSeriousLowStorageViewAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$2;->this$0:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout$2;->this$0:Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;

    # invokes: Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->startShowSeriousLowStorageViewAnim()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;->access$100(Lcom/lenovo/scg/camera/ui/StorageBatteryLayout;)V

    .line 267
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 262
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 258
    return-void
.end method
