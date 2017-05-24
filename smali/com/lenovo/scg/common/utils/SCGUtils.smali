.class public Lcom/lenovo/scg/common/utils/SCGUtils;
.super Ljava/lang/Object;
.source "SCGUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;,
        Lcom/lenovo/scg/common/utils/SCGUtils$SUSProcessCallback;
    }
.end annotation


# static fields
.field private static final DELAYED_TIME:J = 0x3e8L

.field public static final DISABLE_REPORT:Z = false

.field private static final MANUFACTURER_NAME:Ljava/lang/String; = "lenovo"

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SCGUtils"

.field private static final TRUNK_VERSION_EXTRA:Ljava/lang/String; = "_trunk"

.field private static final VERSION_NUMBER_SEVERAL:I = 0x4

.field private static final VERSION_NUMBER_TRUNK:Ljava/lang/String; = "0"

.field private static mContext1:Landroid/content/Context;

.field private static mHelveticaTypeface:Landroid/graphics/Typeface;

.field static mNetWorkTost:Landroid/widget/Toast;

.field private static final mSCGPath:Ljava/lang/String;

.field private static mSUSProcessCallback:Lcom/lenovo/scg/common/utils/SCGUtils$SUSProcessCallback;

.field private static mTypeface:Landroid/graphics/Typeface;

