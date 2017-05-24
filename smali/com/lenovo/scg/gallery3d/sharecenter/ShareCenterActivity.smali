.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
.super Landroid/app/Activity;
.source "ShareCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXIF_TAGS:[Ljava/lang/String;

.field public static final PLATFORM_SINA:I = 0x0

.field public static final PLATFORM_TENCENT:I = 0x1

.field private static final REQUESTCODE_ADD_AT:I = 0x6

.field private static final SHARECENTER_PREFERENCES:Ljava/lang/String; = "sharecenter"

.field private static final SHARECENTER_RECENTLY_RECORD_KEY:Ljava/lang/String; = "record"

.field private static final SHARECENTER_USERLOCATION_STATE:Ljava/lang/String; = "userlocationbtnstate"

.field public static final WEIBO_MAX_LENGTH:I = 0x8c


# instance fields
.field private bdLocationListener:Lcom/baidu/location/BDLocationListener;

.field private gifPicPath:Ljava/lang/String;

.field private mAtBtn:Landroid/widget/ImageButton;

.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContentCount:I

.field private mContext:Landroid/content/Context;

.field private mFriendCircleShareLayout:Landroid/widget/LinearLayout;

.field private mHandler:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

.field private mImageQualityPopWindow:Landroid/widget/PopupWindow;

.field private mImageUri:Landroid/net/Uri;

.field private mInputEditText:Landroid/widget/EditText;

.field private mLatitude:Ljava/lang/String;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mLontitude:Ljava/lang/String;

.field private mOrientation:I

.field private mOtherShareLayout:Landroid/widget/LinearLayout;

.field private mRecentlyInputStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentlyRecordBtn:Landroid/widget/ImageButton;

.field private mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mShareBtn:Landroid/widget/TextView;

.field private mShareCenterBackBtn:Landroid/widget/Button;

.field private mShareCenterBackLayout:Landroid/widget/ImageView;

.field private mShareImageQualityLayout:Landroid/widget/LinearLayout;

.field private mShareImageQualityTextView:Landroid/widget/TextView;

.field private mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowBitmap:Landroid/graphics/Bitmap;

.field private mSinaCheckBox:Landroid/widget/CheckBox;

.field private mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field private mSinaShareItemLayout:Landroid/widget/LinearLayout;

.field private mSmsShareLayout:Landroid/widget/LinearLayout;

.field private mTencentCheckBox:Landroid/widget/CheckBox;

.field private mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

.field private mTencentShareItemLayout:Landroid/widget/LinearLayout;

.field private mTextCountWatcher:Landroid/text/TextWatcher;

.field private mTextCounterText:Landroid/widget/TextView;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mToShareBitmap:Landroid/graphics/Bitmap;

.field private mTomatoShareLayout:Landroid/widget/LinearLayout;

.field private mTopicBtn:Landroid/widget/ImageButton;

.field private mUserLocationBtn:Landroid/widget/ImageButton;

.field private mUserLocationText:Landroid/widget/TextView;

.field private mWeixinShareLayout:Landroid/widget/LinearLayout;

.field private otherShareDialog:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

.field private picKind:Ljava/lang/String;

.field private pictureAbsolutePath:Ljava/lang/String;

.field private picturePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 551
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DateTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Flash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GPSAltitudeRef"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->EXIF_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->pictureAbsolutePath:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->gifPicPath:Ljava/lang/String;

    .line 91
    const-string v0, ".jpg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    .line 157
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mHandler:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLontitude:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLatitude:Ljava/lang/String;

    .line 182
    iput v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    .line 191
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$1;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCountWatcher:Landroid/text/TextWatcher;

    .line 237
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$2;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 596
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$7;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    .line 1234
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$12;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLontitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLatitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->saveInputStrings()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/ui/RemindDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->saveDraft()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;)Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->shareImage()V

    return-void
.end method

