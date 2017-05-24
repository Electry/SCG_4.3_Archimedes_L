.class final Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;
.super Ljava/util/HashMap;
.source "FunctionUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/function/FunctionUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Class",
        "<+",
        "Lcom/lenovo/scg/camera/function/FunctionUI;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/camera/function/AutoFunctionUI;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/camera/function/ProFunctionUI;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/camera/function/FrontCameraFunctionUI;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/camera/function/ImageCaptureFunctionUI;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Lcom/lenovo/scg/camera/function/VideoCaptureFunctionUI;

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method
