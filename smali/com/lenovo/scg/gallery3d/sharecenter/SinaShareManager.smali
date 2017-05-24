.class public Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
.super Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
.source "SinaShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;,
        Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "sinaAttentionList"

.field public static final I_AM_USER_CENTER:I = 0x1

.field public static final KEY_EMPTY:Ljava/lang/String; = ""

.field public static final KEY_EXPIRES_IN:Ljava/lang/String; = "expiresTime"

.field private static final KEY_PAY_NO_ATTENTION_TO_SCG_WEIBO:Ljava/lang/String; = "payNoAttentionToScgWeibo"

.field public static final KEY_TOKEN:Ljava/lang/String; = "token"

.field public static final KEY_WEIBO_UID:Ljava/lang/String; = "weibo_uid"

.field public static final KEY_WEIBO_USER_NAME:Ljava/lang/String; = "key_weibo_user_name"

.field private static final MSG_GET_OAUTH2_TOKEN_FAILED:I = 0x1

.field private static final MSG_GET_OAUTH2_TOKEN_SUCCESS:I = 0x0

.field public static final PR_SUPER_GALLERY_SETTINGS:Ljava/lang/String; = "super_gallery_settings"

.field public static final SINA_WEIBO_AUTH_SUCCESS_ACTION:Ljava/lang/String; = "com.lenovo.scg.auth.success"

.field private static final TAG:Ljava/lang/String; = "ShareCenter"

.field public static mSPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEFAULT_PAY_NO_ATTENTION_TO_SCG_WEIBO:Z

.field private accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

.field private filePath:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mPicExifInterface:Landroid/media/ExifInterface;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

.field private mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

.field private mSinaWeiboAssisant:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

.field private mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

.field private mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

.field private requestListener:Lcom/weibo/sdk/android/net/RequestListener;

.field private userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;

