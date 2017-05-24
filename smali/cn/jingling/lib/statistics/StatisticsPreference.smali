.class public Lcn/jingling/lib/statistics/StatisticsPreference;
.super Ljava/lang/Object;
.source "StatisticsPreference.java"


# static fields
.field public static final META:Ljava/lang/String; = "META"

.field private static instance:Lcn/jingling/lib/statistics/StatisticsPreference;


# instance fields
.field public context:Landroid/content/Context;

.field public metaPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcn/jingling/lib/statistics/StatisticsPreference;->instance:Lcn/jingling/lib/statistics/StatisticsPreference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->context:Landroid/content/Context;

    .line 15
    const-string v0, "META"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/jingling/lib/statistics/StatisticsPreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcn/jingling/lib/statistics/StatisticsPreference;->instance:Lcn/jingling/lib/statistics/StatisticsPreference;

    if-nez v0, :cond_0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    new-instance v0, Lcn/jingling/lib/statistics/StatisticsPreference;

    invoke-direct {v0, p0}, Lcn/jingling/lib/statistics/StatisticsPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/jingling/lib/statistics/StatisticsPreference;->instance:Lcn/jingling/lib/statistics/StatisticsPreference;

    .line 23
    :cond_0
    sget-object v0, Lcn/jingling/lib/statistics/StatisticsPreference;->instance:Lcn/jingling/lib/statistics/StatisticsPreference;

    return-object v0
.end method


# virtual methods
.method public getOsVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "osver"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatisticsControlFirst()Z
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string v1, "isFirst"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getStatisticsControlTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatisticsDay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "statisticsDay"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatisticsGUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string v1, "GUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatisticsSupport()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "statisticsSupport"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUip()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "uip"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "osver"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "osver"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public setStatisticsControlFirst(Z)V
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isFirst"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method public setStatisticsControlTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ControlTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public setStatisticsDay(Ljava/lang/String;)V
    .locals 2
    .param p1, "support"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "statisticsDay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public setStatisticsGUID(Ljava/lang/String;)V
    .locals 2
    .param p1, "GUID"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public setStatisticsSupport(Ljava/lang/String;)V
    .locals 2
    .param p1, "support"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "statisticsSupport"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method

.method public setUip(Ljava/lang/String;)V
    .locals 2
    .param p1, "uip"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/jingling/lib/statistics/StatisticsPreference;->metaPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "uip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method