.method private anyShare()V
    .locals 4

    .prologue
    .line 1122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v1, "smsIntent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1125
    const-string v2, "com.lenovo.anyshare"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :goto_0
    return-void

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showAppNotinstalledMsg()V

    goto :goto_0
.end method

.method private clickTopicButton()V
    .locals 4

    .prologue
    .line 856
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "content":Ljava/lang/String;
    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    rsub-int v1, v1, 0x8c

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 864
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 861
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 863
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private static copyExif(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 14
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "newWidth"    # I
    .param p3, "newHeight"    # I

    .prologue
    .line 496
    :try_start_0
    new-instance v6, Landroid/media/ExifInterface;

    invoke-direct {v6, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 497
    .local v6, "oldExif":Landroid/media/ExifInterface;
    new-instance v5, Landroid/media/ExifInterface;

    invoke-direct {v5, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 499
    .local v5, "newExif":Landroid/media/ExifInterface;
    const-string v10, "ImageWidth"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v10, "ImageLength"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v10, "Orientation"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->EXIF_TAGS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v8, v1, v3

    .line 504
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 505
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 506
    invoke-virtual {v5, v8, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    const-string v10, "FNumber"

    invoke-virtual {v6, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 512
    .restart local v9    # "value":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 514
    :try_start_1
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 515
    .local v0, "aperture":F
    const-string v10, "FNumber"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/10"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 543
    .end local v0    # "aperture":F
    :cond_2
    :goto_1
    :try_start_2
    const-string v10, "ShareCenter"

    const-string v11, "*********save before********"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {v5}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 545
    const-string v10, "ShareCenter"

    const-string v11, "*********save after********"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "newExif":Landroid/media/ExifInterface;
    .end local v6    # "oldExif":Landroid/media/ExifInterface;
    .end local v9    # "value":Ljava/lang/String;
    :goto_2
    return-void

    .line 516
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "newExif":Landroid/media/ExifInterface;
    .restart local v6    # "oldExif":Landroid/media/ExifInterface;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v10, "ShareCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot parse aperture: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 546
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "newExif":Landroid/media/ExifInterface;
    .end local v6    # "oldExif":Landroid/media/ExifInterface;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 547
    .local v7, "t":Ljava/lang/Throwable;
    const-string v10, "ShareCenter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot copy exif: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private generateSharePicPath()V
    .locals 4

    .prologue
    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/lenovo/scg/common/utils/SCGUtils;->getSCGRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sharecenter/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "share"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "name":Ljava/lang/String;
    const-string v2, ".jpg"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".png"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->saveBitmapToFile(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    .line 850
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->gifPicPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 707
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 708
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 710
    .local v6, "_partID":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 711
    .local v13, "partID":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/part/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 712
    .local v14, "partURI":Landroid/net/Uri;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 713
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    .line 715
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 716
    const/16 v0, 0x100

    new-array v9, v0, [B

    .line 717
    .local v9, "buffer":[B
    invoke-virtual {v11, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .line 718
    .local v12, "len":I
    :goto_0
    if-ltz v12, :cond_0

    .line 719
    const/4 v0, 0x0

    invoke-virtual {v7, v9, v0, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 720
    invoke-virtual {v11, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    goto :goto_0

    .line 723
    :cond_0
    if-eqz v11, :cond_1

    .line 725
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 730
    .end local v6    # "_partID":I
    .end local v9    # "buffer":[B
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "len":I
    .end local v13    # "partID":Ljava/lang/String;
    .end local v14    # "partURI":Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->compressBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 731
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    invoke-static {v8, v0}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 732
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x8c

    if-ge v0, v1, :cond_2

    .line 733
    const/16 v0, 0x8c

    const/4 v1, 0x0

    invoke-static {v8, v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 735
    :cond_2
    return-object v8

    .line 722
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "_partID":I
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "partID":Ljava/lang/String;
    .restart local v14    # "partURI":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 723
    if-eqz v11, :cond_1

    .line 725
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 726
    :catch_1
    move-exception v0

    goto :goto_1

    .line 723
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 725
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 726
    :cond_3
    :goto_2
    throw v0

    .restart local v9    # "buffer":[B
    .restart local v12    # "len":I
    :catch_2
    move-exception v0

    goto :goto_1

    .end local v9    # "buffer":[B
    .end local v12    # "len":I
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method private getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "orientation"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 648
    invoke-static {p1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->readFileToBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 649
    .local v3, "imageBytes":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 650
    .local v4, "isBm":Ljava/io/ByteArrayInputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 651
    .local v5, "newOpts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 652
    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 653
    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 654
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 655
    .local v6, "w":I
    iget v2, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 656
    .local v2, "h":I
    const/high16 v7, 0x45000000    # 2048.0f

    .line 657
    .local v7, "ww":F
    const/4 v0, 0x1

    .line 658
    .local v0, "be":I
    div-int/lit8 v8, p2, 0x5a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-ne v8, v10, :cond_2

    .line 659
    int-to-float v8, v2

    cmpl-float v8, v8, v7

    if-lez v8, :cond_0

    .line 660
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v0, v8

    .line 667
    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 668
    :cond_1
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 669
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .end local v4    # "isBm":Ljava/io/ByteArrayInputStream;
    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 671
    .restart local v4    # "isBm":Ljava/io/ByteArrayInputStream;
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 674
    :goto_1
    return-object v8

    .line 663
    :cond_2
    if-le v6, v2, :cond_0

    int-to-float v8, v6

    cmpl-float v8, v8, v7

    if-lez v8, :cond_0

    .line 664
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v0, v8

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    div-int/lit8 v8, v0, 0x2

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 674
    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmapPath"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8c

    .line 628
    invoke-static {p1}, Lcom/lenovo/scg/common/utils/file/FileUtils;->readFileToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 629
    .local v1, "bitmapBuffer":[B
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->compressBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    invoke-static {v0, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 631
    if-nez v0, :cond_0

    .line 632
    const/4 v2, 0x0

    .line 637
    :goto_0
    return-object v2

    .line 634
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 635
    const/4 v2, 0x0

    invoke-static {v0, v3, v2}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    move-object v2, v0

    .line 637
    goto :goto_0
.end method

.method private getPicKind(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 641
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 642
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 643
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 644
    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v1
.end method

.method private getUserLocationBtnState()Z
    .locals 3

    .prologue
    .line 1272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1273
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "userlocationbtnstate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private initBackgroundService()V
    .locals 3

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "shareServiceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 278
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    return-void
.end method

.method private initData()V
    .locals 14

    .prologue
    const/16 v13, 0x800

    const/16 v12, 0x8c

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 421
    iput-object p0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    .line 422
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->setHdShare(Z)V

    .line 423
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .line 424
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    .line 425
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 426
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "image_uri"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    .line 427
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 429
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "orientation"

    aput-object v1, v2, v0

    .line 430
    .local v2, "filePathColumn":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 431
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 432
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 433
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 434
    .local v6, "columnIndex":I
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 435
    .local v10, "orientationIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    .line 437
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->pictureAbsolutePath:Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    .line 440
    const-string v0, ".gif"

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->gifPicPath:Ljava/lang/String;

    .line 444
    :cond_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    .line 446
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 451
    .end local v2    # "filePathColumn":[Ljava/lang/String;
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v10    # "orientationIndex":I
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getPicKind(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    const-string v0, ".jpg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    .line 461
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getBitmap(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 468
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showBadPictureDialog()V

    .line 492
    :cond_4
    :goto_2
    return-void

    .line 455
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 456
    const-string v0, ".gif"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 462
    :catch_0
    move-exception v8

    .line 463
    .local v8, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 464
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showBadPictureDialog()V

    goto :goto_2

    .line 458
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :try_start_3
    const-string v0, ".jpg"

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 471
    :cond_7
    iget v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    if-eqz v0, :cond_8

    .line 472
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOrientation:I

    invoke-static {v0, v1}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->roateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    .line 474
    :cond_8
    const-string v0, "ShareCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image size      "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    div-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, v13, :cond_9

    .line 476
    const-string v0, "ShareCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "           compress width to 2048"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v13, v11}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    .line 479
    :cond_9
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v12, :cond_a

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v12, v11}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    .line 486
    :cond_a
    :try_start_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->pictureAbsolutePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    new-instance v1, Landroid/media/ExifInterface;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->pictureAbsolutePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setmPicExifInterface(Landroid/media/ExifInterface;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 489
    :catch_1
    move-exception v8

    .line 490
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 448
    .end local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method private initLocation()V
    .locals 3

    .prologue
    .line 580
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 581
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 582
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 590
    .local v0, "option":Lcom/baidu/location/LocationClientOption;
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 591
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 592
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 593
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 594
    return-void
.end method

.method private initPopwindow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 283
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 284
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 285
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 287
    .local v2, "mDensity":F
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040178

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "contentView":Landroid/view/View;
    new-instance v5, Landroid/widget/PopupWindow;

    const/high16 v6, 0x43190000    # 153.0f

    mul-float/2addr v6, v2

    float-to-int v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    .line 290
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 292
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 293
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 294
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    const v6, 0x7f0a007d

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 295
    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->update()V

    .line 296
    const v5, 0x7f1008d0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    .local v3, "originImage":Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 298
    new-instance v5, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$3;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$3;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v5, 0x7f1008d1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 308
    .local v4, "smallImage":Landroid/widget/TextView;
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/widget/TextView;)V

    .line 309
    new-instance v5, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$4;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 321
    const v4, 0x7f1008b1

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSmsShareLayout:Landroid/widget/LinearLayout;

    .line 322
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSmsShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    const v4, 0x7f1008b2

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mFriendCircleShareLayout:Landroid/widget/LinearLayout;

    .line 324
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mFriendCircleShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v4, 0x7f1008b3

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTomatoShareLayout:Landroid/widget/LinearLayout;

    .line 326
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTomatoShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v4, 0x7f1008b5

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOtherShareLayout:Landroid/widget/LinearLayout;

    .line 328
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mOtherShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const v4, 0x7f1008b4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mWeixinShareLayout:Landroid/widget/LinearLayout;

    .line 330
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mWeixinShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    const-string/jumbo v4, "sharecenter"

    invoke-virtual {p0, v4, v7}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 332
    const v4, 0x7f1008ac

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyRecordBtn:Landroid/widget/ImageButton;

    .line 333
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyRecordBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v4, 0x7f1008a0

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareCenterBackBtn:Landroid/widget/Button;

    .line 335
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareCenterBackBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v4, 0x7f1008ae

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    .line 337
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v4, 0x7f1008ad

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    .line 339
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getUserLocationBtnState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 340
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getUserLocationBtnState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    const v5, 0x7f0f07cf

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    const v4, 0x7f10059e

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaShareItemLayout:Landroid/widget/LinearLayout;

    .line 349
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaShareItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v4, 0x7f1005a2

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentShareItemLayout:Landroid/widget/LinearLayout;

    .line 351
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentShareItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v4, 0x7f1008a2

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareBtn:Landroid/widget/TextView;

    .line 353
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v4, 0x7f1007ca

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareCenterBackLayout:Landroid/widget/ImageView;

    .line 355
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareCenterBackLayout:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v4, 0x7f1008aa

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mAtBtn:Landroid/widget/ImageButton;

    .line 357
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mAtBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v4, 0x7f1008ab

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTopicBtn:Landroid/widget/ImageButton;

    .line 359
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTopicBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v4, 0x7f1008a6

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 361
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 362
    const-string v4, ".gif"

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picKind:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    .line 375
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0xfa0

    if-le v4, v5, :cond_0

    .line 376
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5, v7}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    .line 378
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mThumbnailView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    :goto_2
    const v4, 0x7f1008a4

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    .line 386
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 387
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "is_from_draft"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 388
    .local v2, "isFromDraft":Z
    if-eqz v2, :cond_1

    .line 389
    const-string v4, "draft_content"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "sContent":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .end local v3    # "sContent":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCountWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    const v4, 0x7f1008a5

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;

    .line 397
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTextCounterText:Landroid/widget/TextView;

    const/16 v5, 0x8c

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const v4, 0x7f1005a1

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    .line 399
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 400
    const v4, 0x7f1005a5

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    .line 401
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isLogin()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 402
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 404
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setCheckbox(Landroid/widget/CheckBox;)V

    .line 405
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->setCheckbox(Landroid/widget/CheckBox;)V

    .line 406
    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mHandler:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    .line 407
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mHandler:Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;

    new-instance v5, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$5;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$5;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareResultHandler;->setRetryListener(Lcom/lenovo/scg/gallery3d/sharecenter/RetryListener;)V

    .line 415
    const v4, 0x7f1008a7

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityLayout:Landroid/widget/LinearLayout;

    .line 416
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v4, 0x7f1008a8

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityTextView:Landroid/widget/TextView;

    .line 418
    return-void

    .line 345
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isFromDraft":Z
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    const v5, 0x7f0f08dc

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 367
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 382
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showBadPictureDialog()V

    goto/16 :goto_2

    .line 370
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method private persistentRecentlyRecord()V
    .locals 6

    .prologue
    .line 898
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 899
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 901
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 902
    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    .line 903
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 905
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 908
    :cond_1
    const-string/jumbo v4, "record"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 910
    return-void
.end method

.method public static readFileToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 684
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 686
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 688
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "n":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 689
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 691
    .end local v0    # "b":[B
    .end local v1    # "n":I
    :catch_0
    move-exception v3

    .line 692
    if-eqz p0, :cond_0

    .line 694
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 698
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 692
    .restart local v0    # "b":[B
    .restart local v1    # "n":I
    :cond_1
    if-eqz p0, :cond_0

    .line 694
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 695
    :catch_1
    move-exception v3

    goto :goto_1

    .line 692
    .end local v0    # "b":[B
    .end local v1    # "n":I
    :catchall_0
    move-exception v3

    if-eqz p0, :cond_2

    .line 694
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 695
    :cond_2
    :goto_2
    throw v3

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method private readRecentlyRecord()V
    .locals 9

    .prologue
    .line 887
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "record"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, "record":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 889
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, "records":[Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 891
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 892
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "records":[Ljava/lang/String;
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveDraft()V
    .locals 6

    .prologue
    .line 1164
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1166
    const-string/jumbo v1, "\u7528#\u8054\u60f3\u8d85\u7ea7\u76f8\u673a\u4e0e\u76f8\u518c#\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

    .line 1168
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLatitude:Ljava/lang/String;

    .line 1169
    .local v2, "latitude":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLontitude:Ljava/lang/String;

    .line 1171
    .local v3, "lontitde":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    .line 1176
    :cond_1
    const/4 v0, 0x0

    .line 1177
    .local v0, "bSaved":Z
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1178
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v3, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x1

    .line 1191
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 1192
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v3, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :cond_3
    return-void

    .line 1168
    .end local v0    # "bSaved":Z
    .end local v2    # "latitude":Ljava/lang/String;
    .end local v3    # "lontitde":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_0

    .line 1169
    .restart local v2    # "latitude":Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto :goto_1

    .line 1181
    .restart local v0    # "bSaved":Z
    .restart local v3    # "lontitde":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1182
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v3, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const/4 v0, 0x1

    .line 1185
    :cond_7
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1186
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v3, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->saveDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private saveInputStrings()V
    .locals 11

    .prologue
    const v10, 0x7f0f07e4

    const/16 v9, 0x8c

    const/4 v8, 0x0

    .line 913
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "inputStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->getAtInfo()Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "mSinaAtNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->getAtInfo()Ljava/lang/String;

    move-result-object v3

    .line 918
    .local v3, "mTencentAtNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 919
    .local v4, "weiboWordsSina":I
    const/4 v5, 0x0

    .line 920
    .local v5, "weiboWordsTencent":I
    const/4 v0, 0x1

    .line 921
    .local v0, "canSendWeibo":Z
    if-eqz v1, :cond_1

    .line 922
    if-eqz v2, :cond_1

    .line 923
    iget v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v6, v7

    .line 924
    if-le v4, v9, :cond_0

    .line 925
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 926
    const/4 v0, 0x0

    .line 929
    :cond_0
    iget v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int v5, v6, v7

    .line 930
    if-le v5, v9, :cond_1

    .line 931
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 932
    const/4 v0, 0x0

    .line 937
    :cond_1
    if-eqz v0, :cond_2

    .line 938
    iget v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContentCount:I

    if-gt v6, v9, :cond_3

    .line 939
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->shareImage()V

    .line 941
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 942
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 951
    :cond_2
    :goto_0
    return-void

    .line 946
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private shareImage()V
    .locals 7

    .prologue
    const/16 v6, 0x640

    .line 788
    invoke-static {}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterUtil;->getIsHdShare()Z

    move-result v4

    if-nez v4, :cond_1

    .line 789
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 790
    .local v3, "width":I
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_5

    .line 791
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x44c80000    # 1600.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 795
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 796
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/lenovo/scg/common/utils/bitmap/BitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    .line 799
    .end local v3    # "width":I
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->generateSharePicPath()V

    .line 800
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    const-string/jumbo v0, "\u7528#\u8054\u60f3\u8d85\u7ea7\u76f8\u673a\u4e0e\u76f8\u518c#\u5206\u4eab\u4e86\u4e00\u5f20\u56fe\u7247"

    .line 804
    :cond_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLatitude:Ljava/lang/String;

    .line 805
    .local v1, "latitude":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLontitude:Ljava/lang/String;

    .line 806
    .local v2, "lontitde":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    if-eqz v4, :cond_4

    .line 807
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareServiceBinder:Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->picturePath:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareService$ShareServiceBinder;->shareImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isSelected()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 809
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0f07e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showToast(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->finish()V

    .line 813
    :cond_4
    return-void

    .line 792
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v2    # "lontitde":Ljava/lang/String;
    .restart local v3    # "width":I
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 793
    const/16 v3, 0x640

    goto :goto_0

    .line 804
    .end local v3    # "width":I
    .restart local v0    # "content":Ljava/lang/String;
    :cond_6
    const-string v1, ""

    goto :goto_1

    .line 805
    .restart local v1    # "latitude":Ljava/lang/String;
    :cond_7
    const-string v2, ""

    goto :goto_2
.end method

.method private showAppNotinstalledMsg()V
    .locals 2

    .prologue
    .line 1151
    const v0, 0x7f0f07ea

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1152
    return-void
.end method

.method private showBadPictureDialog()V
    .locals 4

    .prologue
    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0f07e0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 566
    const v2, 0x7f0f0a14

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$6;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$6;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 575
    .local v1, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 576
    invoke-static {v1}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/app/AlertDialog;)V

    .line 577
    return-void
.end method

.method private showExitDialog()V
    .locals 4

    .prologue
    .line 1198
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v0, "dialog":Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;
    const v1, 0x7f0f07e8

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->setMessage(I)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    move-result-object v1

    const v2, 0x7f0f0772

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$10;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    .line 1224
    const v1, 0x7f0f0773

    new-instance v2, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$11;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;

    .line 1231
    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/common/SCGAlertDialog;->show()V

    .line 1232
    return-void
.end method

.method private showRecentlyInputDialog()V
    .locals 5

    .prologue
    .line 867
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 868
    .local v1, "length":I
    if-nez v1, :cond_0

    .line 869
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0f07de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showToast(Ljava/lang/String;)V

    .line 884
    :goto_0
    return-void

    .line 872
    :cond_0
    new-array v2, v1, [Ljava/lang/String;

    .line 873
    .local v2, "recordItems":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 874
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRecentlyInputStrings:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 876
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f07da

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$8;

    invoke-direct {v4, p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$8;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "toastMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 816
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 817
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 818
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    return-void
.end method

.method private smsShare()V
    .locals 5

    .prologue
    .line 1134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1137
    const-string v3, "com.lenovo.ideafriend"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :goto_0
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1144
    :catch_1
    move-exception v1

    .line 1145
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showAppNotinstalledMsg()V

    goto :goto_0
.end method

.method private storeUserLocationBtnState(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 1265
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1266
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "userlocationbtnstate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1269
    return-void
.end method

.method private wxTimeline()V
    .locals 4

    .prologue
    .line 1110
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v1, "smsIntent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1113
    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    return-void

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showAppNotinstalledMsg()V

    goto :goto_0
.end method

.method private wxshare()V
    .locals 5

    .prologue
    .line 1097
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showAppNotinstalledMsg()V

    goto :goto_0
.end method


# virtual methods
.method public collapseSoftInputMethod()V
    .locals 3

    .prologue
    .line 1252
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1253
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1254
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult---------> requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterConstant;->logI(Ljava/lang/String;)V

    .line 825
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v1, p2, p3}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->onActivityResult(ILandroid/content/Intent;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const/4 v1, 0x6

    if-ne v1, p1, :cond_2

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_2

    .line 830
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    const-string/jumbo v2, "sina_at_info"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->setAtInfo(Ljava/lang/String;)V

    .line 831
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    const-string/jumbo v2, "tencent_at_info"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->setAtInfo(Ljava/lang/String;)V

    .line 832
    const-string v1, "at_number"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 833
    .local v0, "count":I
    const v1, 0x7f0f07e6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 834
    .end local v0    # "count":I
    :cond_2
    const v1, 0x80cd

    if-ne v1, p1, :cond_0

    if-ne v3, p2, :cond_0

    .line 835
    const-string/jumbo v1, "shareCenter"

    const-string v2, "SinaWeiboFacade.REQUST_CODE_SSO_CALLBACK = requestCode && RESULT_OK = resultCode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->ssoAuthorizeCallBack(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showExitDialog()V

    .line 1161
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0f07cf

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 955
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 957
    :sswitch_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 960
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 964
    :sswitch_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 965
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 972
    :sswitch_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_send_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 975
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/net/NetUtilitys;->isNetworkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 976
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0f07db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 979
    :cond_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/cloudalbum/utils/CloudSettingPreferences;->remindWifi()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/scg/camera/CameraConfig;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/CameraConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/CameraConfig;->isROW()Z

    move-result v2

    if-nez v2, :cond_4

    .line 980
    new-instance v2, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;->WIFI:Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;

    invoke-direct {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/RemindDialog$ActionType;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    .line 981
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mRemindDialog:Lcom/lenovo/scg/gallery3d/ui/RemindDialog;

    new-instance v3, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;

    invoke-direct {v3, p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity$9;-><init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;)V

    invoke-virtual {v2, v3, v6}, Lcom/lenovo/scg/gallery3d/ui/RemindDialog;->setClick(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 992
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->saveInputStrings()V

    goto :goto_0

    .line 997
    :sswitch_3
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mSinaPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mTencentPlatformManager:Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/TencentShareManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 998
    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/scg/gallery3d/sharecenter/AtActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 999
    .local v0, "i":Landroid/content/Intent;
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1001
    .end local v0    # "i":Landroid/content/Intent;
    :cond_6
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0f07df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    :sswitch_4
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->clickTopicButton()V

    goto/16 :goto_0

    .line 1008
    :sswitch_5
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showRecentlyInputDialog()V

    goto/16 :goto_0

    .line 1011
    :sswitch_6
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1012
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1013
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0f08dc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1015
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0f07e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showToast(Ljava/lang/String;)V

    .line 1024
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->storeUserLocationBtnState(Z)V

    goto/16 :goto_0

    .line 1017
    :cond_8
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1018
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1019
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v2, :cond_7

    .line 1021
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClient;->requestLocation()I

    goto :goto_1

    .line 1027
    :sswitch_7
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mUserLocationText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v2, :cond_0

    .line 1029
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClient;->requestLocation()I

    goto/16 :goto_0

    .line 1035
    :sswitch_8
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_return_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1039
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1040
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->showExitDialog()V

    goto/16 :goto_0

    .line 1042
    :cond_9
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->finish()V

    goto/16 :goto_0

    .line 1047
    :sswitch_9
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 1048
    .local v1, "location":[I
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1049
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageQualityPopWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShareImageQualityLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x64

    aget v5, v1, v7

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x3c

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 1053
    .end local v1    # "location":[I
    :sswitch_a
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_sms_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1056
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->smsShare()V

    goto/16 :goto_0

    .line 1060
    :sswitch_b
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_friends_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1063
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->wxTimeline()V

    goto/16 :goto_0

    .line 1067
    :sswitch_c
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_speed_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1070
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->anyShare()V

    goto/16 :goto_0

    .line 1074
    :sswitch_d
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_speed_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1081
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->wxshare()V

    goto/16 :goto_0

    .line 1085
    :sswitch_e
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "category_sharepage"

    const-string v4, "action_sharepage_click_others_btn"

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1088
    new-instance v2, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mImageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->otherShareDialog:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    .line 1089
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->otherShareDialog:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;->show()V

    .line 1090
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->otherShareDialog:Lcom/lenovo/scg/gallery3d/sharecenter/SystemShareDialog;

    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGCustomDialogTypeface(Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 955
    :sswitch_data_0
    .sparse-switch
        0x7f10059e -> :sswitch_0
        0x7f1005a2 -> :sswitch_1
        0x7f1007ca -> :sswitch_8
        0x7f1008a0 -> :sswitch_8
        0x7f1008a2 -> :sswitch_2
        0x7f1008a7 -> :sswitch_9
        0x7f1008aa -> :sswitch_3
        0x7f1008ab -> :sswitch_4
        0x7f1008ac -> :sswitch_5
        0x7f1008ad -> :sswitch_6
        0x7f1008ae -> :sswitch_7
        0x7f1008b1 -> :sswitch_a
        0x7f1008b2 -> :sswitch_b
        0x7f1008b3 -> :sswitch_c
        0x7f1008b4 -> :sswitch_d
        0x7f1008b5 -> :sswitch_e
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->requestWindowFeature(I)Z

    .line 261
    const v0, 0x7f040174

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->setContentView(I)V

    .line 262
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initData()V

    .line 263
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initBackgroundService()V

    .line 264
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initView()V

    .line 265
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initPopwindow()V

    .line 266
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->initLocation()V

    .line 267
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/lenovo/scg/common/utils/SCGUtils;->setSCGTypeface(Landroid/view/ViewGroup;)V

    .line 270
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_sharepage"

    const-string v2, "action_sharepage_oncreate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 755
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 758
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->bdLocationListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 764
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 765
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 767
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mToShareBitmap:Landroid/graphics/Bitmap;

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 771
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mShowBitmap:Landroid/graphics/Bitmap;

    .line 773
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 740
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 748
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->persistentRecentlyRecord()V

    .line 750
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->exitPictureQualityMode()V

    .line 751
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 777
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 781
    invoke-static {}, Lcom/lenovo/scg/common/utils/android/AndroidUtils;->enterPictureQualityMode()V

    .line 782
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->readRecentlyRecord()V

    .line 783
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 784
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 785
    return-void
.end method

.method public showSoftInputMethod()V
    .locals 3

    .prologue
    .line 1260
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1261
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareCenterActivity;->mInputEditText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1262
    return-void
.end method
