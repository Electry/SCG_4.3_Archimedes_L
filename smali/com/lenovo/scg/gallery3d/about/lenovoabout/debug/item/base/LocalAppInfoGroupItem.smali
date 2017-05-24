.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;
.super Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
.source "LocalAppInfoGroupItem.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "package_name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string/jumbo v10, "\u672c\u5730\u5e94\u7528\u7a0b\u5e8f"

    const-string/jumbo v11, "\u5e94\u7528\u7a0b\u5e8f\u76f8\u5173\u4fe1\u606f"

    invoke-direct {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 27
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x1083

    invoke-virtual {v10, p2, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 29
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v11, 0x80

    invoke-virtual {v10, p2, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 30
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    .local v7, "name":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-\u5e94\u7528\u4fe1\u606f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->title:Ljava/lang/String;

    .line 33
    const-string v10, "Name"

    invoke-virtual {p0, v10, v7}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v10, "VERSION_CODE"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v10, "VERSION_NAME"

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    .line 38
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 39
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    .local v4, "k":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "metaData."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v10

    .line 62
    :cond_0
    return-void

    .line 44
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_2

    .line 45
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v3, v1, v2

    .line 46
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v1    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v6    # "len$":I
    :cond_2
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 50
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v6, :cond_3

    aget-object v9, v1, v2

    .line 51
    .local v9, "permissions":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "permissions":Ljava/lang/String;
    :cond_3
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v10, :cond_0

    .line 56
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .local v1, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v6, v1

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v6, :cond_0

    aget-object v3, v1, v2

    .line 57
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->lastFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v10, v11}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/base/LocalAppInfoGroupItem;->addNormalChildItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method lastFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
