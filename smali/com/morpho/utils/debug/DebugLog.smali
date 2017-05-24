.class public Lcom/morpho/utils/debug/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static isDebuggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public static getDebuggable()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    return-void
.end method

.method public static setDebuggable(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 37
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 40
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 48
    const/4 v3, 0x1

    sput-boolean v3, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    .line 53
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DebugLog"

    const-string v4, "Fail to Context#getPackageNam()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 50
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    sput-boolean v5, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    goto :goto_0
.end method

.method public static setDebuggable(Z)V
    .locals 0
    .param p0, "debuggable"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    .line 30
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lcom/morpho/utils/debug/DebugLog;->isDebuggable:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method
