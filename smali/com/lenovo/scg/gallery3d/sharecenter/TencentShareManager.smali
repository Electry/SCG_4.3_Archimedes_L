.class public Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
.super Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
.source "TencentShareManager.java"


# static fields
.field public static final APP_KEY:Ljava/lang/String; = "801324552"

.field public static final APP_SECRET:Ljava/lang/String; = "c589f9dbb576f9858da490d9f0cea822"

.field private static final FILE_NAME:Ljava/lang/String; = "tencentAttentionList"

.field public static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final KEY_EMPTY:Ljava/lang/String; = "empty"

.field public static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KEY_OPEN_ID:Ljava/lang/String; = "open_id"

.field public static final KEY_OPEN_KEY:Ljava/lang/String; = "open_key"

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "tencent_weibo"

.field public static final REDIRECT_URI:Ljava/lang/String; = "http://www.lenovomm.com/appstore/html/home.html"

.field public static final RESULT_GET_AUTHRIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TencentShareManager"

.field public static mSingleTencentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filePath:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

.field private oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;-><init>()V

    .line 83
    new-instance v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v1, "http://www.lenovomm.com/appstore/html/home.html"

    invoke-direct {v0, v1}, Lcom/tencent/weibo/oauthv2/OAuthV2;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 99
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    .line 100
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCurrentSharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sharecenter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->filePath:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->getToken()V

    .line 103
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->loginTencentWeibo()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method private checkTencentList()V
    .locals 3

    .prologue
    .line 221
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 224
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    .line 229
    .local v0, "sTencentParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    if-eqz v0, :cond_0

    .line 231
    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;)V

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$2;->start()V

    .line 244
    .end local v0    # "sTencentParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
    :cond_0
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 229
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, "192.24.24.36"

    return-object v0
.end method

.method private isShareSuccess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 371
    if-nez p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    const-string v0, "\"msg\":\"ok\""

    .line 373
    .local v0, "ok":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loginTencentWeibo()V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/tencent/weibo/webview/OAuthV2AuthorizeWebView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oauth"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-class v3, Lcom/lenovo/scg/gallery3d/sharecenter/LoadingAtivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v1, "loadingIntnet":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method


# virtual methods
.method public clearTencentCache()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->deleteTencentUsers()V

    .line 167
    :cond_0
    return-void
.end method

