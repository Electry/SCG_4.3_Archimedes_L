.class public Lcom/baidu/idl/lib/utils/IDLInitializer;
.super Ljava/lang/Object;
.source "IDLInitializer.java"


# static fields
.field private static final APP_GUID:Ljava/lang/String; = "app_guid"

.field private static isInit:Z

.field private static mContext:Landroid/content/Context;

.field private static sGuid:Ljava/lang/String;

.field private static sImei:Ljava/lang/String;

.field private static sMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sGuid:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sMacAddress:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sImei:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateGuid(Landroid/content/Context;)V
    .locals 5
    .param p0, "cx"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v3, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 71
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 72
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "app_guid"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "currentGuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 75
    .local v2, "uuid":Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "app_guid"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_0
    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sGuid:Ljava/lang/String;

    .line 80
    .end local v0    # "currentGuid":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method private static generateRequestParam()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sMacAddress:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/idl/lib/utils/PhoneBasicUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sImei:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/idl/lib/utils/IDLInitializer;->generateGuid(Landroid/content/Context;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sGuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sImei:Ljava/lang/String;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->sMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit:Z

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->mContext:Landroid/content/Context;

    .line 34
    :cond_0
    return-void
.end method

.method public static statisticsInit(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/idl/lib/utils/IDLInitializer;->isInit:Z

    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/baidu/idl/lib/utils/IDLInitializer;->setContext(Landroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/baidu/idl/lib/utils/IDLInitializer;->generateRequestParam()V

    .line 46
    invoke-static {p0}, Lcom/baidu/idl/lib/statistics/Config;->statisticsInit(Landroid/content/Context;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "IDLSDK"

    const-string/jumbo v1, "statisticsInit context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
