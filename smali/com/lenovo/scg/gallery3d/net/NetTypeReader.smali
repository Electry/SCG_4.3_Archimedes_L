.class public Lcom/lenovo/scg/gallery3d/net/NetTypeReader;
.super Ljava/lang/Object;
.source "NetTypeReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetType(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 16
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 17
    .local v6, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 18
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 19
    .local v7, "wifiState":Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_1

    .line 21
    :cond_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_WIFI:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 68
    .end local v7    # "wifiState":Landroid/net/NetworkInfo$State;
    :goto_0
    return-object v1

    .line 25
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 26
    .local v2, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 28
    .local v3, "mobileState":Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v8, :cond_3

    .line 30
    :cond_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 31
    .local v1, "enumType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    const-string/jumbo v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 32
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    .line 33
    .local v4, "netType":I
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 37
    goto :goto_0

    .line 39
    :pswitch_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_2G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 43
    goto :goto_0

    .line 45
    :pswitch_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 46
    goto :goto_0

    .line 49
    :pswitch_4
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 50
    goto :goto_0

    .line 59
    :pswitch_5
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_MOBILE_3G:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    .line 60
    goto :goto_0

    .line 68
    .end local v1    # "enumType":Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;
    .end local v3    # "mobileState":Landroid/net/NetworkInfo$State;
    .end local v4    # "netType":I
    .end local v5    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    sget-object v1, Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;->NET_TYPE_UNKNOWN:Lcom/lenovo/scg/gallery3d/net/NetDataConst$EnumNetType;

    goto :goto_0

    .line 33
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
