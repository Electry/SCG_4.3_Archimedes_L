.class Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$2;
.super Ljava/lang/Object;
.source "FrontCameraFunctionUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->initSwitchBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$2;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$2;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    iget-object v0, v0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->mPhotoModule:Lcom/lenovo/scg/camera/mode/controller/PhotoModuleSuperEx;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->switchToBackCamera()V

    .line 546
    return-void
.end method
