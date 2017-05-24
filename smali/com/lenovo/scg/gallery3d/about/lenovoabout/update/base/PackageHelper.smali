.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# instance fields
.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    return-void
.end method


# virtual methods
.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/PackageHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v1, 0x1

    .line 19
    :goto_0
    return v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
