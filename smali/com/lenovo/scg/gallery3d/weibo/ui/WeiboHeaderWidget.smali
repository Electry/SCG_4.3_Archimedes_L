.class public Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "WeiboHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;,
        Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$FriendshipsEditAsyncTask;
    }
.end annotation


# static fields
.field private static final COUNT_1000WAN:I = 0x8

.field private static final COUNT_100WAN:I = 0x7

.field private static final COUNT_10WAN:I = 0x6

.field private static final COUNT_10YI:I = 0xa

.field private static final COUNT_1YI:I = 0x9

.field private static final COUNT_DISTANCE_WAN:I = 0x4

.field private static final COUNT_DISTANCE_YI:I = 0x7

.field private static final COUNT_END_1:I = 0x1

.field private static final COUNT_END_2:I = 0x2

.field private static final COUNT_END_3:I = 0x3

.field private static final COUNT_START:I = 0x0

.field private static final MSG_GET_RESULT_USERINFO:I = 0x4

.field private static final MSG_RESULT_OPENURL_ERROR:I = 0x3

.field private static final MSG_UPDATE_FRIENDSHIP:I = 0x2

.field private static final MSG_UPDATE_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeiboHeaderWidget"

.field private static final TYPE_FRINENDSHOP_CREATE:I = 0x0

.field private static final TYPE_FRINENDSHOP_DESTROY:I = 0x1


# instance fields
.field private isMe:Z

.field private mChangeBackgroundDialog:Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;

.field private mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

.field private mContext:Landroid/content/Context;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mFollowersView:Landroid/widget/TextView;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field private mFriendsView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerTxtView:Landroid/widget/TextView;

.field private mHandlerllIconView:Landroid/widget/ImageView;

.field private mHandlerllView:Landroid/widget/LinearLayout;

.field private mHeaderFrameLayout:Landroid/widget/RelativeLayout;

.field private mImageSetBackground:Landroid/widget/ImageView;

.field private mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

.field private mLanguage:Ljava/lang/String;

.field private mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

.field private mNameView:Landroid/widget/TextView;

.field private mPhoto:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoView:Landroid/widget/ImageView;

.field private mStatusesView:Landroid/widget/TextView;

.field private mType:I

.field private mUid:J

