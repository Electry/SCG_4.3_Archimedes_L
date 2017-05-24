.class Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$1;
.super Ljava/lang/Object;
.source "FrontCameraFunctionUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->enter()V
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
    .line 239
    iput-object p1, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    const-string v0, "FrontCameraFunctionUI"

    const-string v1, "mFrontSpec, onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI$1;->this$0:Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;->removeFirstEnterSpecView()Z

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
