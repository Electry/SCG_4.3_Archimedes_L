.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;
.super Ljava/lang/Object;
.source "AndroidManifestChecker.java"


# instance fields
.field mActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPackageInfo:Landroid/content/pm/PackageInfo;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceivers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mActivities:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPermissions:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mReceivers:Ljava/util/HashSet;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    return-void
.end method


# virtual methods
.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1083

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 29
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    .line 30
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mActivities:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 31
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v0, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 32
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mActivities:Ljava/util/HashSet;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "len$":I
    :cond_0
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 37
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPermissions:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 38
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 39
    .local v5, "permissions":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPermissions:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "permissions":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    .line 44
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mReceivers:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 45
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .local v0, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 46
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mReceivers:Ljava/util/HashSet;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 49
    .end local v0    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "len$":I
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    return-void
.end method

.method public isActivityExited(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPermissionExited(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mPermissions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReceiverExited(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/AndroidManifestChecker;->mReceivers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
