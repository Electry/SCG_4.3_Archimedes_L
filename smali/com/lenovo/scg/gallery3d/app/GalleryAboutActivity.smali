.class public Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;
.super Landroid/app/Activity;
.source "GalleryAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAYED_TIME:J = 0x2710L

.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field private static final DOWNLOAD_PATH_AVAILABLE_SIZE:J = 0x6400000L

.field private static final DOWNLOAD_PATH_RESERVED_SIZE:J = 0x0L

.field public static final IS_ANIM:Z = false

.field public static final SHOW_NEW_FEATURE:Ljava/lang/String; = "show_new_feature"

.field public static final SUS_QUERY_RESULTION:Ljava/lang/String; = "RES"

.field public static final SUS_QUERY_RESULTION_EXCEPTION:Ljava/lang/String; = "EXCEPTION"

.field public static final SUS_QUERY_RESULTION_LATESTVERSION:Ljava/lang/String; = "LATESTVERSION"

.field public static final SUS_QUERY_RESULTION_NOTFOUND:Ljava/lang/String; = "NOTFOUND"

.field public static final SUS_QUERY_RESULTION_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final SUS_QUERY_RESULTION_SUCCESS_CHANNELKEY:Ljava/lang/String; = "ChannelKey"

.field public static final SUS_QUERY_RESULTION_SUCCESS_DOWNLOADURL:Ljava/lang/String; = "DownloadURL"

.field public static final SUS_QUERY_RESULTION_SUCCESS_FILENAME:Ljava/lang/String; = "FileName"

.field public static final SUS_QUERY_RESULTION_SUCCESS_SIZE:Ljava/lang/String; = "Size"

.field public static final SUS_QUERY_RESULTION_SUCCESS_UPDATEDESC:Ljava/lang/String; = "UpdateDesc"

.field public static final SUS_QUERY_RESULTION_SUCCESS_VERCODE:Ljava/lang/String; = "VerCode"

.field public static final SUS_QUERY_RESULTION_SUCCESS_VERNAME:Ljava/lang/String; = "VerName"

.field private static final TAG:Ljava/lang/String; = "panhui4_GalleryAboutActivity"

.field public static UPDATING_VERSION:Z


# instance fields
.field private bigVersionTextView:Landroid/widget/TextView;

.field private mApkName:Ljava/lang/String;

.field private mAppNameView:Landroid/widget/TextView;

.field private mAppVersionView:Landroid/widget/TextView;

.field private mBackButton:Landroid/widget/ImageButton;

.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mChannelName:Ljava/lang/String;

.field private mContactLayout:Landroid/widget/LinearLayout;

.field private mCopyRightLayout:Landroid/widget/LinearLayout;

.field private mGEventListener:Landroid/hardware/SensorEventListener;

.field private mGSensor:Landroid/hardware/Sensor;

.field private mGSensorManager:Landroid/hardware/SensorManager;

.field private mImageView:Landroid/widget/ImageView;

.field private mNewFeature:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

.field private mTitleView:Landroid/widget/TextView;

.field private mUpdateScgUtils:Lcom/lenovo/scg/common/utils/SCGUtils;

.field private mVersionCheckBtn:Landroid/widget/Button;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;