.method public getAttentionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "reqnum"    # Ljava/lang/String;
    .param p3, "startindex"    # Ljava/lang/String;
    .param p4, "oAuth"    # Lcom/tencent/weibo/beans/OAuth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Lcom/tencent/weibo/oauthv2/OAuthV2Request;

    invoke-direct {v1}, Lcom/tencent/weibo/oauthv2/OAuthV2Request;-><init>()V

    .line 513
    .local v1, "requestAPI":Lcom/tencent/weibo/api/RequestAPI;
    const-string v2, "https://open.t.qq.com/api/friends/idollist"

    .line 515
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/tencent/weibo/utils/QArrayList;

    invoke-direct {v0}, Lcom/tencent/weibo/utils/QArrayList;-><init>()V

    .line 516
    .local v0, "paramsList":Lcom/tencent/weibo/utils/QArrayList;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "format"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 517
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "startindex"

    invoke-direct {v3, v4, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 518
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "reqnum"

    invoke-direct {v3, v4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 519
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "mode"

    const-string v5, "1"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/weibo/utils/QArrayList;->add(Lorg/apache/http/NameValuePair;)Z

    .line 520
    invoke-interface {v1, v2, v0, p4}, Lcom/tencent/weibo/api/RequestAPI;->getResource(Ljava/lang/String;Ljava/util/List;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAttentionList(Z)Ljava/util/LinkedList;
    .locals 28
    .param p1, "refresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v10, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->filePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "tencentAttentionList"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v10, "file":Ljava/io/File;
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 433
    .local v11, "gson":Lcom/google/gson/Gson;
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 434
    .local v23, "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    new-instance v24, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$4;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v15

    .line 435
    .local v15, "listType":Ljava/lang/reflect/Type;
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    .local v22, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v12, 0x1

    .line 437
    .local v12, "hasnext":Z
    const/16 v16, 0x0

    .line 438
    .local v16, "page":I
    const/16 v19, 0x1e

    .line 440
    .local v19, "reqnum":I
    if-nez p1, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 441
    invoke-static {v10}, Lcom/lenovo/scg/common/utils/file/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v14

    .line 442
    .local v14, "jsonRes":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 443
    invoke-virtual {v11, v14, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    check-cast v23, Ljava/util/LinkedList;

    .line 444
    .restart local v23    # "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v24, v23

    .line 498
    .end local v14    # "jsonRes":Ljava/lang/String;
    :goto_0
    return-object v24

    .line 459
    .local v17, "pos":I
    .local v18, "reponse":Ljava/lang/String;
    :cond_0
    add-int/lit8 v24, v17, 0x9

    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 460
    .local v5, "c":C
    const/16 v24, 0x31

    move/from16 v0, v24

    if-ne v5, v0, :cond_1

    .line 461
    const/4 v12, 0x0

    .line 464
    :cond_1
    const-string v21, "\"info\":"

    .local v21, "startAs":Ljava/lang/String;
    const-string v9, ",\"nextstartpos\""

    .line 465
    .local v9, "endAs":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    add-int v20, v24, v25

    .line 466
    .local v20, "start":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 467
    .local v8, "end":I
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 469
    .local v13, "jsonData":Ljava/lang/String;
    new-instance v24, Lcom/google/gson/Gson;

    invoke-direct/range {v24 .. v24}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v15}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    .line 470
    .local v6, "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 471
    add-int/lit8 v16, v16, 0x1

    .line 472
    if-eqz v12, :cond_8

    .line 473
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 474
    const/16 v24, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    .end local v5    # "c":C
    .end local v6    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    .end local v8    # "end":I
    .end local v9    # "endAs":Ljava/lang/String;
    .end local v13    # "jsonData":Ljava/lang/String;
    .end local v17    # "pos":I
    .end local v18    # "reponse":Ljava/lang/String;
    .end local v20    # "start":I
    .end local v21    # "startAs":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 450
    const/16 v18, 0x0

    .line 452
    .restart local v18    # "reponse":Ljava/lang/String;
    const-string v24, "json"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    mul-int v27, v19, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->getAttentionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v18

    .line 453
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    if-eqz v24, :cond_6

    .line 490
    .end local v18    # "reponse":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->size()I

    move-result v24

    if-eqz v24, :cond_4

    .line 491
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 492
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 495
    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->filePath:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "tencentAttentionList"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v24 .. v26}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v24, v23

    .line 498
    goto/16 :goto_0

    .line 457
    .restart local v18    # "reponse":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v24, "hasnext"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 458
    .restart local v17    # "pos":I
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const/16 v24, 0x0

    goto/16 :goto_0

    .line 476
    .restart local v5    # "c":C
    .restart local v6    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    .restart local v8    # "end":I
    .restart local v9    # "endAs":Ljava/lang/String;
    .restart local v13    # "jsonData":Ljava/lang/String;
    .restart local v20    # "start":I
    .restart local v21    # "startAs":Ljava/lang/String;
    :cond_7
    const/16 v24, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 485
    .end local v5    # "c":C
    .end local v6    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    .end local v8    # "end":I
    .end local v9    # "endAs":Ljava/lang/String;
    .end local v13    # "jsonData":Ljava/lang/String;
    .end local v17    # "pos":I
    .end local v20    # "start":I
    .end local v21    # "startAs":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 486
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 479
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "c":C
    .restart local v6    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    .restart local v8    # "end":I
    .restart local v9    # "endAs":Ljava/lang/String;
    .restart local v13    # "jsonData":Ljava/lang/String;
    .restart local v17    # "pos":I
    .restart local v20    # "start":I
    .restart local v21    # "startAs":Ljava/lang/String;
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 480
    :try_start_2
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 482
    :cond_9
    const/16 v24, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public getPlatformDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f07d4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformIconId()I
    .locals 1

    .prologue
    .line 550
    const v0, 0x7f02091e

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTencentAttentionList(Z)Ljava/util/List;
    .locals 24
    .param p1, "isRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    .line 386
    .local v19, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    new-instance v20, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 387
    .local v12, "listType":Ljava/lang/reflect/Type;
    const/4 v10, 0x1

    .line 388
    .local v10, "hasnext":Z
    const/4 v13, 0x0

    .line 389
    .local v13, "page":I
    const/16 v16, 0x1e

    .line 390
    .local v16, "reqnum":I
    if-nez p1, :cond_2

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getTencentUsers()Ljava/util/List;

    move-result-object v19

    .line 392
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, v19

    .line 426
    :goto_0
    return-object v20

    .line 407
    .local v14, "pos":I
    .local v15, "reponse":Ljava/lang/String;
    :cond_0
    add-int/lit8 v20, v14, 0x9

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 408
    .local v5, "c":C
    const/16 v20, 0x31

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    .line 409
    const/4 v10, 0x0

    .line 412
    :cond_1
    const-string v18, "\"info\":"

    .local v18, "startAs":Ljava/lang/String;
    const-string v9, ",\"nextstartpos\""

    .line 413
    .local v9, "endAs":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int v17, v20, v21

    .line 414
    .local v17, "start":I
    invoke-virtual {v15, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 415
    .local v8, "end":I
    move/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 417
    .local v11, "jsonData":Ljava/lang/String;
    new-instance v20, Lcom/google/gson/Gson;

    invoke-direct/range {v20 .. v20}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    .line 418
    .local v6, "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    add-int/lit8 v13, v13, 0x1

    .line 397
    .end local v5    # "c":C
    .end local v6    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/TencentUser;>;"
    .end local v8    # "end":I
    .end local v9    # "endAs":Ljava/lang/String;
    .end local v11    # "jsonData":Ljava/lang/String;
    .end local v14    # "pos":I
    .end local v15    # "reponse":Ljava/lang/String;
    .end local v17    # "start":I
    .end local v18    # "startAs":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 398
    const/4 v15, 0x0

    .line 400
    .restart local v15    # "reponse":Ljava/lang/String;
    const-string v20, "json"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    mul-int v23, v16, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->getAttentionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/weibo/beans/OAuth;)Ljava/lang/String;

    move-result-object v15

    .line 401
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    if-eqz v20, :cond_4

    .line 425
    .end local v15    # "reponse":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->insertTencentUsers(Ljava/util/List;)V

    move-object/from16 v20, v19

    .line 426
    goto/16 :goto_0

    .line 405
    .restart local v15    # "reponse":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v20, "hasnext"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 406
    .restart local v14    # "pos":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getTencentUsers()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto/16 :goto_0

    .line 420
    .end local v14    # "pos":I
    :catch_0
    move-exception v7

    .line 421
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getToken()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "801324552"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientId(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "c589f9dbb576f9858da490d9f0cea822"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setClientSecret(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setResponseType(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "tencent_weibo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    .local v0, "sp":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "access_token"

    const-string v3, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setAccessToken(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v2, "expires_in"

    const-string v3, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setExpiresIn(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string/jumbo v2, "open_id"

    const-string v3, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenid(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string/jumbo v2, "open_key"

    const-string v3, "empty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/weibo/oauthv2/OAuthV2;->setOpenkey(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public getUserSelcetStatus()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public isLogin()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v4, "tencent_weibo"

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v3, "access_token"

    const-string v4, "empty"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "token":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TencentWeiboUtil: isAuthorized: token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 175
    const-string v3, "empty"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public keepToken()V
    .locals 5

    .prologue
    .line 181
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v3, "tencent_weibo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "access_token"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v2, "expires_in"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getExpiresIn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    const-string/jumbo v2, "open_id"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string/jumbo v2, "open_key"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v3}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getOpenkey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    return-void
.end method

.method public login()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->showNetworkDialog(Landroid/content/Context;)V

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 117
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->loginTencentWeibo()V

    goto :goto_0
.end method

.method public logoutTencentAccount()V
    .locals 5

    .prologue
    .line 141
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v3, "tencent_weibo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "oauth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/weibo/oauthv2/OAuthV2;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    invoke-virtual {v0}, Lcom/tencent/weibo/oauthv2/OAuthV2;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f07e1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->keepToken()V

    .line 154
    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSelected:Z

    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f07ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public saveAttentionList(Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    return-void
.end method

.method public saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v13, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "picKind":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 327
    .local v6, "lTime":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "sharecenter/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "pathRoot":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "share_failed_file_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, "sDstFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v5, "fSrc":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v4, "fDst":Ljava/io/File;
    :try_start_0
    invoke-static {v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const/4 v2, 0x2

    .line 338
    .local v2, "action":I
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "content"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v13, "action"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string/jumbo v13, "pic_url"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v13, "share_type"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v13, "draft_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 346
    const-string/jumbo v13, "pic_lat"

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 349
    const-string/jumbo v13, "pic_long"

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1
    const/4 v11, 0x0

    .line 363
    .local v11, "uri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 368
    :goto_1
    return-void

    .line 333
    .end local v2    # "action":I
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "action":I
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 365
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "saveDraft, Has exception when insert values to cache db,error: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public saveScreenName()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public saveUserIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 533
    return-void
.end method

.method public setCheckbox(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "box"    # Landroid/widget/CheckBox;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCheckBox:Landroid/widget/CheckBox;

    .line 584
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "select"    # Z

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSelected:Z

    if-ne v0, p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->login()V

    .line 574
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 575
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSelected:Z

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f07ec

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 572
    :cond_2
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSelected:Z

    goto :goto_1
.end method

.method public setSendReport(ILcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "repot"    # Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    .prologue
    .line 589
    iput p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mPosition:I

    .line 590
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    .line 591
    return-void
.end method

.method public setUserSelectStatus(Z)Z
    .locals 1
    .param p1, "select"    # Z

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public share(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 381
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 249
    new-instance v1, Lcom/tencent/weibo/api/TAPI;

    const-string v2, "2.a"

    invoke-direct {v1, v2}, Lcom/tencent/weibo/api/TAPI;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "tAPI":Lcom/tencent/weibo/api/TAPI;
    :try_start_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastPicture: file is not exists: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 321
    .end local v11    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 259
    .restart local v11    # "file":Ljava/io/File;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->oAuthV2:Lcom/tencent/weibo/oauthv2/OAuthV2;

    const-string v3, "json"

    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->getIp()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/tencent/weibo/api/TAPI;->addPic(Lcom/tencent/weibo/beans/OAuth;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, "response":Ljava/lang/String;
    const-string/jumbo v2, "tencent weibo upload : ###########"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u817e\u8baf\u5fae\u535a\u5206\u4eab\u5b8c\u6210 & \uff1a response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v14

    .line 266
    .local v14, "mIsBGDataEnable":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v13

    .line 267
    .local v13, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v12

    .line 268
    .local v12, "isAvatarShareReportSuppored":Z
    const-string v2, "TencentShareManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "share, mIsBGDataEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAvatarShareReportSuppored="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v13, :cond_1

    .line 273
    if-nez v14, :cond_4

    .line 275
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 276
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V

    .line 292
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->checkTencentList()V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    if-eqz v2, :cond_2

    .line 296
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isShareSuccess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    sget-object v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v7, 0x7f0f0884

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V

    .line 304
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    if-eqz v2, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;->onShareFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "isAvatarShareReportSuppored":Z
    .end local v13    # "isAvatarSuppored":Z
    .end local v14    # "mIsBGDataEnable":Z
    .end local v15    # "response":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-virtual {v1}, Lcom/tencent/weibo/api/TAPI;->shutdownConnection()V

    goto/16 :goto_0

    .line 279
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "isAvatarShareReportSuppored":Z
    .restart local v13    # "isAvatarSuppored":Z
    .restart local v14    # "mIsBGDataEnable":Z
    .restart local v15    # "response":Ljava/lang/String;
    :cond_4
    if-eqz v12, :cond_1

    .line 281
    :try_start_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 282
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 308
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "isAvatarShareReportSuppored":Z
    .end local v13    # "isAvatarSuppored":Z
    .end local v14    # "mIsBGDataEnable":Z
    .end local v15    # "response":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 309
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "socket\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5\uff01\uff01\uff01"

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->checkTencentList()V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    if-eqz v2, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;->onShareFinished(Ljava/lang/Object;)V

    .line 317
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    sget-object v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v7, 0x7f0f0885

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V

    goto :goto_3

    .line 299
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "isAvatarShareReportSuppored":Z
    .restart local v13    # "isAvatarSuppored":Z
    .restart local v14    # "mIsBGDataEnable":Z
    .restart local v15    # "response":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;

    sget-object v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->TENCENT:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mContext:Landroid/app/Activity;

    const v7, 0x7f0f0885

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;->onShareResult(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 614
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    new-instance v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-direct {v6, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .local v6, "shareTencentParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
    monitor-enter p0

    .line 617
    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager$5;->start()V

    .line 636
    :goto_0
    return-void

    .line 618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 630
    .end local v6    # "shareTencentParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
    :cond_0
    new-instance v6, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;

    invoke-direct {v6, p1, p2, p3, p4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .restart local v6    # "shareTencentParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;
    monitor-enter p0

    .line 632
    :try_start_2
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->mSingleTencentList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
