.class public Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;
.super Ljava/lang/Object;
.source "GallerySettingPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;
    }
.end annotation


# static fields
.field public static final ALREADY_SHOW_WELCOME_VIEWS:Ljava/lang/String; = "ALREADY_SHOW_WELCOME_VIEWS"

.field private static final KEY_DEFAULT_PAGE:Ljava/lang/String; = "defaultPage"

.field public static final KEY_FOLlOWERS_COUNT:Ljava/lang/String; = "followsCount"

.field public static final KEY_FRIENDS_COUNT:Ljava/lang/String; = "friendsCount"

.field private static final KEY_FRIST_CLOUD:Ljava/lang/String; = "is frist open cloud"

.field private static final KEY_HAS_LOGIN:Ljava/lang/String; = "hasLogin"

.field private static final KEY_LOCAL_IMAGE_MIN_SIZE:Ljava/lang/String; = "localImageMinSize"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_PHOTOVIEW_ORIETION:Ljava/lang/String; = "photoViewOrietion"

.field public static final KEY_PROFILE_IMAGE_URL:Ljava/lang/String; = "profileImageUrl"

.field public static final KEY_SCREEN_NAME:Ljava/lang/String; = "screenName"

.field public static final KEY_STATUSES_COUNT:Ljava/lang/String; = "statusesCount"

.field private static final KEY_USER_BACKGROUND_PATH:Ljava/lang/String; = "userbackgroundpath"

.field public static final KEY_USER_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_USER_UID:Ljava/lang/String; = "uid"

.field private static mGallerySettingPreferencesInstance:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;


# instance fields
.field private final DEFAULT_FRIST_CLOUD:Z

.field private final DEFAULT_HAS_LOGIN:Z

.field private final DEFAULT_LOCAL_IMAGE_MIN_SIZE:I

.field private final DEFAULT_PAGE:I

.field private final DEFAULT_PHOTOVIEW_ORIETION:Z

.field private mActivity:Landroid/app/Application;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private saveUserInfo:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mGallerySettingPreferencesInstance:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Application;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->DEFAULT_LOCAL_IMAGE_MIN_SIZE:I

    .line 31
    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->DEFAULT_PAGE:I

    .line 41
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->DEFAULT_PHOTOVIEW_ORIETION:Z

    .line 49
    iput-boolean v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->DEFAULT_FRIST_CLOUD:Z

    .line 51
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->DEFAULT_HAS_LOGIN:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 93
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mActivity:Landroid/app/Application;

    .line 97
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getGalleryLocalPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;
    .locals 2
    .param p0, "activity"    # Landroid/app/Application;

    .prologue
    .line 86
    const-class v1, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mGallerySettingPreferencesInstance:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mGallerySettingPreferencesInstance:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    .line 89
    :cond_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mGallerySettingPreferencesInstance:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initDefaultPage()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mActivity:Landroid/app/Application;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getDefaultPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDefaultPage(I)V

    .line 153
    return-void
.end method

.method private initLocalImageMinSizeSetting()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getLocalImageMinSize()I

    move-result v0

    .line 129
    .local v0, "minSize":I
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setMinSize(II)V

    .line 130
    return-void
.end method

.method private initSCGPath()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v2, "noMediaFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 117
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private storeDefaultPage(I)V
    .locals 2
    .param p1, "defaultPage"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "defaultPage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method private storeLocalImageMinSize(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "localImageMinSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method private storePhotoViewAutoRotated(Z)V
    .locals 2
    .param p1, "isRotated"    # Z

    .prologue
    .line 294
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "photoViewOrietion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    return-void
.end method


# virtual methods
.method public clearAlreadyShowWelcomeViewsFlag()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ALREADY_SHOW_WELCOME_VIEWS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public clearUserInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 252
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "screenName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v1, "location"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v1, "friendsCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v1, "followsCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string/jumbo v1, "statusesCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string/jumbo v1, "profileImageUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method public getDefaultPage()I
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "defaultPage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHasLogin()Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "hasLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLocalImageMinSize()I
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "localImageMinSize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPhotoViewAutoRotated()Z
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "photoViewOrietion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getUserBackgroundPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "userbackgroundpath"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()J
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "uid"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;-><init>()V

    .line 237
    .local v0, "userInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "screenName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setScreen_name(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "location"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setLocation(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "friendsCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setFriends_count(I)V

    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "followsCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setFollowers_count(I)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "statusesCount"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setStatuses_count(I)V

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "profileImageUrl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setAvatar_large(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "description"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setDescription(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->setId(J)V

    .line 247
    return-object v0
.end method

.method public initSettings()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->initSCGPath()V

    .line 107
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->initLocalImageMinSizeSetting()V

    .line 108
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->initDefaultPage()V

    .line 109
    return-void
.end method

.method public isAlreadyShowWelcomeViews()Z
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ALREADY_SHOW_WELCOME_VIEWS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFristCloud(Z)V
    .locals 2
    .param p1, "frist"    # Z

    .prologue
    .line 304
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is frist open cloud"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public isFristCloud()Z
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is frist open cloud"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLoginedUser(J)Z
    .locals 5
    .param p1, "uid"    # J

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "uid"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlreadyShowWelcomeViews(Z)V
    .locals 2
    .param p1, "isAlreadyShowWelcomeViews"    # Z

    .prologue
    .line 334
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ALREADY_SHOW_WELCOME_VIEWS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 337
    return-void
.end method

.method public setDefaultPage(I)V
    .locals 1
    .param p1, "defaultPage"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mActivity:Landroid/app/Application;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setDefaultPage(I)V

    .line 161
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeDefaultPage(I)V

    .line 162
    return-void
.end method

.method public setLocalImageMinSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 137
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->setMinSize(II)V

    .line 138
    invoke-static {}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->getInstance()Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/data/ImageFilterSettings;->update()V

    .line 139
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storeLocalImageMinSize(I)V

    .line 140
    return-void
.end method

.method public setPhotoViewAutoRotated(Z)V
    .locals 1
    .param p1, "isRotated"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mActivity:Landroid/app/Application;

    check-cast v0, Lcom/lenovo/scg/gallery3d/app/GalleryApp;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/app/GalleryApp;->setPhotoViewAutoScreenRotate(Z)V

    .line 290
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->storePhotoViewAutoRotated(Z)V

    .line 291
    return-void
.end method

.method public setUserBackgroundPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "userbackgroundpath"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    return-void
.end method

.method public storeHasLogin(Z)V
    .locals 2
    .param p1, "hasLogin"    # Z

    .prologue
    .line 174
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "hasLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    return-void
.end method

.method public storeUserId(Ljava/lang/String;)V
    .locals 6
    .param p1, "sUserId"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 228
    .local v2, "lUserId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 230
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public storeUserInfo(Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;)V
    .locals 6
    .param p1, "userInfo"    # Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    .prologue
    .line 184
    if-eqz p1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "screenName"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v2, "location"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v2, "friendsCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v2, "followsCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string/jumbo v2, "statusesCount"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getStatuses_count()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string/jumbo v2, "profileImageUrl"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    const-string v2, "description"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string/jumbo v2, "uid"

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;-><init>(Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->saveUserInfo:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;

    .line 198
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->saveUserInfo:Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences$SaveWeibo_UserInfo;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    .local v1, "saveuser":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 201
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "saveuser":Ljava/lang/Thread;
    :cond_0
    return-void
.end method
