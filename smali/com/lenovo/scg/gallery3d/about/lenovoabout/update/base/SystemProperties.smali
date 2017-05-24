.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static sGetMethod:Ljava/lang/reflect/Method;

.field private static sSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 12
    sput-object v8, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sGetMethod:Ljava/lang/reflect/Method;

    .line 13
    sput-object v8, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sSetMethod:Ljava/lang/reflect/Method;

    .line 17
    :try_start_0
    const-string v8, "android.os.SystemProperties"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 18
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 20
    .local v6, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 21
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 22
    .local v7, "name":Ljava/lang/String;
    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 23
    sput-object v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sGetMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 25
    sput-object v5, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sSetMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SystemProperties"

    const-string v9, "Failed to init."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sGetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 43
    .end local p1    # "def":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 39
    .restart local p1    # "def":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sGetMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemProperties"

    const-string v2, "Failed to get."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sSetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/SystemProperties;->sSetMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemProperties"

    const-string v2, "Failed to set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
