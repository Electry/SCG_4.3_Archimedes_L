.class public Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils;
.super Ljava/lang/Object;
.source "MiniCameraNetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    }
.end annotation


# static fields
.field private static final RET_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MiniCameraNetUtils"

.field private static final TIME_OUT_CONNECT:I = 0x3a98

.field private static final TIME_OUT_READ:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getNetBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "sURL"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 127
    .local v4, "imageUrl":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "imageUrl":Ljava/net/URL;
    .local v5, "imageUrl":Ljava/net/URL;
    move-object v4, v5

    .line 131
    .end local v5    # "imageUrl":Ljava/net/URL;
    .restart local v4    # "imageUrl":Ljava/net/URL;
    :goto_0
    if-nez v4, :cond_0

    move-object v1, v0

    .line 159
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 128
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 129
    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 137
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 138
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 140
    const-string v8, "Content-Type"

    const-string/jumbo v9, "text/html"

    invoke-virtual {v2, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    const/16 v8, 0x3a98

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 145
    .local v7, "responseCode":I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 146
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 147
    .local v6, "is":Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 152
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    :goto_2
    move-object v1, v0

    .line 159
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 154
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getNetType(Landroid/content/Context;)Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 69
    .local v6, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 70
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 71
    .local v7, "wifiState":Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_1

    .line 73
    :cond_0
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 120
    .end local v7    # "wifiState":Landroid/net/NetworkInfo$State;
    :goto_0
    return-object v1

    .line 77
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 78
    .local v2, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 80
    .local v3, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v8, :cond_3

    .line 82
    :cond_2
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 83
    .local v1, "enumType":Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 84
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 85
    .local v4, "netType":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 95
    goto :goto_0

    .line 97
    :pswitch_3
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 98
    goto :goto_0

    .line 101
    :pswitch_4
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 102
    goto :goto_0

    .line 111
    :pswitch_5
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    .line 112
    goto :goto_0

    .line 120
    .end local v1    # "enumType":Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;
    .end local v3    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v4    # "netType":I
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    sget-object v1, Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;->NET_TYPE_UNKNOWN:Lcom/lenovo/scg/minicamera/net/MiniCameraNetUtils$EnumNetType;

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetworkAvaliable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    move-object v0, v2

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
