.class public Lcom/lenovo/scg/camera/function/FunctionUIFactory;
.super Ljava/lang/Object;
.source "FunctionUIFactory.java"


# static fields
.field private static mMapFunc2Class:Ljava/util/HashMap;
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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;

    invoke-direct {v0}, Lcom/lenovo/scg/camera/function/FunctionUIFactory$1;-><init>()V

    sput-object v0, Lcom/lenovo/scg/camera/function/FunctionUIFactory;->mMapFunc2Class:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFunction(ILjava/lang/Object;)Lcom/lenovo/scg/camera/function/FunctionUI;
    .locals 6
    .param p0, "function"    # I
    .param p1, "para"    # Ljava/lang/Object;

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "f":Lcom/lenovo/scg/camera/function/FunctionUI;
    sget-object v4, Lcom/lenovo/scg/camera/function/FunctionUIFactory;->mMapFunc2Class:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 40
    .local v3, "kClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/scg/camera/function/FunctionUI;>;"
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/lenovo/scg/camera/function/FunctionUI;

    move-object v2, v0

    .line 41
    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/function/FunctionUI;->setFunctionPara(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-object v2

    .line 42
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FunctionFactory.createFunction"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/scg/loger/SCGAssert;->ThrowExceptionIfFalse(ZLjava/lang/String;)V

    goto :goto_0
.end method
