.class public Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;
.super Ljava/lang/Object;
.source "AccessTokenKeeper.java"


# static fields
.field public static final PREFERENCES_NAME:Ljava/lang/String; = "com_weibo_sdk_android"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method

.method public static isTokenValidate(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 58
    const-string v5, "com_weibo_sdk_android"

    const v6, 0x8000

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "token"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "sToken":Ljava/lang/String;
    const-string v5, "expiresTime"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 62
    .local v0, "lTime":J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v4

    .line 63
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 21
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 22
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 23
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "token"

    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    const-string v2, "expiresTime"

    invoke-virtual {p1}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v1, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v1}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>()V

    .line 45
    .local v1, "token":Lcom/weibo/sdk/android/Oauth2AccessToken;
    const-string v2, "com_weibo_sdk_android"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "token"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setToken(Ljava/lang/String;)V

    .line 47
    const-string v2, "expiresTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->setExpiresTime(J)V

    .line 48
    return-object v1
.end method
