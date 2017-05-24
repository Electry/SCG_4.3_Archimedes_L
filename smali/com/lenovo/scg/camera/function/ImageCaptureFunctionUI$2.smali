.class Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$2;
.super Ljava/lang/Object;
.source "ImageCaptureFunctionUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->hideShortcutPanel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$2;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI$2;->this$0:Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    # getter for: Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->mBigPanelContainer:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;->access$200(Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 208
    return-void
.end method
