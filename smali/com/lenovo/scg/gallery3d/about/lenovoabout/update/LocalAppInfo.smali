.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;
.super Ljava/lang/Object;
.source "LocalAppInfo.java"


# instance fields
.field public app_channel:Ljava/lang/String;

.field public app_icon:I

.field public app_key:Ljava/lang/String;

.field public app_name:Ljava/lang/String;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field public package_name:Ljava/lang/String;

.field public version_code:I

.field public version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "aboutConfig":Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 49
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_code:I

    .line 52
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->version_name:Ljava/lang/String;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_name:Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_icon:I

    .line 58
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 59
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "SUS_APPKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_key:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfig;->getChannel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    .line 64
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lenovo_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "SUS_CHANNEL"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->app_channel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/LocalAppInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
