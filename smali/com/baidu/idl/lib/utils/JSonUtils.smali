.class public Lcom/baidu/idl/lib/utils/JSonUtils;
.super Ljava/lang/Object;
.source "JSonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 31
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getBoolean JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 45
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 47
    .local v2, "result":D
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 51
    :goto_0
    return-wide v2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "YTL"

    const-string v4, "JSonUtils getDouble JSONException"

    invoke-static {v1, v4}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v1, -0x1

    .line 37
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 41
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getInt JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "result":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getJSONArray JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .param p1, "i"    # I

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getJSONObject JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getJSONObject JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getJSonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 105
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    move-object v1, v2

    .line 109
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "YTL"

    const-string v4, "JSonUtils getJSonObject JSONException"

    invoke-static {v3, v4}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    const-wide/16 v2, -0x1

    .line 77
    .local v2, "result":J
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 81
    :goto_0
    return-wide v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "YTL"

    const-string v4, "JSonUtils getLong JSONException"

    invoke-static {v1, v4}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v1, ""

    .line 17
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "YTL"

    const-string v3, "JSonUtils getString JSONException"

    invoke-static {v2, v3}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putObject(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "YTL"

    const-string v2, "JSonUtils putObject JSONException"

    invoke-static {v1, v2}, Lcom/baidu/idl/lib/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
