.class public Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;
.super Ljava/lang/Object;
.source "CloudUtils.java"


# static fields
.field public static final ACTION_SELECT_FOLDER:Ljava/lang/String; = "cloud select folder to upload photo"

.field public static final KEY_GETMULTI_ID:Ljava/lang/String; = "get multi folder id"

.field public static final KEY_GETMULTI_NAME:Ljava/lang/String; = "get multi folder name"

.field public static final KEY_PHOTOS_PATH:Ljava/lang/String; = "photos-path"

.field public static final STAG:Ljava/lang/String; = "HWJ"

.field public static final S_CLOUD_BACK_SERVER_ERROR:I = 0x10

.field public static final S_CLOUD_CLICK_ID_KEY:Ljava/lang/String; = "cloud click album id"

.field public static final S_CLOUD_CLICK_NAME_KEY:Ljava/lang/String; = "cloud click album name"

.field public static final S_CLOUD_CLICK_PHOTO_KEY:Ljava/lang/String; = "cloud click photo id"

.field public static final S_CLOUD_CLICK_PHOTO_POS_KEY:Ljava/lang/String; = "cloud click photo position id"

.field public static final S_CLOUD_CLICK_SAME_KEY:Ljava/lang/String; = "cloud click same id"

.field public static final S_CLOUD_DEL_FINISHED:I = 0xd

.field public static final S_CLOUD_DOWNLOAD_FINISHED:I = 0x13

.field public static final S_CLOUD_EMPTY:I = 0x9

.field public static final S_CLOUD_GET_OUTSIDE_URL_FINISHED:I = 0xc

.field public static final S_CLOUD_ILLEGA_ARGUMENT:I = 0x7

.field public static final S_CLOUD_IO_ERROR:I = 0x8

.field public static final S_CLOUD_LCP_ERROR:I = 0xa

.field public static final S_CLOUD_LOADING_ERR:I = 0x11

.field public static final S_CLOUD_LOADING_FINISHED:I = 0x4

.field public static final S_CLOUD_MALFORM_ERROE:I = 0xb

.field public static final S_CLOUD_NETWORK_BUSY:I = 0x6

.field public static final S_CLOUD_NETWORK_NOT_CONNTECT:I = 0xf

.field public static final S_CLOUD_NOT_LOGIN_ERROR:I = 0x5

.field public static final S_CLOUD_NOT_NETWORK:I = 0x15

.field public static final S_CLOUD_PAGE_TYPE_KEY:Ljava/lang/String; = "cloud_page_type_id"

.field public static final S_CLOUD_PHOTO_UPLOAD_KEY:Ljava/lang/String; = "cloud click to upload photo"

.field public static final S_CLOUD_PICK_COUNT:I = 0x14

.field public static final S_CLOUD_PICK_LIMITS_KEY:Ljava/lang/String; = "limit"

.field public static final S_CLOUD_PICK_MULTI_CONTACTS:Ljava/lang/String; = "android.intent.action.contacts.list.PICKMULTIPHONEANDEMAILS"

.field public static final S_CLOUD_RENAME_FINISHED:I = 0xe

.field public static final S_CLOUD_SHARE_URL_KEY:Ljava/lang/String; = "Sms receicer shared url key"

.field public static final S_CLOUD_SHOW_SYNC_BAR:I = 0x14

.field public static final S_CLOUD_SMS_RECEIVER_KEY:Ljava/lang/String; = "Sms receicer key"

.field public static final S_CLOUD_UPLOAD_FINISHED:I = 0x12

.field public static final S_CLOUD_UPLOAD_PHOTO_KEY:Ljava/lang/String; = "cloud upload photo from local"

.field public static final S_ERROR_KEY:Ljava/lang/String; = "cloud_error"

.field public static final S_MAX_INPUT_LENGTH:I = 0x14

.field public static final S_NOTIFICATION_ID:I = 0x12

.field public static final S_REQUEST_CODE_PICK:I = 0x9999

.field public static final S_REQUEST_CODE_UPLOAD:I = 0x9998

.field public static final S_SYNC_FINISH_KEY:Ljava/lang/String; = "sync finish"

.field public static final S_USER_ID_KEY:Ljava/lang/String; = "user id"

.field public static final TAG:Ljava/lang/String; = "WYJ"

.field public static mIsFromShared:Z

.field public static mIsSameUserId:Z

.field public static mOutsideInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/po/OutsidePhotoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

.field public static mSCloudAlbumsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Album;",
            ">;"
        }
    .end annotation
.end field

.field public static mSCloudPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/storage/photo/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public static mSelectedPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/cloudalbum/data/CloudPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 123
    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mPhotoStorageApi:Lcom/lenovo/leos/cloud/lcp/storage/photo/PhotoStorage;

    .line 127
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsFromShared:Z

    .line 129
    sput-boolean v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mIsSameUserId:Z

    .line 131
    sput-object v1, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mOutsideInfoList:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudPhotoList:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSCloudAlbumsList:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->mSelectedPhotoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDataConnection(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 188
    .local v0, "telManager":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkMobileConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 154
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 156
    .local v1, "mobile":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const/4 v2, 0x1

    .line 159
    :cond_0
    return v2
.end method

.method public static checkMobileDataConnection(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 165
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 166
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 168
    .local v1, "mobile":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    const/4 v3, 0x1

    .line 171
    :cond_0
    return v3
.end method

.method public static checkNetworkConnection(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkWifiConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudUtils;->checkMobileDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkWifiConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 176
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 177
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 179
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initImageLoader(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    new-instance v1, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 149
    .local v0, "config":Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/lenovo/scg/gallery3d/cloudalbum/imageloader/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 150
    return-void
.end method
