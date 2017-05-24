.class public abstract Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
.super Ljava/lang/Object;
.source "Le3dControllerProxy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected MSG_RUNNABLE:I

.field protected mController:Lcom/lenovo/scg/common/le3d/Le3dController;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "Le3dControllerProxy"

    sput-object v0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/common/le3d/Le3dController;)V
    .locals 1
    .param p1, "controller"    # Lcom/lenovo/scg/common/le3d/Le3dController;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x2710

    iput v0, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->MSG_RUNNABLE:I

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mController:Lcom/lenovo/scg/common/le3d/Le3dController;

    .line 23
    invoke-direct {p0}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->initHandler()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Class;
    .param p4, "x4"    # [Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->reflectFunction(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$1;-><init>(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mHandler:Landroid/os/Handler;

    .line 43
    :cond_0
    return-void
.end method

.method private reflectFunction(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reflectObject"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "argClassList"    # [Ljava/lang/Class;
    .param p4, "argObjectList"    # [Ljava/lang/Object;

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 75
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 87
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    const-string v4, "Failed load the plugin resource map"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    const-string v4, "Failed load the plugin resource map"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchMethodException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    const-string v4, "Failed load the plugin resource map"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->TAG:Ljava/lang/String;

    const-string v4, "Failed load the plugin resource map"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract onHandleMessage(Landroid/os/Message;)V
.end method

.method protected sendFunction(Ljava/lang/String;)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy$2;-><init>(Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->sendRunnable(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method protected sendRunnable(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->MSG_RUNNABLE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 47
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/lenovo/scg/common/le3d/Le3dControllerProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method
