.class public abstract Lcom/baidu/idl/lib/statistics/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field protected static final STATISTICS_DAY:I = 0xb4

.field public static final STATISTICS_SYNC_CACHE:Z = false

.field public static final SUPPORT_STATISTICS:Z = false

.field protected static final URL_STATISTICS_CONTROL:Ljava/lang/String; = "http://uplog.xiangce.baidu.com/mobileapp/nac"

.field protected static final URL_STATISTICS_POST:Ljava/lang/String; = "http://uplog.xiangce.baidu.com/mobileapp/nupload-log"

.field private static mContext:Landroid/content/Context;

.field private static params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/baidu/idl/lib/statistics/Config;->params:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "cx"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 143
    .local v4, "isReader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 145
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .local v5, "isReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 148
    .local v6, "line":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-nez v6, :cond_2

    .line 156
    if-eqz v5, :cond_0

    .line 157
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 160
    :cond_0
    if-eqz v1, :cond_6

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 170
    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 149
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 152
    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    :goto_2
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    if-eqz v4, :cond_3

    .line 157
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 160
    :cond_3
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 163
    :catch_1
    move-exception v3

    .line 164
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 156
    :goto_3
    if-eqz v4, :cond_4

    .line 157
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 160
    :cond_4
    if-eqz v0, :cond_5

    .line 161
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 167
    :cond_5
    :goto_4
    throw v7

    .line 163
    :catch_2
    move-exception v3

    .line 164
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 163
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 164
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_1

    .line 154
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 151
    .end local v6    # "line":Ljava/lang/String;
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    sget-object v1, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 194
    sget-object v1, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    .line 195
    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 196
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "getIMEI Context is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getUip()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string v0, ""

    .line 94
    .local v0, "mac":Ljava/lang/String;
    :try_start_0
    const-string v1, "/sys/class/net/eth0/address"

    invoke-static {v1}, Lcom/baidu/idl/lib/statistics/Config;->loadFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getMacInWifi()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_1
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getMacInWifi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 105
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 106
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 107
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 109
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "getMacInWifi Context is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "osVersion":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 210
    .local v1, "osver":Ljava/lang/String;
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->setOsVersion(Ljava/lang/String;)V

    .line 213
    .end local v1    # "osver":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private static getParams()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    sget-object v1, Lcom/baidu/idl/lib/statistics/Config;->params:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "param":Ljava/lang/StringBuilder;
    const-string v1, "?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    const-string v2, "&mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    const-string v2, "&app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x229959

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    const-string v2, "&os_ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string v2, "&channelId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lenovo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/idl/lib/statistics/Config;->params:Ljava/lang/String;

    .line 129
    :cond_0
    sget-object v1, Lcom/baidu/idl/lib/statistics/Config;->params:Ljava/lang/String;

    return-object v1
.end method

.method public static getStaticsticsPostUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://uplog.xiangce.baidu.com/mobileapp/nupload-log"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public static getStatisticsControlUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://uplog.xiangce.baidu.com/mobileapp/nac"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/idl/lib/statistics/Config;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public static getStatisticsSupport()Z
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "flag":Z
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getStatisticsSupport()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "support":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    :cond_0
    return v0
.end method

.method public static getStatisticsSupport2()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getStatisticsSupport()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "support":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    const/4 v1, 0x1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getStatiticsDay()I
    .locals 3

    .prologue
    .line 258
    const/16 v0, 0xb4

    .line 259
    .local v0, "d":I
    sget-object v2, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getInstance(Landroid/content/Context;)Lcom/baidu/idl/lib/statistics/StatisticsPreference;

    move-result-object v2

    .line 260
    invoke-virtual {v2}, Lcom/baidu/idl/lib/statistics/StatisticsPreference;->getStatisticsDay()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "day":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    :cond_0
    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 243
    const-string v3, ""

    .line 245
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 246
    sget-object v4, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 247
    .local v2, "manager":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 248
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 255
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 250
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "getVersionName Context is null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static intToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isWiFiActive()Z
    .locals 5

    .prologue
    .line 174
    sget-object v3, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 175
    sget-object v3, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    .line 176
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 177
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 179
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 190
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 181
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    const/4 v3, 0x1

    goto :goto_1

    .line 180
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static loadFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v5, 0x3e8

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 71
    .local v1, "fileData":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .local v4, "reader":Ljava/io/BufferedReader;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 73
    .local v0, "buf":[C
    const/4 v2, 0x0

    .line 74
    .local v2, "numRead":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 78
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 75
    :cond_0
    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "readData":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/idl/lib/statistics/Config;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static statisticsInit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/baidu/idl/lib/statistics/Config;->setContext(Landroid/content/Context;)V

    .line 47
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/idl/lib/statistics/Config$1;

    invoke-direct {v2, p0}, Lcom/baidu/idl/lib/statistics/Config$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "statisticsInit Context is null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
