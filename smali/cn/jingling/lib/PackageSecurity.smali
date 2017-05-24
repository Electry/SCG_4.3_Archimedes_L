.class public Lcn/jingling/lib/PackageSecurity;
.super Ljava/lang/Object;
.source "PackageSecurity.java"


# static fields
.field private static final packs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcn/jingling/lib/PackageSecurity$1;

    invoke-direct {v0}, Lcn/jingling/lib/PackageSecurity$1;-><init>()V

    sput-object v0, Lcn/jingling/lib/PackageSecurity;->packs:Ljava/util/List;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;)Z
    .locals 3
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {}, Lcn/jingling/lib/statistics/Config;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 28
    invoke-static {p0}, Lcn/jingling/lib/statistics/Config;->statisticsInit(Landroid/content/Context;)V

    .line 31
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/jingling/lib/PackageSecurity;->packs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 36
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package check failed. This project is not in the white list."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 33
    sget-object v2, Lcn/jingling/lib/PackageSecurity;->packs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const/4 v1, 0x1

    return v1

    .line 31
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
