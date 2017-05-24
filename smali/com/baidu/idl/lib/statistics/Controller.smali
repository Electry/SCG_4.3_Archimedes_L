.class public Lcom/baidu/idl/lib/statistics/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field private static instance:Lcom/baidu/idl/lib/statistics/Controller;


# instance fields
.field public sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/idl/lib/statistics/Controller;->instance:Lcom/baidu/idl/lib/statistics/Controller;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/idl/lib/statistics/Controller;->sdf:Ljava/text/SimpleDateFormat;

    .line 19
    return-void
.end method

.method private getControl(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v10, ""

    .line 52
    .local v10, "resultStr":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getStatisticsControlUrl()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 54
    .local v6, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v6, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 55
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_0

    .line 56
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 62
    .end local v4    # "httpRequest":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "httpclient":Lorg/apache/http/client/HttpClient;
    :cond_0
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 65
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v8, "json":Lorg/json/JSONObject;
    const-string v13, "err_code"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "code":Ljava/lang/String;
    const-string v13, "err_msg"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "msg":Ljava/lang/String;
    const-string v13, "data"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "data":Ljava/lang/String;
    const-string v13, "0"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 70
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v7, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "s"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 72
    const-string/jumbo v13, "s"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "s":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v13

    .line 75
    invoke-virtual {v13, v11}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->setStatisticsSupport(Ljava/lang/String;)V

    .line 78
    .end local v11    # "s":Ljava/lang/String;
    :cond_1
    const-string v13, "d"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 79
    const-string v13, "d"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "d":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v13

    .line 82
    invoke-virtual {v13, v1}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->setStatisticsDay(Ljava/lang/String;)V

    .line 85
    .end local v1    # "d":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "uip"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 86
    const-string/jumbo v13, "uip"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "uip":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 88
    invoke-static/range {p1 .. p1}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->setUip(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/String;
    .end local v7    # "jObject":Lorg/json/JSONObject;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v12    # "uip":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 93
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/idl/lib/statistics/Controller;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/baidu/idl/lib/statistics/Controller;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/idl/lib/statistics/Controller;->instance:Lcom/baidu/idl/lib/statistics/Controller;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/baidu/idl/lib/statistics/Controller;

    invoke-direct {v0}, Lcom/baidu/idl/lib/statistics/Controller;-><init>()V

    sput-object v0, Lcom/baidu/idl/lib/statistics/Controller;->instance:Lcom/baidu/idl/lib/statistics/Controller;

    .line 26
    :cond_0
    sget-object v0, Lcom/baidu/idl/lib/statistics/Controller;->instance:Lcom/baidu/idl/lib/statistics/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public asyncAnalysisControl(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/idl/lib/statistics/Controller;->getControl(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lcom/baidu/idl/lib/statistics/StatisticsManager;->getInstance()Lcom/baidu/idl/lib/statistics/StatisticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/idl/lib/statistics/StatisticsManager;->execute()V

    .line 31
    return-void
.end method

.method public isCurrentDay(Ljava/lang/String;)Z
    .locals 10
    .param p1, "start_tm"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v4

    .line 38
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    iget-object v5, p0, Lcom/baidu/idl/lib/statistics/Controller;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 40
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "s":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, "s2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " 00:00:00"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " 23:59:59"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "s":Ljava/text/SimpleDateFormat;
    .end local v3    # "s2":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method
