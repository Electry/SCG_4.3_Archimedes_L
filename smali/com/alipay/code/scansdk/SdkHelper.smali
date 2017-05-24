.class public Lcom/alipay/code/scansdk/SdkHelper;
.super Ljava/lang/Object;
.source "SdkHelper.java"


# static fields
.field private static sAppKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "lenovo_sdk"

    sput-object v0, Lcom/alipay/code/scansdk/SdkHelper;->sAppKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLog()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alipay/code/scansdk/LogUtil;->init(Z)V

    .line 16
    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/code/scansdk/SdkHelper;->sAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Lcom/alipay/code/scansdk/SdkVersion;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    new-instance v1, Lcom/alipay/code/scansdk/SdkVersion;

    invoke-direct {v1}, Lcom/alipay/code/scansdk/SdkVersion;-><init>()V

    .line 20
    .local v1, "sdkVersion":Lcom/alipay/code/scansdk/SdkVersion;
    const/4 v2, 0x1

    iput v2, v1, Lcom/alipay/code/scansdk/SdkVersion;->mSdkVersion:I

    .line 22
    invoke-static {p0}, Lcom/alipay/code/scansdk/SdkHelper;->queryPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 23
    .local v0, "scanPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 24
    const/4 v2, -0x1

    .line 23
    :goto_0
    iput v2, v1, Lcom/alipay/code/scansdk/SdkVersion;->mScanApkVersion:I

    .line 26
    return-object v1

    .line 24
    :cond_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method private static queryPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 40
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.alipay.mobile.scanx"

    const/4 v4, 0x0

    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "appKey"    # Ljava/lang/String;

    .prologue
    .line 11
    sput-object p0, Lcom/alipay/code/scansdk/SdkHelper;->sAppKey:Ljava/lang/String;

    .line 12
    return-void
.end method