.field private mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "height"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "height"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "height"    # I
    .param p4, "defStyle"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 498
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$2;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandler:Landroid/os/Handler;

    .line 992
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    .line 123
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-DD HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFormat:Ljava/text/SimpleDateFormat;

    .line 125
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0401c4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    const v1, 0x7f100a00

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHeaderFrameLayout:Landroid/widget/RelativeLayout;

    .line 133
    const v1, 0x7f100adc

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mImageSetBackground:Landroid/widget/ImageView;

    .line 134
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mImageSetBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f1003e2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mNameView:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f10034b

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhotoView:Landroid/widget/ImageView;

    .line 140
    const v1, 0x7f100ae0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mStatusesView:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f100ae3

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFollowersView:Landroid/widget/TextView;

    .line 142
    const v1, 0x7f100ae6

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFriendsView:Landroid/widget/TextView;

    .line 144
    const v1, 0x7f100add

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mDescriptionView:Landroid/widget/TextView;

    .line 146
    const v1, 0x7f100ae8

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    .line 147
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    const v2, 0x7f100aea

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    invoke-direct {p0, v1, p3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->marginView(Landroid/view/View;I)V

    .line 150
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    const v2, 0x7f100ae9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->updateFriendship(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setAvatar()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # J
    .param p10, "x8"    # Ljava/lang/String;
    .param p11, "x9"    # I
    .param p12, "x10"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p12}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V

    return-void
.end method

.method private cancelDialog()V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundDialog:Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundDialog:Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;->dismiss()V

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundDialog:Lcom/lenovo/scg/gallery3d/weibo/ui/ChangeBackgroundDialog;

    .line 978
    :cond_0
    return-void
.end method

.method private configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extraKey1"    # Ljava/lang/String;
    .param p3, "extraValue1"    # J
    .param p5, "extraKey2"    # Ljava/lang/String;
    .param p6, "extraValue2"    # I
    .param p7, "extraKey3"    # Ljava/lang/String;
    .param p8, "extraValue3"    # J
    .param p10, "extraKey4"    # Ljava/lang/String;
    .param p11, "extraValue4"    # I
    .param p12, "questMode"    # Ljava/lang/String;

    .prologue
    .line 857
    const/4 v9, 0x0

    .line 859
    .local v9, "result":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/scg/gallery3d/weibo/util/AccessTokenKeeper;->readAccessToken(Landroid/content/Context;)Lcom/weibo/sdk/android/Oauth2AccessToken;

    move-result-object v3

    .line 861
    .local v3, "accessToken":Lcom/weibo/sdk/android/Oauth2AccessToken;
    invoke-virtual {v3}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 863
    .local v4, "accessTokenStr":Ljava/lang/String;
    new-instance v8, Lcom/weibo/sdk/android/WeiboParameters;

    invoke-direct {v8}, Lcom/weibo/sdk/android/WeiboParameters;-><init>()V

    .line 864
    .local v8, "params":Lcom/weibo/sdk/android/WeiboParameters;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 865
    const-string v10, "access_token"

    invoke-virtual {v8, v10, v4}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 868
    move-wide/from16 v0, p3

    invoke-virtual {v8, p2, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 870
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 871
    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v8, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 873
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 874
    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    invoke-virtual {v8, v0, v1, v2}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;J)V

    .line 876
    :cond_3
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 877
    move-object/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v8, v0, v1}, Lcom/weibo/sdk/android/WeiboParameters;->add(Ljava/lang/String;I)V

    .line 881
    :cond_4
    :try_start_0
    iget-object v10, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    move-object/from16 v0, p12

    invoke-static {v10, p1, v0, v8}, Lcom/lenovo/scg/gallery3d/weibo/net/Utilitys;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/weibo/sdk/android/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 896
    :goto_0
    return-object v9

    .line 883
    :catch_0
    move-exception v7

    .line 884
    .local v7, "ewb":Lcom/weibo/sdk/android/WeiboException;
    invoke-virtual {v7}, Lcom/weibo/sdk/android/WeiboException;->printStackTrace()V

    .line 885
    const-string v10, "WeiboHeaderWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configueOpenUrl, WeiboException="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    .end local v7    # "ewb":Lcom/weibo/sdk/android/WeiboException;
    :catch_1
    move-exception v6

    .line 888
    .local v6, "eun":Ljava/net/UnknownHostException;
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 889
    const-string v10, "WeiboHeaderWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configueOpenUrl, UnknownHostException="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    .end local v6    # "eun":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v5

    .line 892
    .local v5, "eio":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 893
    const-string v10, "WeiboHeaderWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configueOpenUrl, IOException="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertToCharacters(I)Ljava/lang/String;
    .locals 11
    .param p1, "count"    # I

    .prologue
    const v10, 0x7f0f0760

    const v9, 0x7f0f075d

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 252
    const/4 v1, 0x0

    .line 254
    .local v1, "display":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "countStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 256
    .local v2, "length":I
    const-string v3, "WeiboHeaderWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertToCharacters, countStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->currentLanguage()V

    .line 261
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mLanguage:Ljava/lang/String;

    const-string/jumbo v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "mLanguage is zh!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 264
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 10yi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v5, 0x7f0f075e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    :goto_0
    if-eqz v1, :cond_a

    .end local v1    # "display":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 269
    .restart local v1    # "display":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    .line 270
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 1yi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v5, 0x7f0f075e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 275
    :cond_2
    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    .line 276
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 1000wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_3
    const/4 v3, 0x7

    if-lt v2, v3, :cond_4

    .line 282
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 100wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_4
    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 288
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 10wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 294
    :cond_5
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mLanguage:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "mLanguage is en!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v3, 0xa

    if-lt v2, v3, :cond_6

    .line 297
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 10yi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0761

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 300
    :cond_6
    const/16 v3, 0x9

    if-lt v2, v3, :cond_7

    .line 301
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 1yi"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 304
    :cond_7
    const/16 v3, 0x8

    if-lt v2, v3, :cond_8

    .line 305
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 1000wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 308
    :cond_8
    const/4 v3, 0x7

    if-lt v2, v3, :cond_9

    .line 309
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 100wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 312
    :cond_9
    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 313
    const-string v3, "WeiboHeaderWidget"

    const-string v4, "convertToCharacters, is 10wan"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v5, 0x7f0f075f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    .line 319
    goto/16 :goto_1
.end method

.method private currentLanguage()V
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mLanguage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 244
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mLanguage:Ljava/lang/String;

    .line 246
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private enableHandlerClickListeners()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    return-void
.end method

.method private enablePhotoClickListeners()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 901
    return-void
.end method