.field private otherLisenseTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCode:I

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->updateVersionWidthSUS()V

    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v3, 0x7f100599

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 183
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->aboutPageIsForeign(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mNewFeature:Landroid/widget/TextView;

    .line 185
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isGalleryUserGuideSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mNewFeature:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    :cond_0
    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mNewFeature:Landroid/widget/TextView;

    .line 190
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mNewFeature:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_1
    const v2, 0x7f10059a

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->otherLisenseTextView:Landroid/widget/TextView;

    .line 194
    invoke-static {}, Lcom/lenovo/scg/common/utils/file/SharedPreferenceUtils;->getSCGPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPackageName:Ljava/lang/String;

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    .line 200
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCode:I

    .line 202
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPackageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 203
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 205
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "SUS_CHANNEL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChannelName:Ljava/lang/String;

    .line 206
    const-string/jumbo v2, "panhui4_GalleryAboutActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mChannelName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChannelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    const v2, 0x7f100597

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mAppVersionView:Landroid/widget/TextView;

    .line 213
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mAppVersionView:Landroid/widget/TextView;

    const v3, 0x7f0f07f9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v2, 0x7f10059d

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    .line 216
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-static {}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->getInstance()Lcom/lenovo/scg/gallery3d/app/GalleryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->isNetSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 223
    :goto_1
    const v2, 0x7f100592

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mTitleView:Landroid/widget/TextView;

    .line 224
    const v2, 0x7f100595

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mAppNameView:Landroid/widget/TextView;

    .line 225
    const v2, 0x7f100598

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mContactLayout:Landroid/widget/LinearLayout;

    .line 226
    const v2, 0x7f10059b

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mCopyRightLayout:Landroid/widget/LinearLayout;

    .line 227
    const v2, 0x7f100593

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    .line 229
    const v2, 0x7f100591

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 230
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v2, 0x7f100594

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mImageView:Landroid/widget/ImageView;

    .line 233
    const v2, 0x7f100596

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->bigVersionTextView:Landroid/widget/TextView;

    .line 236
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 237
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mAppNameView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 238
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_2
    new-instance v2, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 263
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 264
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->otherLisenseTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 220
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 239
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private showExplainDialog()V
    .locals 12

    .prologue
    .line 380
    new-instance v0, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    .line 381
    new-instance v4, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$4;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    .line 389
    .local v4, "cancelRunnable":Ljava/lang/Runnable;
    new-instance v6, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;

    invoke-direct {v6, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    .line 398
    .local v6, "okRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, 0x0

    const v2, 0x7f0f085c

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0f085d

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 401
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 402
    .local v8, "left":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v10, v0

    .line 403
    .local v10, "top":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v9, v0

    .line 404
    .local v9, "right":I
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 405
    .local v7, "bottom":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0, v8, v10, v9, v7}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->updateRotateDeleteDialogTextLayout(IIII)V

    .line 406
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v11, v0

    .line 407
    .local v11, "width":I
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v11, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->updateRotateDeleteDialogLayout(II)V

    .line 408
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->updateRotateDeleteDialogBg(I)V

    .line 409
    return-void
.end method

.method private updateVersionWidthSUS()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 413
    const/4 v1, 0x1

    .line 415
    .local v1, "isNewVersionToRemind":Z
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "NEW_VERSION_REMIND"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mUpdateScgUtils:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-virtual {v2, v1, v6, v6, v5}, Lcom/lenovo/scg/common/utils/SCGUtils;->updateVersionWithSUS(ZZZI)V

    .line 423
    sput-boolean v6, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    .line 426
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "updateVersionWithSUS error:%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    sput-boolean v5, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    .line 419
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mRotateDialog:Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/edit/RotateDeleteDialog;->dismissDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 314
    :sswitch_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->finish()V

    goto :goto_0

    .line 318
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_new_feature"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->finish()V

    goto :goto_0

    .line 327
    :sswitch_2
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    const-string/jumbo v1, "network is not avaliable, will not check scg version!"

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 329
    const v1, 0x7f0f0975

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 333
    :cond_1
    invoke-static {}, Lcom/lenovo/scg/common/utils/CommonConfig;->isCarrieroperatorDemanded()Z

    move-result v0

    .line 334
    .local v0, "mCarrieroperatorDemanderFlag":Z
    const-string v1, "jiaxw2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarrieroperatorDemanderFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz v0, :cond_2

    .line 337
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->isVersionUpdateStarted()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    if-nez v1, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->showExplainDialog()V

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/sus/SUS;->isVersionUpdateStarted()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->UPDATING_VERSION:Z

    if-nez v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->updateVersionWidthSUS()V

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100591 -> :sswitch_0
        0x7f100599 -> :sswitch_1
        0x7f10059d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->requestWindowFeature(I)Z

    .line 148
    invoke-static {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryConfig;->aboutPageIsForeign(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const v0, 0x7f0400e0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->setContentView(I)V

    .line 154
    :goto_0
    new-instance v0, Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/common/utils/SCGUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mUpdateScgUtils:Lcom/lenovo/scg/common/utils/SCGUtils;

    .line 156
    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mGSensorManager:Landroid/hardware/SensorManager;

    .line 157
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mGSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mGSensor:Landroid/hardware/Sensor;

    .line 158
    new-instance v0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mGEventListener:Landroid/hardware/SensorEventListener;

    .line 177
    invoke-static {p0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setContext(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->initView()V

    .line 179
    return-void

    .line 151
    :cond_0
    const v0, 0x7f0400df

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 308
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 301
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 279
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "mStrings":[Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->bigVersionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0869

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCode:I

    invoke-static {v3, v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->isNeedUpdateVersionName(Landroid/content/SharedPreferences;I)Z

    move-result v0

    .line 286
    .local v0, "isNeedUpdate":Z
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "VerName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "updateVersionName":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 288
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0868

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/GalleryAboutActivity;->mVersionCheckBtn:Landroid/widget/Button;

    const v4, 0x7f0f07fb

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
