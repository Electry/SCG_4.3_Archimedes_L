.class public Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$WeiboServerUrl;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    }
.end annotation


# static fields
.field private static final MSG_GET_OAUTH2_TOKEN_FACADE_FAILED:I = 0x1

.field private static final MSG_GET_OAUTH2_TOKEN_FACADE_SUCCESS:I = 0x0

.field public static final REQUST_CODE_SSO_CALLBACK:I = 0x80cd

.field public static final SINA_WEIBO_LOGOUT_ATION:Ljava/lang/String; = "com.lenovo.scg.LOGOUT_ATION"

.field private static final TAG:Ljava/lang/String; = "SinaWeiboFacade"


# instance fields
.field private mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

.field private mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private mUid:Ljava/lang/String;

.field private mWeibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 70
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 289
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$5;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getCONSUMER_APPKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getREDIRECT_URL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read"

    invoke-static {v0, v1, v2}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    .line 83
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->readStoreToken()Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p1, "x1"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->getOAuth2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->saveTokenData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private configureloginMethod()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    :try_start_0
    const-string v2, "com.weibo.sdk.android.sso.SsoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 114
    .local v1, "sso":Ljava/lang/Class;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-nez v2, :cond_0

    .line 115
    const-string v2, "SinaWeiboFacade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCtx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v3, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v3, v2, v4}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "sso":Ljava/lang/Class;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "SinaWeiboFacade"

    const-string v3, "com.weibo.sdk.android.sso.SsoHandler not found!! user \'code\' "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mWeibo:Lcom/weibo/sdk/android/Weibo;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;

    invoke-direct {v4, p0, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$AuthListener;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/weibo/sdk/android/Weibo;->anthorize(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private getOAuth2(Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 243
    const/4 v4, 0x0

    .line 245
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getOAuth2Token(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 252
    :goto_0
    if-nez v4, :cond_0

    .line 253
    const-string v5, "SinaWeiboFacade"

    const-string v6, "getOAuth2, result = null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->sendMassage(ILjava/lang/Object;)V

    .line 282
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string v5, "SinaWeiboFacade"

    const-string v6, "get WeiboException when getOAuth2Token!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v1    # "e":Lcom/weibo/sdk/android/WeiboException;
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 259
    .local v2, "gson":Lcom/google/gson/Gson;
    const/4 v3, 0x0

    .line 261
    .local v3, "response":Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;
    :try_start_1
    const-class v5, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :goto_2
    if-nez v3, :cond_1

    .line 270
    const-string v5, "SinaWeiboFacade"

    const-string v6, "getOAuth2, response = null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0, v8, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->sendMassage(ILjava/lang/Object;)V

    goto :goto_1

    .line 262
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "getOAuth2 get json error:%s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 275
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->uid:Ljava/lang/String;

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    .line 276
    const-string v5, "SinaWeiboFacade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "access_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->access_token:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->access_token:Ljava/lang/String;

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->expires_in:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->saveTokenData(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, v10, v9}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->sendMassage(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private keepToken()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 416
    return-void
.end method

.method private readStoreToken()Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    return-object v0
.end method

.method private saveTokenData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeUserId(Ljava/lang/String;)V

    .line 391
    new-instance v0, Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-direct {v0, p1, p2}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 392
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->keepToken()V

    .line 393
    return-void
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 286
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 287
    return-void
.end method

.method private weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 406
    invoke-static {p1, p2, p3, p4}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 407
    return-void
.end method


# virtual methods
.method public createFriendship(Ljava/lang/String;)V
    .locals 4
    .param p1, "screeName"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 163
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "https://api.weibo.com/2/friendships/create.json"

    const-string v2, "POST"

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$2;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 178
    return-void
.end method

.method public getAccessToken()Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object v0
.end method

.method public getFriendShips()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 183
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "https://api.weibo.com/2/friendships/friends.json"

    const-string v2, "GET"

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 197
    return-void
.end method

.method public getLoginedUserInfo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V
    .locals 4
    .param p1, "getUserInfoListener"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;

    .prologue
    .line 204
    const-string v1, "SinaWeiboFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLoginedUserInfo!! token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 206
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 209
    const-string v1, "feature"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 210
    const-string v1, "https://api.weibo.com/2/statuses/user_timeline.json"

    const-string v2, "GET"

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$4;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$GetUserInfoListener;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 231
    return-void
.end method

.method public getWeiboServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "https://api.weibo.com/2/"

    return-object v0
.end method

.method public loginSinaWeibo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;)V
    .locals 1
    .param p1, "scgAuthListener"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mScgAuthListener:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->configureloginMethod()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->showNetworkDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public logoutSinaWeibo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;)V
    .locals 4
    .param p1, "scgLogoutListener"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;

    .prologue
    .line 134
    new-instance v0, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v0}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 135
    .local v0, "params":Lcom/weibo/sdk/android/WeiboParameters;
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mAccessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v2}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "https://api.weibo.com/2/account/end_session.json/"

    const-string v2, "GET"

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;

    invoke-direct {v3, p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgLogoutListener;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 159
    return-void
.end method

.method public sendSinaWeibo(Lcom/weibo/sdk/android/WeiboParameters;Lcom/weibo/sdk/android/net/RequestListener;)V
    .locals 2
    .param p1, "params"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p2, "listener"    # Lcom/weibo/sdk/android/net/RequestListener;

    .prologue
    .line 200
    const-string v0, "https://upload.api.weibo.com/2/statuses/upload.json"

    const-string v1, "POST"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->weiboRequest(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 201
    return-void
.end method

.method public ssoAuthorizeCallBack(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 107
    :cond_0
    return-void
.end method
