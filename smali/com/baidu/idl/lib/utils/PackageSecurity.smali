.class public Lcom/baidu/idl/lib/utils/PackageSecurity;
.super Ljava/lang/Object;
.source "PackageSecurity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;)Z
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/baidu/idl/lib/SDKProtocol;->packs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package check failed. This project is not in the white list."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 12
    sget-object v2, Lcom/baidu/idl/lib/SDKProtocol;->packs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    const/4 v1, 0x1

    return v1

    .line 10
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