.field private weibo:Lcom/weibo/sdk/android/Weibo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/SingleList;->getInstance()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;-><init>()V

    .line 105
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->DEFAULT_PAY_NO_ATTENTION_TO_SCG_WEIBO:Z

    .line 119
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 135
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    .line 361
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    .line 879
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$7;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    .line 156
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->SINA:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCurrentSharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .line 157
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    .line 158
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

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->filePath:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getCONSUMER_APPKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getREDIRECT_URL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email,direct_messages_read,direct_messages_write,friendships_groups_read,friendships_groups_write,statuses_to_me_read"

    invoke-static {v0, v1, v2}, Lcom/weibo/sdk/android/Weibo;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/weibo/sdk/android/Weibo;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->weibo:Lcom/weibo/sdk/android/Weibo;

    .line 162
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getToken()V

    .line 164
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    .line 165
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboAssisant:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->loginSinaWeibo()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/camera/UserCenterManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followingCameraAndGallery(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # J

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUserInfo(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getOAuth2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboAssisant:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboAssisant;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Lcom/weibo/sdk/android/Oauth2AccessToken;)Lcom/weibo/sdk/android/Oauth2AccessToken;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Lcom/weibo/sdk/android/Oauth2AccessToken;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isPayNoAttentionToSCGWeibo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft()V

    return-void
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private assemblePicExInfo(Lcom/weibo/sdk/android/WeiboParameters;Landroid/media/ExifInterface;)V
    .locals 22
    .param p1, "bundle"    # Lcom/weibo/sdk/android/WeiboParameters;
    .param p2, "mPicExifInterface2"    # Landroid/media/ExifInterface;

    .prologue
    .line 1324
    const/16 v18, 0x0

    .line 1325
    .local v18, "width":I
    const/4 v12, 0x0

    .line 1326
    .local v12, "height":I
    const-string/jumbo v16, "none"

    .line 1327
    .local v16, "model":Ljava/lang/String;
    const-string/jumbo v7, "none"

    .line 1328
    .local v7, "exposure_time":Ljava/lang/String;
    const-string/jumbo v3, "none"

    .line 1329
    .local v3, "aperture":Ljava/lang/String;
    const-string/jumbo v17, "none"

    .line 1330
    .local v17, "white_balance":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1331
    .local v9, "flash":I
    const-string/jumbo v13, "none"

    .line 1332
    .local v13, "iso":Ljava/lang/String;
    const-string/jumbo v5, "none"

    .line 1333
    .local v5, "dateTime":Ljava/lang/String;
    const-string/jumbo v10, "none"

    .line 1334
    .local v10, "focal_length":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1335
    const-string v19, "ImageWidth"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 1336
    const-string v19, "ImageLength"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v12

    .line 1337
    const-string v19, "Model"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1338
    const-string v19, "ExposureTime"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1339
    const-string v19, "FNumber"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1340
    const-string v19, "WhiteBalance"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1341
    const-string v19, "Flash"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v9

    .line 1342
    const-string v19, "ISOSpeedRatings"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1343
    const-string v19, "DateTime"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1344
    const-string v19, "FocalLength"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1346
    :cond_0
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 1347
    .local v14, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1348
    .local v4, "cameraObject":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 1349
    .local v11, "galleryObject":Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1350
    .local v8, "extraObject":Lorg/json/JSONObject;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 1352
    .local v15, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v19, "lenovo"

    const-string/jumbo v20, "supergallery"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1353
    const-string/jumbo v19, "version"

    const-string v20, "1.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1354
    const-string v19, "appid"

    const-string v20, "LenovoSCG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1355
    const-string/jumbo v19, "model"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1356
    const-string/jumbo v19, "width"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1357
    const-string v19, "height"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1358
    const-string v19, "bits"

    const-string/jumbo v20, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1359
    const-string v19, "iso"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1360
    const-string v19, "aperture"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1361
    const-string/jumbo v19, "white_balance"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1362
    const-string v19, "exposure_time"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    const-string v19, "flash"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1364
    const-string v19, "datetime"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1365
    const-string v19, "focal_length"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1366
    const-string v19, "camera"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1367
    const-string/jumbo v19, "type"

    const-string/jumbo v20, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1368
    const-string v19, "beauty"

    const-string/jumbo v20, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1369
    const-string/jumbo v19, "special_effect"

    const-string/jumbo v20, "none"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1370
    const-string v19, "gallery"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1371
    const-string v19, "extra"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1372
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    const-string v19, "ShareCenter"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "annotations length    :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v19, "annotations"

    invoke-virtual {v14}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1373
    :catch_0
    move-exception v6

    .line 1374
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey"    # Ljava/lang/String;
    .param p3, "extraValue"    # J
    .param p5, "questMode"    # Ljava/lang/String;

    .prologue
    .line 851
    const/4 v4, 0x0

    .line 852
    .local v4, "result":Ljava/lang/String;
    new-instance v3, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v3}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 853
    .local v3, "params":Lcom/weibo/sdk/android/WeiboParameters;
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v5}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 854
    const-string v5, "access_token"

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v6}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 857
    invoke-virtual {v3, p2, p3, p4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 860
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v5, p1, p5, v3}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 876
    :goto_0
    return-object v4

    .line 862
    :catch_0
    move-exception v2

    .line 863
    .local v2, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v2}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 864
    const-string v5, "ShareCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, WeiboException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    .end local v2    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v1

    .line 867
    .local v1, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 868
    const-string v5, "ShareCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 871
    .end local v1    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v0

    .line 872
    .local v0, "eio":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 873
    const-string v5, "ShareCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configueOpenUrl, IOException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configureloginMethod()V
    .locals 5

    .prologue
    .line 247
    :try_start_0
    const-string v2, "com.weibo.sdk.android.sso.SsoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 249
    .local v1, "sso":Ljava/lang/Class;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    if-nez v2, :cond_0

    .line 250
    const-string v2, "ShareCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v2, Lcom/weibo/sdk/android/sso/SsoHandler;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->weibo:Lcom/weibo/sdk/android/Weibo;

    invoke-direct {v2, v3, v4}, Lcom/weibo/sdk/android/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/weibo/sdk/android/Weibo;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    .line 252
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSsoHandler:Lcom/weibo/sdk/android/sso/SsoHandler;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weibo/sdk/android/sso/SsoHandler;->authorize(Lcom/weibo/sdk/android/WeiboAuthListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "sso":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "ShareCenter"

    const-string v3, "com.weibo.sdk.android.sso.SsoHandler not found!! user \'code\' "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->weibo:Lcom/weibo/sdk/android/Weibo;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$AuthDialogListener;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    invoke-virtual {v2, v3, v4}, Lcom/weibo/sdk/android/Weibo;->anthorize(Landroid/content/Context;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    goto :goto_0
.end method

.method private followingCameraAndGallery(ZZ)V
    .locals 3
    .param p1, "camera"    # Z
    .param p2, "gallery"    # Z

    .prologue
    .line 1054
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1055
    :cond_0
    const-string/jumbo v1, "\u8054\u60f3\u8d85\u7ea7\u76f8\u673a"

    .line 1056
    .local v1, "userSuperCamera":Ljava/lang/String;
    const-string/jumbo v2, "\u8054\u60f3\u8d85\u7ea7\u76f8\u518c"

    .line 1058
    .local v2, "userSuperGallery":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;ZZ)V

    .line 1122
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static getNumberInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    .locals 3
    .param p0, "res"    # Ljava/lang/String;

    .prologue
    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sina: getNumberInfo: res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 1184
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    .line 1185
    .local v0, "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    return-object v0
.end method

.method private getOAuth2(Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 759
    const/4 v4, 0x0

    .line 761
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getOAuth2Token(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 768
    :goto_0
    if-nez v4, :cond_0

    .line 769
    const-string v5, "ShareCenter"

    const-string/jumbo v6, "result == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, v8, v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->sendMassage(ILjava/lang/Object;)V

    .line 797
    :goto_1
    return-void

    .line 763
    :catch_0
    move-exception v1

    .line 764
    .local v1, "e":Lcom/weibo/sdk/android/WeiboException;
    const-string v5, "ShareCenter"

    const-string v6, "get WeiboException when getOAuth2Token!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {v1}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    goto :goto_0

    .line 774
    .end local v1    # "e":Lcom/weibo/sdk/android/WeiboException;
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 775
    .local v2, "gson":Lcom/google/gson/Gson;
    const/4 v3, 0x0

    .line 777
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

    .line 785
    :goto_2
    if-nez v3, :cond_1

    .line 786
    const-string v5, "ShareCenter"

    const-string/jumbo v6, "response == null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-direct {p0, v8, v10}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->sendMassage(ILjava/lang/Object;)V

    goto :goto_1

    .line 778
    :catch_1
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "getOAuth2 get json error:%s"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 790
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "ShareCenter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->access_token:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v5, Lcom/weibo/sdk/android/Oauth2AccessToken;

    iget-object v6, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->access_token:Ljava/lang/String;

    iget-object v7, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->expires_in:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/weibo/sdk/android/Oauth2AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 792
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->keepToken()V

    .line 796
    iget-object v5, v3, Lcom/lenovo/scg/gallery3d/weibo/util/OAuth2TokenObject;->uid:Ljava/lang/String;

    invoke-direct {p0, v9, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->sendMassage(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private getUserInfo(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 807
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;J)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$6;->start()V

    .line 823
    return-void
.end method

.method private isPayNoAttentionToSCGWeibo()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1046
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "super_gallery_settings"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1047
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "payNoAttentionToScgWeibo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private loginSinaWeibo()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->loginSinaWeibo(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$ScgAuthListener;)V

    .line 224
    return-void
.end method

.method private saveDraft()V
    .locals 25

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 553
    :goto_0
    return-void

    .line 506
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "pic"

    invoke-virtual/range {v21 .. v22}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 508
    .local v17, "sPath":Ljava/lang/String;
    const-string v21, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 509
    .local v11, "picKind":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 510
    .local v8, "lTime":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "sharecenter/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "pathRoot":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "share_failed_file_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 512
    .local v13, "sDstFile":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v7, "fSrc":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v6, "fDst":Ljava/io/File;
    :try_start_0
    invoke-static {v7, v6}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    move-object/from16 v21, v0

    const-string/jumbo v22, "status"

    invoke-virtual/range {v21 .. v22}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 521
    .local v12, "sContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    move-object/from16 v21, v0

    const-string v22, "lat"

    invoke-virtual/range {v21 .. v22}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 522
    .local v14, "sLat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    move-object/from16 v21, v0

    const-string v22, "long"

    invoke-virtual/range {v21 .. v22}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 523
    .local v15, "sLon":Ljava/lang/String;
    const/4 v4, 0x2

    .line 525
    .local v4, "action":I
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 527
    .local v20, "values":Landroid/content/ContentValues;
    const-string v21, "content"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v21, "action"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string/jumbo v21, "pic_url"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v21, "share_type"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v21, "draft_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 532
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 533
    const-string/jumbo v21, "pic_lat"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 536
    const-string/jumbo v21, "pic_long"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_2
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v19

    .line 539
    .local v19, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v19, :cond_3

    .line 540
    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v16

    .line 541
    .local v16, "sName":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 542
    const-string/jumbo v21, "nick"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .end local v16    # "sName":Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    .line 548
    .local v18, "uri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    goto/16 :goto_0

    .line 516
    .end local v4    # "action":I
    .end local v12    # "sContent":Ljava/lang/String;
    .end local v14    # "sLat":Ljava/lang/String;
    .end local v15    # "sLon":Ljava/lang/String;
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .end local v20    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 517
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 549
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "action":I
    .restart local v12    # "sContent":Ljava/lang/String;
    .restart local v14    # "sLat":Ljava/lang/String;
    .restart local v15    # "sLon":Ljava/lang/String;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .restart local v20    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 550
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "saveDraft, Has exception when insert values to cache db,error: %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 800
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 801
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method

.method private storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 13
    .param p1, "userInfo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 827
    const-string/jumbo v4, "screenName"

    .line 828
    .local v4, "KEY_SCREEN_NAME":Ljava/lang/String;
    const-string/jumbo v3, "profileImageUrl"

    .line 829
    .local v3, "KEY_PROFILE_IMAGE_URL":Ljava/lang/String;
    const-string v2, "location"

    .line 830
    .local v2, "KEY_LOCATION":Ljava/lang/String;
    const-string v1, "friendsCount"

    .line 831
    .local v1, "KEY_FRIENDS_COUNT":Ljava/lang/String;
    const-string v0, "followsCount"

    .line 832
    .local v0, "KEY_FOLlOWERS_COUNT":Ljava/lang/String;
    const-string/jumbo v5, "statusesCount"

    .line 833
    .local v5, "KEY_STATUSES_COUNT":Ljava/lang/String;
    const-string v6, "description"

    .line 834
    .local v6, "KEY_USER_DESCRIPTION":Ljava/lang/String;
    const-string/jumbo v7, "uid"

    .line 835
    .local v7, "KEY_USER_UID":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 836
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v11, "super_gallery_settings"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 837
    .local v9, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 838
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v2, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v10

    invoke-interface {v8, v1, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 841
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v10

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 842
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getStatuses_count()I

    move-result v10

    invoke-interface {v8, v5, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 843
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 844
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v6, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 845
    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v10

    invoke-interface {v8, v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 846
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSinaCache()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1163
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    if-eqz v4, :cond_0

    .line 1164
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->deleteSinaUsers()V

    .line 1166
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const-string/jumbo v5, "super_gallery_settings"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1167
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1171
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const-string v5, "com_weibo_sdk_android"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1172
    .local v2, "sina_sdk_sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1173
    .local v1, "sina_sdk_editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1174
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1176
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    .line 1177
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1179
    :cond_1
    return-void
.end method

.method public followSCGWeibo()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1042
    invoke-direct {p0, v0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->followingCameraAndGallery(ZZ)V

    .line 1043
    return-void
.end method

.method public getAttentionList(Z)Ljava/util/LinkedList;
    .locals 31
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
    .line 619
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    .line 620
    .local v10, "gson":Lcom/google/gson/Gson;
    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V

    .line 621
    .local v26, "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    new-instance v27, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$5;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$5;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v16

    .line 622
    .local v16, "listType":Ljava/lang/reflect/Type;
    new-instance v9, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->filePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "sinaAttentionList"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v9, "file":Ljava/io/File;
    if-nez p1, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 625
    invoke-static {v9}, Lcom/lenovo/scg/common/utils/file/FileUtils;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 626
    .local v15, "jsonRes":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 627
    const-string v27, "[{"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 628
    .local v21, "start1":I
    const-string/jumbo v27, "}]"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v8, v27, 0x2

    .line 629
    .local v8, "end1":I
    move/from16 v0, v21

    invoke-virtual {v15, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "json":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v13, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    check-cast v26, Ljava/util/LinkedList;

    .line 631
    .restart local v26    # "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v27, v26

    .line 694
    .end local v8    # "end1":I
    .end local v13    # "json":Ljava/lang/String;
    .end local v15    # "jsonRes":Ljava/lang/String;
    .end local v21    # "start1":I
    :goto_0
    return-object v27

    .line 638
    :cond_0
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 640
    .local v19, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 642
    .local v25, "uidStr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 643
    .local v17, "next_cursor":I
    const/16 v24, 0x0

    .line 644
    .local v24, "total_number":I
    const/16 v23, 0x1

    .line 645
    .local v23, "times":I
    const/16 v18, 0x64

    .line 646
    .local v18, "rate":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v11, v0, :cond_7

    .line 647
    const/4 v14, 0x0

    .line 649
    .local v14, "jsonData":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ""

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getFriendsList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 654
    if-nez v14, :cond_1

    const/16 v27, 0x0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v6

    .line 651
    .local v6, "e":Lcom/weibo/sdk/android/WeiboException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "sina: getAttentionList: getFriendsList error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 652
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 655
    .end local v6    # "e":Lcom/weibo/sdk/android/WeiboException;
    :cond_1
    const-string v27, "[{"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 656
    .local v20, "start":I
    const-string/jumbo v27, "}]"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v7, v27, 0x2

    .line 657
    .local v7, "end":I
    move/from16 v0, v20

    invoke-virtual {v14, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 658
    .restart local v13    # "json":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v13, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 659
    .local v5, "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 662
    add-int/lit8 v27, v7, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 663
    .local v22, "tail":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "{"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getNumberInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    move-result-object v12

    .line 665
    .local v12, "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    if-nez v24, :cond_2

    .line 666
    iget v0, v12, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->total_number:I

    move/from16 v24, v0

    .line 667
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "sina: getAttentionList: total_number = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 668
    div-int v28, v24, v18

    rem-int v27, v24, v18

    if-nez v27, :cond_3

    const/16 v27, 0x0

    :goto_2
    add-int v23, v28, v27

    .line 675
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 676
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    :goto_3
    iget v0, v12, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->next_cursor:I

    move/from16 v17, v0

    .line 646
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 668
    :cond_3
    const/16 v27, 0x1

    goto :goto_2

    .line 677
    :cond_4
    if-nez v11, :cond_5

    .line 678
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v28, v7, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 679
    :cond_5
    add-int/lit8 v27, v23, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_6

    .line 680
    add-int/lit8 v27, v20, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 682
    :cond_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v28, v20, 0x1

    add-int/lit8 v29, v7, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 686
    .end local v5    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    .end local v7    # "end":I
    .end local v12    # "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    .end local v13    # "json":Ljava/lang/String;
    .end local v14    # "jsonData":Ljava/lang/String;
    .end local v20    # "start":I
    .end local v22    # "tail":Ljava/lang/String;
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/util/LinkedList;->size()I

    move-result v27

    if-eqz v27, :cond_8

    .line 687
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 688
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 691
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->filePath:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string/jumbo v28, "sinaAttentionList"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Lcom/lenovo/scg/common/utils/file/FileUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v27, v26

    .line 694
    goto/16 :goto_0
.end method

.method public getPlatformDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const v1, 0x7f0f07d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformIconId()I
    .locals 1

    .prologue
    .line 724
    const v0, 0x7f020923

    return v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSinaAttentionList(Z)Ljava/util/List;
    .locals 26
    .param p1, "isRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 558
    .local v8, "gson":Lcom/google/gson/Gson;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v21, "users":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    new-instance v22, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$4;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    .line 560
    .local v13, "listType":Ljava/lang/reflect/Type;
    if-nez p1, :cond_0

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getSinaUsers()Ljava/util/List;

    move-result-object v21

    .line 562
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v22, v21

    .line 608
    :goto_0
    return-object v22

    .line 567
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 569
    .local v20, "uidStr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 570
    .local v14, "next_cursor":I
    const/16 v19, 0x0

    .line 571
    .local v19, "total_number":I
    const/16 v18, 0x1

    .line 572
    .local v18, "times":I
    const/16 v15, 0x64

    .line 573
    .local v15, "rate":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 574
    const/4 v12, 0x0

    .line 576
    .local v12, "jsonData":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getFriendsList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 581
    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getSinaUsers()Ljava/util/List;

    move-result-object v22

    goto :goto_0

    .line 577
    :catch_0
    move-exception v6

    .line 578
    .local v6, "e":Lcom/weibo/sdk/android/WeiboException;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "sina: getAttentionList: getFriendsList error: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getSinaUsers()Ljava/util/List;

    move-result-object v22

    goto/16 :goto_0

    .line 582
    .end local v6    # "e":Lcom/weibo/sdk/android/WeiboException;
    :cond_1
    const-string v22, "[{"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 583
    .local v16, "start":I
    const-string/jumbo v22, "}]"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v7, v22, 0x2

    .line 584
    .local v7, "end":I
    const/16 v22, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->getSinaUsers()Ljava/util/List;

    move-result-object v22

    goto/16 :goto_0

    .line 587
    :cond_2
    move/from16 v0, v16

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "json":Ljava/lang/String;
    invoke-virtual {v8, v11, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 589
    .local v5, "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 592
    add-int/lit8 v22, v7, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 593
    .local v17, "tail":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "{"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getNumberInfo(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;

    move-result-object v10

    .line 595
    .local v10, "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    if-nez v19, :cond_3

    .line 596
    iget v0, v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->total_number:I

    move/from16 v19, v0

    .line 597
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "sina: getAttentionList: total_number = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 598
    div-int v23, v19, v15

    rem-int v22, v19, v15

    if-nez v22, :cond_4

    const/16 v22, 0x0

    :goto_2
    add-int v18, v23, v22

    .line 603
    :cond_3
    iget v14, v10, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->next_cursor:I

    .line 573
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 598
    :cond_4
    const/16 v22, 0x1

    goto :goto_2

    .line 606
    .end local v5    # "c_users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/SinaUser;>;"
    .end local v7    # "end":I
    .end local v10    # "info":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
    .end local v11    # "json":Ljava/lang/String;
    .end local v12    # "jsonData":Ljava/lang/String;
    .end local v16    # "start":I
    .end local v17    # "tail":Ljava/lang/String;
    :cond_5
    const-string v22, "ShareCenter"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "users count="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mShareCenterDataBaseHelper:Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterDataBaseHelper;->insertSinaUsers(Ljava/util/List;)V

    move-object/from16 v22, v21

    .line 608
    goto/16 :goto_0
.end method

.method public getToken()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    .line 287
    return-void
.end method

.method public getUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, "s_uid":Ljava/lang/String;
    const-string/jumbo v4, "super_gallery_settings"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1147
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "weibo_uid"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1150
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-static {p1, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->getUserUid(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;

    move-result-object v1

    .line 1151
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;

    .line 1152
    .local v3, "uid":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;
    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sina: preferences have not saved the value, && getUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    .end local v3    # "uid":Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$WeiboUID;
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "weibo_uid"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1159
    :cond_0
    return-object v1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Lcom/weibo/sdk/android/WeiboException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sina: getUid error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserSelcetStatus()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public getmPicExifInterface()Landroid/media/ExifInterface;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mPicExifInterface:Landroid/media/ExifInterface;

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 3

    .prologue
    .line 736
    const-string v0, "ShareCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@@@@sina mCheckBox@@@@@@@@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public keepToken()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->keepAccessToken(Landroid/content/Context;Lcom/weibo/sdk/android/Oauth2AccessToken;)V

    .line 277
    return-void
.end method

.method public login()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "ShareCenter"

    const-string v1, "login1111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->showNetworkDialog(Landroid/content/Context;)V

    .line 190
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    sget-object v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 178
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->loginSinaWeibo()V

    goto :goto_0
.end method

.method public login(Lcom/lenovo/scg/camera/UserCenterManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/lenovo/scg/camera/UserCenterManager;

    .prologue
    .line 233
    const-string v0, "ShareCenter"

    const-string v1, "login2222"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->showNetworkDialog(Landroid/content/Context;)V

    .line 242
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->userCenterManager:Lcom/lenovo/scg/camera/UserCenterManager;

    .line 241
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->configureloginMethod()V

    goto :goto_0
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
    .line 701
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;>;"
    return-void
.end method

.method public saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v16, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 450
    .local v10, "picKind":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 451
    .local v6, "lTime":J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "sharecenter/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "pathRoot":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v8, "localShareDirectory":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 455
    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 458
    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "share_failed_file_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 459
    .local v11, "sDstFile":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v5, "fSrc":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v4, "fDst":Ljava/io/File;
    :try_start_0
    invoke-static {v5, v4}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v15, "values":Landroid/content/ContentValues;
    const/4 v2, 0x2

    .line 470
    .local v2, "action":I
    const-string v16, "content"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v16, "action"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    const-string/jumbo v16, "pic_url"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v16, "share_type"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v16, "draft_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 475
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 476
    const-string/jumbo v16, "pic_lat"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 479
    const-string/jumbo v16, "pic_long"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_3
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v14

    .line 483
    .local v14, "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    if-eqz v14, :cond_4

    .line 484
    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v12

    .line 485
    .local v12, "sName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 486
    const-string/jumbo v16, "nick"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .end local v12    # "sName":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    .line 491
    .local v13, "uri":Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/lenovo/scg/gallery3d/weibo/util/WeiboProvider$WbDraftTb;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 496
    :goto_1
    return-void

    .line 463
    .end local v2    # "action":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v14    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .end local v15    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 464
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 492
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "action":I
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v14    # "user":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .restart local v15    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v3

    .line 493
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v16, "saveDraft, Has exception when insert values to cache db,error: %s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public saveScreenName()V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public saveUserIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 707
    return-void
.end method

.method public setCheckbox(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "box"    # Landroid/widget/CheckBox;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    .line 755
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    if-ne v0, p1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 743
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->login()V

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 746
    :cond_1
    iput-boolean p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSelected:Z

    goto :goto_1
.end method

.method public setSendReport(ILcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "repot"    # Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    .prologue
    .line 1037
    iput p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mPosition:I

    .line 1038
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;

    .line 1039
    return-void
.end method

.method public setUserSelectStatus(Z)Z
    .locals 1
    .param p1, "select"    # Z

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public setmPicExifInterface(Landroid/media/ExifInterface;)V
    .locals 0
    .param p1, "mPicExifInterface"    # Landroid/media/ExifInterface;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mPicExifInterface:Landroid/media/ExifInterface;

    .line 152
    return-void
.end method

.method public share(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getApp_key()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)Ljava/lang/String;

    .line 359
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f014c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 349
    :catch_0
    move-exception v6

    .line 350
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    .line 353
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 356
    .local v6, "e":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getApp_key()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->upload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;Lcom/weibo/sdk/android/Oauth2AccessToken;)Ljava/lang/String;

    .line 309
    const-string/jumbo v0, "sina weibo upload : *****************"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/weibo/sdk/android/Weibo;->getApp_key()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/weibo/util/UrlContants;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 318
    :catch_0
    move-exception v8

    .line 319
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v8    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;

    const v2, 0x7f0f014c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 321
    :catch_1
    move-exception v8

    .line 322
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 325
    .local v8, "e":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v8}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send error msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/weibo/sdk/android/WeiboException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logE(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "lon"    # Ljava/lang/String;
    .param p4, "lat"    # Ljava/lang/String;

    .prologue
    .line 1233
    const-string v14, "ShareCenter"

    const-string v15, "*************Sina Share Begin*************"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1243
    .local v10, "starttime":J
    const-string v3, ".jpg"

    .line 1244
    .local v3, "fileKind":Ljava/lang/String;
    new-instance v2, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v2}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 1245
    .local v2, "bundle":Lcom/weibo/sdk/android/WeiboParameters;
    const-string/jumbo v14, "pic"

    move-object/from16 v0, p2

    invoke-virtual {v2, v14, v0}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string/jumbo v14, "status"

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v14, "access_token"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->accessToken:Lcom/weibo/sdk/android/Oauth2AccessToken;

    invoke-virtual {v15}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1250
    const-string v14, "lat"

    move-object/from16 v0, p4

    invoke-virtual {v2, v14, v0}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1253
    const-string v14, "long"

    move-object/from16 v0, p3

    invoke-virtual {v2, v14, v0}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mPicExifInterface:Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->assemblePicExInfo(Lcom/weibo/sdk/android/WeiboParameters;Landroid/media/ExifInterface;)V

    .line 1256
    const-string v12, "https://upload.api.weibo.com/2/statuses/upload.json"

    .line 1257
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;

    invoke-direct {v13}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;-><init>()V

    .line 1258
    .local v13, "weiboRunner":Lcom/weibo/sdk/android/net/AsyncWeiboRunner;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1259
    const-string v14, "."

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1265
    :cond_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSaveParam:Lcom/weibo/sdk/android/WeiboParameters;

    .line 1269
    sget-object v14, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 1270
    new-instance v9, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;

    const-string v14, "POST"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-direct {v9, v12, v2, v14, v15}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;-><init>(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 1271
    .local v9, "shareParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    monitor-enter p0

    .line 1272
    :try_start_0
    sget-object v14, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1274
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getIsHdShare()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1275
    const-string v14, "POST"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-static {v12, v2, v14, v15}, Lcom/lenovo/scg/gallery3d/weibo/util/AsyncWeiboRunners;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 1289
    :goto_0
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->isBGDataEnable()Z

    move-result v8

    .line 1290
    .local v8, "mIsBGDataEnable":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarSuppored()Z

    move-result v7

    .line 1291
    .local v7, "isAvatarSuppored":Z
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isAvatarShareReportSupported()Z

    move-result v6

    .line 1292
    .local v6, "isAvatarShareReportSuppored":Z
    const-string v14, "ShareCenter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "shareWeibo, mIsBGDataEnable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isAvatarSuppored="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isAvatarShareReportSuppored="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    if-eqz v7, :cond_3

    .line 1297
    if-nez v8, :cond_6

    .line 1299
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 1300
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V

    .line 1317
    :cond_3
    :goto_1
    const-string v14, "ShareCenter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "url   :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const-string v14, "ShareCenter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file path   :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1320
    .local v4, "endTime":J
    const-string v14, "ShareCenter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "time  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v4, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1273
    .end local v4    # "endTime":J
    .end local v6    # "isAvatarShareReportSuppored":Z
    .end local v7    # "isAvatarSuppored":Z
    .end local v8    # "mIsBGDataEnable":Z
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 1277
    :cond_4
    const-string v14, "POST"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-static {v12, v2, v14, v15}, Lcom/weibo/sdk/android/net/AsyncWeiboRunner;->request(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    goto/16 :goto_0

    .line 1281
    .end local v9    # "shareParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    :cond_5
    new-instance v9, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;

    const-string v14, "POST"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->requestListener:Lcom/weibo/sdk/android/net/RequestListener;

    invoke-direct {v9, v12, v2, v14, v15}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;-><init>(Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;Ljava/lang/String;Lcom/weibo/sdk/android/net/RequestListener;)V

    .line 1282
    .restart local v9    # "shareParameter":Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;
    monitor-enter p0

    .line 1283
    :try_start_2
    sget-object v14, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSPList:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 1303
    .restart local v6    # "isAvatarShareReportSuppored":Z
    .restart local v7    # "isAvatarSuppored":Z
    .restart local v8    # "mIsBGDataEnable":Z
    :cond_6
    if-eqz v6, :cond_3

    .line 1305
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->enableReport()V

    .line 1306
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->dispatch()V

    goto/16 :goto_1
.end method

.method public ssoAuthorizeCallBack(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 227
    const-string v0, "ShareCenter"

    const-string/jumbo v1, "ssoAuthorizeCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mSinaWeiboFacade:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;->ssoAuthorizeCallBack(IILandroid/content/Intent;)V

    .line 229
    return-void
.end method