.method private marginView(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    if-gtz p2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f09012f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f090131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, p2, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 171
    if-gtz p2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performGalleryClick()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;->onChangeBackgroundRequst(I)V

    .line 1011
    :cond_0
    return-void
.end method

.method private performHandlerClick()V
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;->onRequest(I)V

    .line 915
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;->onRequest(I)V

    .line 921
    :cond_0
    return-void
.end method

.method private performPhotographerClick()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;->onChangeBackgroundRequst(I)V

    .line 1017
    :cond_0
    return-void
.end method

.method private sendMassage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 494
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    return-void
.end method

.method private setAvatar()V
    .locals 5

    .prologue
    .line 552
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "category_weibo_sina_friendlist"

    const-string v2, "action_weibo_sina_friendlist_click_friendship_btn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 556
    return-void
.end method

.method private setFriendship(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 807
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;J)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$7;->start()V

    .line 851
    return-void
.end method

.method private setPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 779
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$6;->start()V

    .line 802
    return-void
.end method

.method private showDialog()V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->cancelDialog()V

    .line 988
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->performGalleryClick()V

    .line 990
    return-void
.end method

.method private updateFriendship(ZZ)V
    .locals 4
    .param p1, "isFollowing"    # Z
    .param p2, "isFollowedMe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 560
    const-string v0, "WeiboHeaderWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFriendship, following="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",followedMe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-eqz p1, :cond_1

    .line 571
    if-eqz p2, :cond_0

    .line 574
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0754

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    const v1, 0x7f0209e2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$3;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0751

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    const v1, 0x7f0209c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$4;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$4;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0753

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    const v1, 0x7f0209c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;

    invoke-direct {v1, p0, p2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$5;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public bindData(J)V
    .locals 7
    .param p1, "uid"    # J

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mUid:J

    .line 203
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 205
    .local v0, "application":Landroid/app/Application;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->isLoginedUser(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-nez v2, :cond_2

    .line 211
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 214
    :cond_2
    iget-boolean v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    if-nez v2, :cond_3

    .line 216
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;

    invoke-direct {v2, p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;)V

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$1;->start()V

    .line 239
    :goto_0
    return-void

    .line 225
    :cond_3
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserInfo()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v1

    .line 228
    .local v1, "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 229
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getScreen_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setUserDescription(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFollowers(I)V

    .line 233
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFriends(I)V

    .line 234
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getStatuses_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 236
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setUserInfo()V

    goto :goto_0
.end method

.method public bindData(Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;)V
    .locals 4
    .param p1, "item"    # Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 186
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setUserDescription(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFollowers()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFollowers(I)V

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFriends()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFriends(I)V

    .line 191
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 193
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setUserInfo()V

    .line 194
    return-void
.end method

.method public decreaStatusCount()V
    .locals 5

    .prologue
    .line 422
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 423
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "statusesCount"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 424
    .local v1, "nCountSave":I
    if-gtz v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 426
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 427
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 428
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "statusesCount"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v3, v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 432
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mStatusesView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->convertToCharacters(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getUserItem()Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    return-object v0
.end method

.method public loadAccount()V
    .locals 22

    .prologue
    .line 323
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount, uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mUid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isMe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getUserId()J

    move-result-wide v16

    .line 331
    .local v16, "lUserId":J
    const-string v3, "https://api.weibo.com/2/statuses/user_timeline.json"

    const-string/jumbo v4, "uid"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mUid:J

    :goto_0
    const-string v7, "count"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-string v12, "feature"

    const/4 v13, 0x2

    const-string v14, "GET"

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 338
    .local v19, "result":Ljava/lang/String;
    if-nez v19, :cond_1

    .line 339
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_1
    return-void

    .end local v19    # "result":Ljava/lang/String;
    :cond_0
    move-wide/from16 v5, v16

    .line 331
    goto :goto_0

    .line 343
    .restart local v19    # "result":Ljava/lang/String;
    :cond_1
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    .line 344
    .local v15, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    .line 346
    .local v18, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;
    if-nez v18, :cond_2

    .line 347
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 351
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-nez v2, :cond_3

    .line 352
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 363
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 364
    .local v20, "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    invoke-virtual/range {v20 .. v20}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v21

    .line 365
    .local v21, "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setUserDescription(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFollowers(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v21 .. v21}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFriends(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 373
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public loadAccountById(J)V
    .locals 21
    .param p1, "lUserId"    # J

    .prologue
    .line 378
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount, uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mUid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isMe="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, "https://api.weibo.com/2/statuses/user_timeline.json"

    const-string/jumbo v4, "uid"

    const-string v7, "count"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-string v12, "feature"

    const/4 v13, 0x2

    const-string v14, "GET"

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v14}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->configueOpenUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 387
    .local v17, "result":Ljava/lang/String;
    if-nez v17, :cond_1

    .line 388
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    new-instance v15, Lcom/google/gson/Gson;

    invoke-direct {v15}, Lcom/google/gson/Gson;-><init>()V

    .line 393
    .local v15, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;

    .line 395
    .local v16, "response":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;
    if-nez v16, :cond_2

    .line 396
    const-string v2, "WeiboHeaderWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAccount response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    if-nez v2, :cond_3

    .line 401
    new-instance v2, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    .line 403
    :cond_3
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 406
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->statuses:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;

    .line 407
    .local v18, "statusesInfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;->getUser()Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;

    move-result-object v19

    .line 408
    .local v19, "userinfo":Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrUserId(J)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrScreenName(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getAvatar_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setmStrHeadUri(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setUserDescription(Ljava/lang/String;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFollowers_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFollowers(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual/range {v19 .. v19}, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;->getFriends_count()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setFriends(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/WeiboObject;->total_number:I

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 416
    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->sendMassage(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 927
    :sswitch_0
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, photo view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 932
    :sswitch_1
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, handlerll view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->performHandlerClick()V

    goto :goto_0

    .line 937
    :sswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    if-eqz v0, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->showDialog()V

    .line 939
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, wbHeadFrame view, is me, show dialog!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;->onTouch()V

    goto :goto_0

    .line 941
    :cond_1
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, wbHeadFrame view, but is not me, not do anything!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 952
    :sswitch_3
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, mChangeBackgroundDialog dismiss!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->cancelDialog()V

    goto :goto_0

    .line 958
    :sswitch_4
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, wb_change_from_gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->cancelDialog()V

    .line 960
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->performGalleryClick()V

    goto :goto_0

    .line 965
    :sswitch_5
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "onClick, wb_change_from_photographer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->cancelDialog()V

    .line 967
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->performPhotographerClick()V

    goto :goto_0

    .line 925
    :sswitch_data_0
    .sparse-switch
        0x7f10034b -> :sswitch_0
        0x7f1009ea -> :sswitch_4
        0x7f1009ee -> :sswitch_5
        0x7f1009f2 -> :sswitch_3
        0x7f100adc -> :sswitch_2
        0x7f100ae8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setChangeBackgroundListener(Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mChangeBackgroundListener:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget$ChangeBackgroundListener;

    .line 1005
    return-void
.end method

.method public setCounts()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mStatusesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->convertToCharacters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFollowersView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFollowers()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->convertToCharacters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mFriendsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getFriends()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->convertToCharacters(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    return-void
.end method

.method public setEditorListener(Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    .prologue
    .line 908
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mListener:Lcom/lenovo/scg/gallery3d/weibo/ui/EditorListener;

    .line 909
    return-void
.end method

.method public setLabel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "iconResId"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 478
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 485
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 491
    :goto_1
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 449
    iput p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mType:I

    .line 451
    packed-switch p1, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 454
    :pswitch_0
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setLabel(Ljava/lang/String;I)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerllIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    const v1, 0x7f0f0757

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->enablePhotoClickListeners()V

    .line 466
    :pswitch_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mHandlerTxtView:Landroid/widget/TextView;

    const v1, 0x7f0f0755

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 467
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->enableHandlerClickListeners()V

    goto :goto_0

    .line 471
    :pswitch_4
    invoke-virtual {p0, v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setLabel(Ljava/lang/String;I)V

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setUserInfo()V
    .locals 6

    .prologue
    .line 755
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrScreenName()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mDescriptionView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v5}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getUserDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setCounts()V

    .line 763
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrHeadUri()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setPhoto(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->isMe:Z

    if-eqz v4, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getmStrUserId()J

    move-result-wide v2

    .line 772
    .local v2, "uid":J
    invoke-direct {p0, v2, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->setFriendship(J)V

    goto :goto_0
.end method

.method public setWbOnTouchListener(Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mWbTouchListener:Lcom/lenovo/scg/gallery3d/weibo/ui/DragBelowUpdateListView$OnWbTouchListener;

    .line 995
    return-void
.end method

.method public udpatePhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 540
    if-nez p1, :cond_0

    .line 541
    const-string v0, "WeiboHeaderWidget"

    const-string/jumbo v1, "udpatePhoto, bitmap=null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhotoView:Landroid/widget/ImageView;

    const v1, 0x7f0209cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhoto:Ljava/lang/ref/WeakReference;

    .line 547
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhotoView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mPhoto:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public updateStatusCountView()V
    .locals 4

    .prologue
    .line 437
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getInstance(Landroid/app/Application;)Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/app/GallerySettingPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 438
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "statusesCount"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, "nCountSave":I
    if-gez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->setStatus(I)V

    .line 441
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mStatusesView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->mItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getStatus()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboHeaderWidget;->convertToCharacters(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
