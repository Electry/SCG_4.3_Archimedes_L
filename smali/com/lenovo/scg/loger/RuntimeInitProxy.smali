.class public Lcom/lenovo/scg/loger/RuntimeInitProxy;
.super Ljava/lang/Object;
.source "RuntimeInitProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuntimeInitProxy"

.field public static mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/loger/RuntimeInitProxy;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApplicationObject()Landroid/os/IBinder;
    .locals 7

    .prologue
    .line 28
    sget-object v4, Lcom/lenovo/scg/loger/RuntimeInitProxy;->mClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 30
    :try_start_0
    const-string v4, "com.android.internal.os.RuntimeInit"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/lenovo/scg/loger/RuntimeInitProxy;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 40
    .local v2, "mBinder":Landroid/os/IBinder;
    :try_start_1
    sget-object v4, Lcom/lenovo/scg/loger/RuntimeInitProxy;->mClass:Ljava/lang/Class;

    const-string v5, "getApplicationObject"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    .local v3, "method":Ljava/lang/reflect/Method;
    sget-object v4, Lcom/lenovo/scg/loger/RuntimeInitProxy;->mClass:Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/IBinder;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 55
    .end local v2    # "mBinder":Landroid/os/IBinder;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 31
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "RuntimeInitProxy"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 34
    const/4 v2, 0x0

    goto :goto_0

    .line 42
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "mBinder":Landroid/os/IBinder;
    :catch_1
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "RuntimeInitProxy"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 45
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "RuntimeInitProxy"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "RuntimeInitProxy"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "RuntimeInitProxy"

    invoke-static {v4, v1}, Lcom/lenovo/scg/loger/SCGError;->E(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