.field public static proArm:[Ljava/lang/String;

.field public static proX86:[Ljava/lang/String;


# instance fields
.field private DOWNLOAD_PATH:Ljava/lang/String;

.field handler:Landroid/os/Handler;

.field private mApkName:Ljava/lang/String;

.field private mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mUrl:Ljava/lang/String;

.field private mVerCode:Ljava/lang/String;

.field private mVerName:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.SCG/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mSCGPath:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->SDCARD_PATH:Ljava/lang/String;

    .line 87
    sput-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    .line 89
    sput-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->mHelveticaTypeface:Landroid/graphics/Typeface;

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "K910"

    aput-object v1, v0, v3

    const-string v1, "K920"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->proArm:[Ljava/lang/String;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "K900"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->proX86:[Ljava/lang/String;

    .line 134
    sput-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->mNetWorkTost:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mVersionName:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mVersionCode:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mChannelName:Ljava/lang/String;

    .line 1081
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 1128
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/common/utils/SCGUtils$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/utils/SCGUtils$3;-><init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->handler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mVersionName:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mVersionCode:I

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mChannelName:Ljava/lang/String;

    .line 1081
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 1128
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/lenovo/scg/common/utils/SCGUtils$3;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/utils/SCGUtils$3;-><init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->handler:Landroid/os/Handler;

    .line 144
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    .line 145
    return-void
.end method

.method public static H2I(Ljava/lang/String;)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 766
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/lenovo/scg/common/utils/SCGUtils;)Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mVerCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/common/utils/SCGUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/common/utils/SCGUtils;->putStringToPreferences(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lenovo/scg/common/utils/SCGUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/common/utils/SCGUtils;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public static checkNetWorkIsAvaliable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 469
    sget-object v3, Lcom/lenovo/scg/common/utils/SCGUtils;->mNetWorkTost:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f073b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/lenovo/scg/common/utils/SCGUtils;->mNetWorkTost:Landroid/widget/Toast;

    .line 472
    :cond_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    move-object v1, v3

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 473
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 474
    .local v2, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 475
    .local v0, "isNetWorkAvaliable":Z
    :cond_1
    if-nez v0, :cond_2

    .line 476
    sget-object v3, Lcom/lenovo/scg/common/utils/SCGUtils;->mNetWorkTost:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 478
    :cond_2
    return v0
.end method

.method public static getColorFromRGB(Ljava/lang/String;)I
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 759
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 760
    .local v0, "mBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    const-string v1, "88888"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->H2I(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->H2I(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->H2I(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    return v1
.end method

.method public static getHelveticaTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 781
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mHelveticaTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getLeCSCVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->GetInstance()Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/LeCSCJNI/CLeCSCVersion;->GetVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLeGAVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLeImageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->GetInstance()Lcom/lenovo/scg/LeImageJI/CLeImageVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/LeImageJI/CLeImageVersion;->GetVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLeSCFersion(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 205
    const-string v0, "ex_feature-version"

    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSCGRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mSCGPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getSCGTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getSdcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->SDCARD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static initHelveticaTypeface(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 776
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mHelveticaTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Helvetica_LT_25_Ultra_Light.TTF"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mHelveticaTypeface:Landroid/graphics/Typeface;

    .line 778
    :cond_0
    return-void
.end method

.method public static initSCGTypeface(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initHelveticaTypeface(Landroid/content/Context;)V

    .line 509
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    .line 510
    return-void
.end method

.method public static isBGDataEnable()Z
    .locals 5

    .prologue
    .line 1151
    const/4 v1, 0x1

    .line 1153
    .local v1, "result":Z
    const-string/jumbo v2, "persist.backgrounddata.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/util/SysProp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "property":Ljava/lang/String;
    const-string v2, "SCGUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "property="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1156
    const/4 v1, 0x0

    .line 1158
    :cond_0
    return v1
.end method

.method public static isNeedUpdateVersionName(Landroid/content/SharedPreferences;I)Z
    .locals 5
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "currentVersionCode"    # I

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "needUpdate":Z
    const-string v2, "VerCode"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "versionCode":Ljava/lang/String;
    const-string v2, "SCGUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedUpdateVersionName, currentVersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    const/4 v2, 0x0

    .line 813
    :goto_0
    return v2

    .line 808
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 809
    const-string v2, "SCGUtils"

    const-string/jumbo v3, "versionCode > currentVersionCode, need to display new version name!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x1

    .line 812
    :cond_1
    const-string v2, "SCGUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedUpdateVersionName, needUpdate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 813
    goto :goto_0
.end method

.method public static isProProject(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1165
    const-string v2, "arm"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->proArm:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1167
    sget-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->proArm:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 1166
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1171
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v2, "x86"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1172
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->proX86:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1173
    sget-object v2, Lcom/lenovo/scg/common/utils/SCGUtils;->proX86:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1178
    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private putStringToPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "KEY"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 455
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mPreferences:Landroid/content/SharedPreferences;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method private static recycleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1187
    if-eqz p1, :cond_0

    .line 1189
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1190
    invoke-virtual {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1191
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1193
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1194
    .local v1, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1195
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    const-string v2, "ReleaseDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bmp recycle : w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1205
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public static recycleViewDrawable(Landroid/view/View;)V
    .locals 6
    .param p0, "vRoot"    # Landroid/view/View;

    .prologue
    .line 1210
    if-eqz p0, :cond_1

    .line 1212
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 1214
    check-cast v4, Landroid/view/ViewGroup;

    .line 1215
    .local v4, "vGroup":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1216
    .local v2, "nViewNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1218
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1219
    .local v3, "v":Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleViewDrawable(Landroid/view/View;)V

    .line 1216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1221
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1222
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1239
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    .end local v2    # "nViewNum":I
    .end local v4    # "vGroup":Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    return-void

    .line 1226
    :cond_2
    const/4 v0, 0x0

    .line 1235
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1236
    invoke-static {p0, v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->recycleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 516
    sput-object p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext1:Landroid/content/Context;

    .line 517
    return-void
.end method

.method public static setSCGCustomDialogTypeface(Landroid/app/AlertDialog;)V
    .locals 13
    .param p0, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 676
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mAlert"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 677
    .local v2, "mAlert":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 678
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 681
    .local v0, "alertController":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mTitleView"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 682
    .local v6, "mTitleView":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 683
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 684
    .local v10, "title":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 685
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 689
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mMessageView"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 690
    .local v5, "mMessageView":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 691
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 692
    .local v7, "message":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 693
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 697
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mButtonPositive"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 698
    .local v4, "mButtonPositive":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 699
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 700
    .local v9, "pButton":Landroid/widget/Button;
    if-eqz v9, :cond_2

    .line 701
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 705
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mButtonNegative"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 706
    .local v3, "mButtonNegative":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 707
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 708
    .local v8, "nButton":Landroid/widget/Button;
    if-eqz v8, :cond_3

    .line 709
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 719
    .end local v0    # "alertController":Ljava/lang/Object;
    .end local v2    # "mAlert":Ljava/lang/reflect/Field;
    .end local v3    # "mButtonNegative":Ljava/lang/reflect/Field;
    .end local v4    # "mButtonPositive":Ljava/lang/reflect/Field;
    .end local v5    # "mMessageView":Ljava/lang/reflect/Field;
    .end local v6    # "mTitleView":Ljava/lang/reflect/Field;
    .end local v7    # "message":Landroid/widget/TextView;
    .end local v8    # "nButton":Landroid/widget/Button;
    .end local v9    # "pButton":Landroid/widget/Button;
    .end local v10    # "title":Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 714
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 716
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 717
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSCGTypeface(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 530
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 531
    return-object p0
.end method

.method public static setSCGTypeface(Landroid/text/TextPaint;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 525
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 526
    return-object p0
.end method

.method public static setSCGTypeface(Landroid/app/ActionBar;)V
    .locals 7
    .param p0, "mActionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 732
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mActionView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 733
    .local v2, "mActionView":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 734
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 737
    .local v0, "actionView":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mTitleView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 738
    .local v3, "mTitleView":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 739
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 740
    .local v4, "title":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 741
    sget-object v5, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 755
    .end local v0    # "actionView":Ljava/lang/Object;
    .end local v2    # "mActionView":Ljava/lang/reflect/Field;
    .end local v3    # "mTitleView":Ljava/lang/reflect/Field;
    .end local v4    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 747
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 750
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSCGTypeface(Landroid/app/AlertDialog;)V
    .locals 13
    .param p0, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 620
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mAlert"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 621
    .local v2, "mAlert":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 622
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, "alertController":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mTitleView"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 626
    .local v6, "mTitleView":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 627
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 628
    .local v10, "title":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 629
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 633
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mMessageView"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 634
    .local v5, "mMessageView":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 635
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 636
    .local v7, "message":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 637
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 641
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mButtonPositive"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 642
    .local v4, "mButtonPositive":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 643
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 644
    .local v9, "pButton":Landroid/widget/Button;
    if-eqz v9, :cond_2

    .line 645
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 649
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "mButtonNegative"

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 650
    .local v3, "mButtonNegative":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 651
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 652
    .local v8, "nButton":Landroid/widget/Button;
    if-eqz v8, :cond_3

    .line 653
    sget-object v11, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 663
    .end local v0    # "alertController":Ljava/lang/Object;
    .end local v2    # "mAlert":Ljava/lang/reflect/Field;
    .end local v3    # "mButtonNegative":Ljava/lang/reflect/Field;
    .end local v4    # "mButtonPositive":Ljava/lang/reflect/Field;
    .end local v5    # "mMessageView":Ljava/lang/reflect/Field;
    .end local v6    # "mTitleView":Ljava/lang/reflect/Field;
    .end local v7    # "message":Landroid/widget/TextView;
    .end local v8    # "nButton":Landroid/widget/Button;
    .end local v9    # "pButton":Landroid/widget/Button;
    .end local v10    # "title":Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v1

    .line 657
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 658
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 660
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 661
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSCGTypeface(Landroid/view/ViewGroup;)V
    .locals 5
    .param p0, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 535
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 536
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 537
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 538
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "v":Landroid/view/View;
    sget-object v4, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 535
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .restart local v3    # "v":Landroid/view/View;
    :cond_1
    instance-of v4, v3, Landroid/widget/Button;

    if-eqz v4, :cond_2

    .line 540
    check-cast v3, Landroid/widget/Button;

    .end local v3    # "v":Landroid/view/View;
    sget-object v4, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 541
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_3

    .line 542
    check-cast v3, Landroid/widget/EditText;

    .end local v3    # "v":Landroid/view/View;
    sget-object v4, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 543
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 544
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "v":Landroid/view/View;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 547
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 548
    .local v0, "end":J
    return-void
.end method

.method public static setSCGTypeface(Landroid/widget/Button;)V
    .locals 1
    .param p0, "mButton"    # Landroid/widget/Button;

    .prologue
    .line 589
    if-eqz p0, :cond_0

    .line 590
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 592
    :cond_0
    return-void
.end method

.method public static setSCGTypeface(Landroid/widget/RadioButton;)V
    .locals 1
    .param p0, "mRadioButton"    # Landroid/widget/RadioButton;

    .prologue
    .line 575
    if-eqz p0, :cond_0

    .line 576
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 578
    :cond_0
    return-void
.end method

.method public static setSCGTypeface(Landroid/widget/RadioGroup;)V
    .locals 4
    .param p0, "mRadioGroup"    # Landroid/widget/RadioGroup;

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    .line 560
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 561
    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 562
    .local v2, "mButton":Landroid/widget/RadioButton;
    sget-object v3, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v2    # "mButton":Landroid/widget/RadioButton;
    :cond_0
    return-void
.end method

.method public static setSCGTypeface(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "mView"    # Landroid/widget/TextView;

    .prologue
    .line 603
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext1:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->initSCGTypeface(Landroid/content/Context;)V

    .line 604
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 605
    sget-object v0, Lcom/lenovo/scg/common/utils/SCGUtils;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 607
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->dismiss()V

    .line 1095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    .line 1097
    :cond_0
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    iget-object v1, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    .line 1098
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->setOrientation(IZ)V

    .line 1099
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    new-instance v1, Lcom/lenovo/scg/common/utils/SCGUtils$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/utils/SCGUtils$1;-><init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->setCancelUpdateListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    new-instance v1, Lcom/lenovo/scg/common/utils/SCGUtils$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/common/utils/SCGUtils$2;-><init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->setUpdateListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    return-void
.end method


# virtual methods
.method public setSUSProcessCallback(Lcom/lenovo/scg/common/utils/SCGUtils$SUSProcessCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/lenovo/scg/common/utils/SCGUtils$SUSProcessCallback;

    .prologue
    .line 795
    sput-object p1, Lcom/lenovo/scg/common/utils/SCGUtils;->mSUSProcessCallback:Lcom/lenovo/scg/common/utils/SCGUtils$SUSProcessCallback;

    .line 796
    return-void
.end method

.method public updateAutoUpdateDialogOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->setOrientation(IZ)V

    .line 1145
    :cond_0
    return-void
.end method

.method public updateVersionWithSUS(ZZZI)V
    .locals 14
    .param p1, "isNewVersionRemindChecked"    # Z
    .param p2, "isShowUpdateDialog"    # Z
    .param p3, "isShowPromp"    # Z
    .param p4, "orientation"    # I

    .prologue
    .line 823
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 824
    const-string/jumbo v11, "network is not avaliable, will not check scg version!"

    invoke-static {v11}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 825
    if-eqz p3, :cond_0

    .line 826
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    const v12, 0x7f0f0975

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 828
    :cond_0
    const/4 v11, 0x0

    sput-boolean v11, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    .line 1065
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 833
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->isVersionUpdateStarted()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 834
    if-eqz p3, :cond_1

    .line 835
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    const v12, 0x7f0f0744

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1001
    :cond_3
    const/4 v9, 0x0

    .line 1002
    .local v9, "verCode":I
    const/4 v10, 0x0

    .line 1003
    .local v10, "verName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1004
    .local v3, "channelName":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1006
    .local v8, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1007
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1008
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1009
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current verCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",verName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1013
    .local v6, "manufacturer":Ljava/lang/String;
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MANUFACTURER="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-eqz v6, :cond_7

    const-string v11, "lenovo"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1015
    const-string v11, "SCGUtils"

    const-string v12, "MANUFACTURER is lenovo, go on check model!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1017
    .local v7, "model":Ljava/lang/String;
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MODEL="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    if-eqz v7, :cond_6

    .line 1019
    const-string v11, "lenovo"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1020
    const-string v11, "SCGUtils"

    const-string v12, "MODEL is lenovo, use BOARD as channelkey!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 1022
    .local v1, "board":Ljava/lang/String;
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BOARD="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    move-object v3, v1

    .line 1051
    .end local v1    # "board":Ljava/lang/String;
    .end local v7    # "model":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "result the channelkey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "manufacturer":Ljava/lang/String;
    :goto_2
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-static {v11, v8, v9, v3}, Lcom/lenovo/lps/sus/SUS;->AsyncQueryLatestVersionByPackageName(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)J

    goto/16 :goto_0

    .line 1026
    .restart local v5    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "manufacturer":Ljava/lang/String;
    .restart local v7    # "model":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v11, "SCGUtils"

    const-string v12, "MODEL is not lenovo, use MODEL as channelkey!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v11, " "

    const-string v12, "_"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1028
    const/4 v11, 0x4

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "branchnumber":Ljava/lang/String;
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "branchnumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const-string v11, "0"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1031
    const-string v11, "SCGUtils"

    const-string v12, "branchnumber is 0, so is trunk branch, channelkey add \'_trunk\'!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_trunk"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1036
    .end local v2    # "branchnumber":Ljava/lang/String;
    :cond_6
    const-string v11, "SCGUtils"

    const-string v12, "MODEL is null, use BOARD as channelkey!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 1038
    .restart local v1    # "board":Ljava/lang/String;
    const-string v11, "SCGUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BOARD="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    move-object v3, v1

    goto/16 :goto_1

    .line 1043
    .end local v1    # "board":Ljava/lang/String;
    .end local v7    # "model":Ljava/lang/String;
    :cond_7
    const-string v11, "SCGUtils"

    const-string v12, "MANUFACTURER is not lenovo, use manifest\'s \'SUS_CHANNEL\' as channelkey!!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v11, p0, Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1046
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_4

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_4

    .line 1047
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "SUS_CHANNEL"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto/16 :goto_1

    .line 1054
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "manufacturer":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1055
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2
.end method
