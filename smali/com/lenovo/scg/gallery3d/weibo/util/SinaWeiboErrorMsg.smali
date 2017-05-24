.class public Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;
.super Ljava/lang/Object;
.source "SinaWeiboErrorMsg.java"


# static fields
.field private static mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mDefaultErrorMsg:Ljava/lang/String;

.field private mSinaWeiboResultMsgTables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20006"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0803

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20016"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0804

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20019"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0805

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20020"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0806

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20021"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0807

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    const-string v1, "20032"

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v3, 0x7f0f0808

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mCtx:Landroid/content/Context;

    const v1, 0x7f0f0885

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mDefaultErrorMsg:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static declared-synchronized getInStance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;

    .line 36
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mInstance:Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getErrorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v1, "-1000"

    .line 48
    .local v1, "error_code":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 54
    .end local v1    # "error_code":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "error_code":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 50
    .end local v2    # "error_code":Ljava/lang/String;
    .restart local v1    # "error_code":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e1":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    .line 52
    .end local v1    # "error_code":Ljava/lang/String;
    .restart local v2    # "error_code":Ljava/lang/String;
    goto :goto_0
.end method

.method public getErrorMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mSinaWeiboResultMsgTables:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/SinaWeiboErrorMsg;->mDefaultErrorMsg:Ljava/lang/String;

    goto :goto_0
.end method
