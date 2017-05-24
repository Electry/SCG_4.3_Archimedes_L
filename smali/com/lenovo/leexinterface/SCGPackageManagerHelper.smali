.class public Lcom/lenovo/leexinterface/SCGPackageManagerHelper;
.super Ljava/lang/Object;
.source "SCGPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCGPackageManagerHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private installPackageImpl(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "flag"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "result":Z
    new-instance v2, Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;-><init>(Lcom/lenovo/leexinterface/SCGPackageManagerHelper;Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;)V

    .line 54
    .local v2, "observer":Lcom/lenovo/leexinterface/SCGPackageManagerHelper$PackageInstallObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 55
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 57
    .local v1, "methodMode":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "installPackage"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/net/Uri;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/pm/IPackageInstallObserver;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    .line 64
    const/4 v5, 0x4

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v5, "SCGPackageManagerHelper"

    const-string v6, "installPackage ok"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    const/4 v4, 0x1

    .line 72
    :cond_0
    :goto_1
    return v4

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SCGPackageManagerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "installPackage, getMethod, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 68
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "SCGPackageManagerHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "installPackage, invoke, e = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public installPackage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;->installPackageImpl(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reInstallPackage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageURI"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, "flag":I
    :try_start_0
    const-class v3, Landroid/content/pm/PackageManager;

    const-string v4, "INSTALL_REPLACE_EXISTING"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 33
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 34
    const-class v3, Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 45
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    if-nez v2, :cond_0

    .line 46
    const-string v3, "SCGPackageManagerHelper"

    const-string v4, "get INSTALL_REPLACE_EXISTING flag error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/lenovo/leexinterface/SCGPackageManagerHelper;->installPackageImpl(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)Z

    move-result v3

    return v3

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
